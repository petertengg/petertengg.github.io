---
title: "Building my Personal Site with Jekyll and Minimal Mistakes"
date:   2025-07-16 06:00:00 +0200
published: true
toc: true
toc_sticky: true
categories:
  - Portfolio
  - Jekyll
tags:
  - "Web Development"
  - "Minimal Mistakes"
  - "Liquid"
  - "Jekyll"
  - "Ruby"
  - "Github Pages"
---

### Introduction

In this post I will sum up the journey of building my website. I will highlight some of the interesting design choices and learning points taken along the way. At the end, I will share my conclusions. It has been a learning curve for me since web development has never been my focus area to say the least, but it turned out to be much more fun and rewarding than I expected.

### Selecting the tech stack

After doing a little research on the topic, it was quite an obvious choice:

#### Why GitHub?
- You can host your personal site on GitHub Pages for free and set up your custom domain (more on that later).
- As a software engineer, GitHub is already an essential part of my work.

#### Why Jekyll?
- GitHub Pages comes with Jekyll integration, which makes Jekyll the obvious choice.
- <a href="https://jekyllrb.com/" target="_blank" rel="nofollow noopener noreferrer">Jekyll</a> is a static site generator which is "blog-aware" - well suited for portfolio pages and blogs. Exactly what I needed.

#### Why Ruby, <a href="https://shopify.github.io/liquid/" target="_blank" rel="nofollow noopener noreferrer">Liquid</a>, HTML, Markdown, JavaScript, CSS?
- These are the technologies Jekyll uses to build and customise the websites, so they would be hard to circumvent.

#### Why <a href="https://mademistakes.com/work/jekyll-themes/minimal-mistakes/" target="_blank" rel="nofollow noopener noreferrer">Minimal Mistakes</a>?
- There are several good Jekyll themes available, but I have chosen `Minimal Mistakes`, because it seemed to be flexible, customisable and feature rich. It is also minimalistic both in style and design-wise, which gives the user a lot of freedom. This freedom comes with some drawbacks though. For a non-technical person the wide range of customisation possibilities can be overwhelming, but I was up for the challenge, and luckily it comes with extensive documentation which helped a lot.

### Design

In this section I will tell you why I went for this page structure and what implications it had.

#### Why sub-blogs?

I have come up with this idea of sub-blogs, because I want to post in quite different topics for quite different audiences (e.g.: programming and cooking), so keeping them separated is a good idea. I could have created standalone sites for each, but that doesn't scale very well. If I suddenly decided that I wanted to post about yet another topic, I would have to set up another site. Also, I thought it would be a good idea to show my professional and personal sides in one place, so people, my future clients can get a better, more wholistic impression about me.

#### Complication with sub-blogs

It has caught me by surprise, that Jekyll doesn't support sub-blogs natively. There are collections, which are similar. You can define your collections like `Programming`, `Cooking`, `Portfolio` and `Updates`, but they don't get out-of-the box support for related posts and taxonomies (i.e.: categories and tags). There is one prominent collection called `Posts` which get all the love, but the rest (custom collections that you make) are left out. If I had gone for a classic single-topic blog, it would have worked beautifully, but I wanted to build my own structure, and I omit the `Posts` collection entirely. This is where things became interesting. I had to extend Jekyll's default implementation to add support for my sub-blogs. I will discuss this journey, the obstables I came across and the solutions for them in the following section.

### The implementation process

Since I wasn't familiar with the Jekyll framework, I explored its capabilities and limitations along the way. The road was a bit bumpy, but it wasn't too steep, and the process was quite enjoyable. In this section I will highlight the most interesting problems I faced and the solutions I came up with.

#### Getting started

1\. Since I had no prior knowledge, I starting following <a href="https://www.youtube.com/watch?v=fV01b0duZwU" target="_blank" rel="nofollow noopener noreferrer">this video tutorial</a> which proved very helpful. It walked me through all the necessary steps to get me going, even installing the prerequisites, like installing ruby and Powershell 7. It was easy to follow, and quite soon, I had a basic "Hello Jekyll" site hosted on GitHub Pages available on the internet. I didn't complete the tutorial however. I diverged when he installed the Hacker team. Even though, assuming from its name it would be a good fit for my site, I found it quite ugly, so I started looking for something else.

2\. Enter `Minimal Mistakes`. I chose this theme because of the reasons discussed in [Why Minimal Mistakes](#why-minimal-mistakes). I installed it as a remote theme in my `_config.yaml`: `remote_theme: "mmistakes/minimal-mistakes@4.27.2"`. Remote theme can be any Jekyll theme that is publicly hosted on GitHub. You only need to declare it in your config file, and the rest is taken care of by the <a href="https://github.com/benbalter/jekyll-remote-theme" target="_blank" rel="nofollow noopener noreferrer">jekyll-remote-theme</a> plugin. No need to clone the Git repo or install the Ruby Gem of the theme.

I also cloned the Minimal Mistakes repository, and studied their <a href="https://mmistakes.github.io/minimal-mistakes/" target="_blank" rel="nofollow noopener noreferrer">live site</a> which functions as documentation and demonstration at the same time. This way I could compare the code in the repo, and the output it produces. By doing so, I learned how Jekyll works. The layouts, pages, collections, includes and liquid templates.

#### Categories and tags (aka taxonomies)

3\. At this point I had figured out my site structure discussed in [Why sub-blogs?](#why-sub-blogs) and realised that Jekyll only supported tags and categories (taxonomies) for the build-in `Posts` collection, but not for the custom made ones. I wasn't happy about it, so this was the first major extension that I decided to make. I wanted the taxonomies work across all my collections (sub-blogs).

<div class="li-second-level" markdown="1">
<span class="li-second-level-indent">3.1.</span> First approach. I tried implementing it only using Liquid templates. I didn't succeed, because Liquid is quite limited. I wasn't able to build and manipulate associative containers, like hashes. If you know how to do it, I would be glad to hear it from you.
</div>

<div class="li-second-level" markdown="1">
<span class="li-second-level-indent">3.2.</span> So I had to look into implementing it in Ruby code. You can extend Jekyll's functionality via plugins written in Ruby. There are several types of plugins about which you can read about <a href="https://jekyllrb.com/docs/plugins/" target="_blank" rel="nofollow noopener noreferrer">here</a>. I needed a Generator plugin for my purpose because they can be used to generate contant based on my own rules. Here is the Ruby code of my `AllTaxonomiesGenerator` which generates the `site.all_tags` and `site.all_categories` collections:
</div>

<a id="all-taxonomies-plugin-code"></a>
```ruby
module AllTaxonomiesPlugin
  class AllTaxonomiesGenerator < Jekyll::Generator
    safe true
    priority :low

    def generate(site)
      all_tags = Hash.new { |hash, key| hash[key] = [] }
      all_categories = Hash.new { |hash, key| hash[key] = [] }

      # Iterate through all collections (not just posts)
      site.collections.each_value do |collection|
        collection.docs.each do |doc|
          if doc.data['tags']
            doc.data['tags'].each do |tag|
              all_tags[tag] << doc
            end
          end

          if doc.data['categories']
            Array(doc.data['categories']).each do |category|
              all_categories[category] << doc
            end
          end
        end
      end
      # Make available to Liquid templates
      site.data['all_tags'] = all_tags
      site.data['all_categories'] = all_categories
    end
  end
end
```

*Disclaimer: My experience with Ruby is very limited and I relied on AI to write this code*
{: style="text-align: center;"}

<div class="li-second-level" markdown="1">
Then, in order to use the `all_tags` and `all_categories` collections, I added two layout files: `all-tags.html` and `all-categories.html`
</div>

{% raw %}
```liquid
---
layout: archive
---

{{ content }}

{% include posts-taxonomy.html taxonomies=site.data.all_tags %}
```
{% endraw %}
{:.text-center}
*_layouts/all-tags.html*

{% raw %}
```liquid
---
layout: archive
---

{{ content }}

{% include posts-taxonomy.html taxonomies=site.data.all_categories %}
```
{% endraw %}
{:.text-center}
*_layouts/all-categories.html*


<div class="li-second-level" markdown="1">
As you can see, both of these include `posts-taxonomy.html`. That file comes from Minimal Mistakes, and is located in Minimal Mistakes' `_includes` folder (no need to copy it). This way, I have reused that file as-is, only passed my collections as arguments instead of the built-in `site.categories` and `site.tags` (which only contain taxonomies for the Post collection.)
</div>

4\. The next obstacle was that I just couldn't make my `AllTaxonomiesGenerator` run. I added all possible debug printing and logging, but it did nothing. My kind and helpful AI assistant tried everything, but after a couple of wasted hours, I realised, that we are running in circles. So I did a good ol' Google search, and the first hit was <a href="https://github.com/jekyll/jekyll/issues/325" target="_blank" rel="nofollow noopener noreferrer">this</a>. And it says: 
> mojombo on May 11, 2011
> 
> We can't run user plugins on GitHub Pages due to security restrictions. You are free to generate your site locally and push the resulting HTML to a Git repo, however.

Old post, but still stands. It would have taken me only 5 minutes to figure out if I started with Google instead of AI. (AI is great, by the way. Its help during this project was priceless, but one should not rely on it blindly.)

So I had two solutions to choose from: 
1. Build my site locally and push it to another Git branch to publish.
2. Use GitHub Actions.

I felt that `2.` is a bit too advanced for my use case. It is more powerful, flexible and customisable, but requires more setup, so I went down route `1.`.

```
- gem "github-pages", "~> 232", group: :jekyll_plugins
group :jekyll_plugins do
  gem "jekyll-feed", "~> 0.12"
  gem "jekyll-include-cache"
+ gem "minimal-mistakes-jekyll"
end
```
*Modifications to my `GemFile` (`-`: line removed, `+`: line added)*
{:.text-center}

```yaml
- remote_theme: "mmistakes/minimal-mistakes@4.27.1"
+ theme: "minimal-mistakes-jekyll"
```
*Modifications to my `_config.yaml`*
{:.text-center}

This way I removed `GitHub Pages` and `Minimal Mistakes` is no longer a remote theme, but installed as a gem. (Don't forget to run `bundle install` to apply those changes.) Now, if I run `bundle exec jekyll build` or `bundle exec jekyll serve`, Jekyll will also run my plugins during build. The compiled site will be placed under the `_site` folder.

#### Related posts - monkey patching (Ruby)

Another limitation of Jekyll's default behavior is that it only suggests related posts from the `Posts` collection which I don't even use. I had to overwrite that functionality to include all my collections. Here, I took a different approach from the [AllTaxonomiesPlugin](#all-taxonomies-plugin-code), because that one created new collections, that doesn't exist in Jekyll, but here I wanted to modify its existing behaviour. It uses `Classifier Reborn` to calculate similarities between posts based on content, not just categores and tags. I wanted to keep that, so I used Ruby's so called `monkey patching` technique which allows you to overwrite existing code with your own, without modifying Jekyll's internal code. (When I first read `monkey patching`, I thought it was a joke). The most iimportant to highlight in related_posts_patch.rb is

```ruby
module Jekyll
  class RelatedPosts
    ...
    def all_docs
      @all_docs ||= begin
        collections = %w(updates programming cooking portfolio)
        collections.flat_map { |c| site.collections[c]&.docs || [] }
      end
    end
  end
end
```

`all_docs` returns all documents across all my collections, and replaces the original `site.posts.docs` in the code. The rest of the logic is intact.

### Overriding, customising Jekyll themes

In the previous chapter, I have introduced `Jekyll plugins` and `monkey patching` as means of overriding Jekyll's default logic in Ruby code. These are powerful techniques, but also relatively advanced, best suited for users comfortable with code. However, these are not the only tools available. In this chapter I will show you through examples what else I have used. While Ruby coding modifies the behaviour of Jekyll itself, the following techniques allow you to tailor the Jekyll theme that you use (in my case, Minimal Mistakes)

#### Replacing files

The most direct way to override some part of a Jekyll theme is by replacing some of its files with your own ones. You do this by placing a file with the same name, under the same path as in the theme. Jekyll will use your file instead of the one defined in the theme. You do not need to change anything in the original theme. For example:

1\. `_includes/documents-collection.html`: The difference between the two files (remember, I did not edit Minimal Mistakes' file, I just overrode it with mine):
{% raw %}
```liquid
-  {% include archive-single.html type=include.type %}
+  {% include {{ include.included_archive_layout | default: "archive-single" }}.html type=include.type %}
```
{% endraw %}
I added an optional parameter `included_archive_layout` to the include file, because from `_layouts/updates.html` I want to use a modified version of `archive-single`: `archive-update`, which also shows the associated categories under each post. This is important, because in my updates layout I show posts from every collection on my site.

2\. `_includes/footer.html`: Modified the footer to 
- include a download link with my CV
- instead of opening the atom feed (of the Post collection) directly. It opens a page with separate feeds for all my collections

A potential issue with this technique is that if the original files in Minimal Mistakes get updated, you won't get those new updates automatically, which may or may not be a problem. You most likely won't even notice, if you don't check it for yourself after a Minimal Mistakes update. This is not the case with the next tachnique:

#### Including files and extending them

Here, you don't replace the original Minimal Mistakes (MM from now on — for Pete's sake, I’ve typed it enough times!) files, but extend them through inclusing. It works best for layout files, and if the original layout gets updated in a newer MM version, your page will get that update automatically (which can be an advantage or disadvantage as well). An example for this is `_layout/collection-extended.html` which reuses MM's collection layout, but adds a sub title. For example, the main title is `Bugs in the Soup` and the subtitle is `Programming`:
{% raw %}
```markdown
---
layout: collection
---

{{ page.subtitle }}
{{ content }}
```
{% endraw %}
Here, content will be replaced by the original content generated by MM's collection layout, while being preceded by the subtitle of the page.

#### _includes/head/custom.html

This is a special case of [Replacing files](#replacing-files), but it is a bit different. It deserves mentioning separately because this is by design. In the MM theme `_includes/head/custom.html` is an existing, empty file, containing only a couple of comments, and it is actually included in MM's `default.html`, which is the root file of the whole layout hierarchy. It includes `custom.html` both in the `<head>` part:
{% raw %}
```liquid
  <head>
    {% include head.html %}
    {% include head/custom.html %}
  </head>
```
{% endraw %}

This means it will be included in every page on your site, and it provides extensibility. I used it to include my `custom.css` file and my `favicon` which would otherwise not be available to Jekyll to render my site:
{% raw %}
```html
<link rel="stylesheet" href="{{ '/assets/css/custom.css' | relative_url }}">
<link rel="shortcut icon" type="image/x-icon" href="{{ site.baseurl }}/assets/images/favicon.ico">
```
{% endraw %}

Similarly, there is a corresponding `custom.html` file for the footer, which I didn't use, but the possibility is there, should you need it.

### Third party plugins

In this section, I will discuss third party plugins that I used to further enhance the functionality of my site.

#### jekyll-feed

Installed as a Ruby gem. It performs the generation of feeds based on your site content. It is <a href="https://pages.github.com/versions/" target="_blank" rel="nofollow noopener noreferrer">supported</a> by GitHub Pages (GHP), so you can use it even if you rely on GHP to build your site. After having struggled so much with the Posts vs. custom collections support by Jekyll ([taxonomies](#categories-and-tags-aka-taxonomies) and [related posts](#related-posts---monkey-patching-ruby)), it was a pleasent surprise that `jekyll-feed` is pretty configrable (<a href="https://github.com/jekyll/jekyll-feed#jekyll-feed-plugin" target="_blank" rel="nofollow noopener noreferrer">see more</a>) and is willing to recognise other collections as well besides the almighty `Posts`. All I had to do in my `_config.yaml` is:
```yaml
plugins:
  - jekyll-feed
...
feed:
  collections:
    - updates
    - programming
    - cooking
    - portfolio
```
The generated feeds are then output to the `_site/feed/{collection}.xml` files.

#### jekyll-seo-tag

The jekyll-seo-tag is also a low hanging fruit for a newly launched site. Installed as a Ruby gem, also supported by GHP. The configuration effort is minimal, and it adds the following meta tags to your site (<a href="https://github.com/jekyll/jekyll-seo-tag?tab=readme-ov-file#about-jekyll-seo-tag" target="_blank" rel="nofollow noopener noreferrer">see more</a>). All you need to do is

1\. Install it as a Ruby gem.

2\. Add it to your `_config.yaml`: 
```yaml
plugins:
...
  - jekyll-seo-tag
```
3\. Include it in the aforementioned [_includes/head/custom.html](#_includesheadcustomhtml)
{% raw %}
```html
<!-- start custom head snippets -->
...
{% seo %}
<!-- end custom head snippets -->
```
{% endraw %}

#### Disqus

Disqus is a comment provider which lets readers comment and discuss under posts. It is even more third party than the two Jekyll plugins above. They are part of the Jekyll ecosystem, while Disqus is a complete outlier, I could even call it fourth party. Why did I choose it then among all the <a href="https://mmistakes.github.io/minimal-mistakes/docs/configuration/#comments" target="_blank" rel="nofollow noopener noreferrer">supported comment providers</a> by MM? During my research, this is what I found:
1. `giscus` and `utterances` 
  - Pros: they leverage GitHub's infrastructure, which makes them seem like ideal candidates, however
  - Cons: they require a GitHub account for the reader to comment. Since my target audiance does not only consist of developers, but also traders and hobby cooks, they were out of the equasion.
2. `Facebook`: 
  - Pros: big, battle tested, most people have FB accounts. 
  - Cons: privacy concerns.
3. `Disqus`: 
  - Pros: big, battle tested, widely used, lets people comment without registration. 
  - Cons: privacy concerns, shows ads (unless paid subscription), not much possibility for styling (although you can choose between dark and light theme, which was perfectly enough for me)
4. `Staticman v2/v3`, `Discourse`: Although there are some key differences, I will cover them together. Both of these are really cool!
  - Pros: Self hosted, open source, no privacy concerns
  - Cons: quite advanced setup in both cases.

Since my site is not that big, and certainly won't be in the near future, I wanted to start with something easy to set up. This excluded `Staticman` and `Discourse`. With `giscus` and `utterances` also out of the equasion, I chose `Disqus` as the lesser evil from the two remaning giants. I won't go over the installation process of `Disqus` here. It was relatively straightforward. If you want me to write a post about it, feel free to leave a (Disqus) comment below. I will be happy to write it, and open a champagne for my first reader comment. :)

In the future, if my site were to see a serious discussion activity, I would definitely switch to `Staticman` or `Discourse`, but that's for a later story.

### Publishing
- orphan github branch
- publish script
- checklist

### After publish
1. namecheap, custom domain
4. Google Search Console
5. Google Analytics

### Conclusion
- Minimal Mistakes proved to be a good choice, even though I don't have much experience with others. Great experience, very well documented, lot of fun. Very happy with the outcome.
- Relatively easy learning curve
- gateway drug to web development
- Satisfying results, fun to work with

### Learning points

### Links
- <a href="https://github.com/petertengg/petertengg.github.io" target="_blank" rel="nofollow noopener noreferrer">GitHub repo</a>
- [Portfolio entry](/portfolio/my-personal-site)


### Sources
- <a href="https://jekyllrb.com/" target="_blank" rel="nofollow noopener noreferrer">Jekyll</a>
- <a href="https://shopify.github.io/liquid/" target="_blank" rel="nofollow noopener noreferrer">Liquid</a>
- <a href="https://mademistakes.com/work/jekyll-themes/minimal-mistakes/" target="_blank" rel="nofollow noopener noreferrer">Minimal Mistakes</a>
- <a href="https://mmistakes.github.io/minimal-mistakes/" target="_blank" rel="nofollow noopener noreferrer">Minimal Mistakes documentation and demo site</a>
- <a href="https://jekyllrb.com/docs/plugins/" target="_blank" rel="nofollow noopener noreferrer">Jekyll plugins</a>
- <a href="https://pages.github.com/versions/" target="_blank" rel="nofollow noopener noreferrer">GitHub Pages dependencies</a>
- <a href="https://github.com/jekyll/jekyll-feed" target="_blank" rel="nofollow noopener noreferrer">jekyll-feed plugin GitHub</a>
- <a href="https://github.com/jekyll/jekyll-seo-tag" target="_blank" rel="nofollow noopener noreferrer">jekyll-seo-tag plugin GitHub</a>

Publish checklist:
- test on desktop dev:
    - if any file name changed: broken links
    - click all new links
- test on mobile (chrome)
- publish
    - check mobile
    - ask others to check
    - publish on less important platforms
    - publish on more importent ones

ChatGPT:
    1. Why I Built My Site

    I wanted a central place to:

        Share my projects (portfolio)

        Blog about programming and personal hobbies

        Build a professional online presence as I transition into freelancing

    I chose Jekyll + GitHub Pages because it's free, version-controlled, and integrates well with my workflow as a developer.

2. What I Used and Learned

    Tools & stack:

        Jekyll with the Minimal Mistakes theme

        GitHub Pages for hosting

        Custom domain from Namecheap

        Ruby, Liquid, Markdown, YAML config

    Key lessons:

        Managing multiple blog sections (like cooking + programming)

        Setting up SEO basics, favicons, and responsive images

        Enabling Disqus comments and working with GitHub’s custom domain setup

3. What’s Next

    I’ll keep improving the site, but my main focus now shifts to:

        Building and documenting trading systems and backtesting tools

        Sharing performance insights from my C++ and Python work

    Stay tuned on petertengg.com — I’ll mix code, cooking, and a few experiments.

    - Google Search Console
    - Google Analytics
    - HTML proofer
        - libcurl problem: https://stackoverflow.com/questions/39377541/how-to-solve-libcurl-not-found-with-rails-on-windows