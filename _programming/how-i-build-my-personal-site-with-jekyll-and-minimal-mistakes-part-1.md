---
title: "How I Built My Personal Site with Jekyll and Minimal Mistakes - Part 1: Setup and Design Decisions"
date:   2025-07-16 06:00:00 +0200
published: true
toc: true
toc_label: "Table of Contents"
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

## Introduction

This is Part 1 in a three-post series, where I sum up the journey of building my website. In this part, I will discuss why I chose this tech stack, the structural design choices I made, and we will face our first challenge early in the implementation process.

## Selecting the tech stack

After doing a little research on the topic, it was quite an obvious choice:

### Why GitHub?
- You can host your personal site on GitHub Pages for free and use your custom domain.
- As a software engineer, hosting it on GitHub felt like a natural fit.

### Why Jekyll?
- GitHub Pages comes with Jekyll integration, which makes Jekyll the obvious choice.
- <a href="https://jekyllrb.com/" target="_blank" rel="nofollow noopener noreferrer">Jekyll</a> is a static site generator which is "blog-aware" - well suited for portfolio pages and blogs. Exactly what I needed.

### Why Ruby, <a href="https://shopify.github.io/liquid/" target="_blank" rel="nofollow noopener noreferrer">Liquid</a>, HTML, Markdown, JavaScript, CSS?
These are the technologies Jekyll uses to build and customise the websites, so they would be hard to avoid. :)

### Why <a href="https://mademistakes.com/work/jekyll-themes/minimal-mistakes/" target="_blank" rel="nofollow noopener noreferrer">Minimal Mistakes</a>?
There are several good Jekyll themes out there, but I chose `Minimal Mistakes`, because it seemed to be flexible, customisable and feature-rich. It is also minimalistic in both style and design, which gives you a lot of freedom. This freedom comes with some drawbacks however. For a non-technical person the wide range of customisation possibilities can be overwhelming, but I was up for the challenge, and luckily it comes with extensive documentation which helped a lot.

## Design

In this section I will tell you why I went for this page structure and what implications it had.

### Why sub-blogs?

I have come up with this idea of sub-blogs, because I want to post in quite different topics for quite different audiences (e.g.: programming and cooking), so keeping them separated is a good idea. I could have created standalone sites for each, but that wouldn't scale very well. If I suddenly decided to post about [egg shoeing](https://en.wikipedia.org/wiki/Egg_shoeing), which is a completely different topic, I would have to set up another site. Also, I thought it would be a good idea to show my professional and personal interests in one place, so people - my future clients - can get a better, more holistic impression about me.

### Complication with sub-blogs

It caught me by surprise, that Jekyll doesn't support sub-blogs natively. There are `collections`, which are similar. You can define your collections like `Programming`, `Cooking`, `Portfolio` and `Updates`, but they don't get out-of-the box support for related posts and taxonomies (i.e.: categories and tags). There is one prominent collection called `Posts` which get all the love, but the rest (custom collections that you make) are left out. If I had gone for a classic single-topic blog, it would have worked beautifully, but I wanted to build my own structure, and I omitted the `Posts` collection entirely. This is where things got interesting. I had to extend Jekyll's default implementation to add support for my sub-blogs. I will discuss this journey, the obstacles faced and the solutions I came up with.

## The implementation process

Since I wasn't familiar with the Jekyll framework, I explored its capabilities and limitations along the way. The road was a bit bumpy, but it wasn't too steep, and the process was quite enjoyable.

### Getting started

1\. Since I had no prior knowledge, I started following <a href="https://www.youtube.com/watch?v=fV01b0duZwU" target="_blank" rel="nofollow noopener noreferrer">this video tutorial</a> which proved to be very helpful. It walked me through all the necessary steps to get me going, even installing the prerequisites, like Ruby and Powershell 7. It was easy to follow, and quite soon, I had a basic "Hello Jekyll" site publicly available on the internet. I didn't complete the tutorial however. I diverged when he installed the `Hacker` theme. Even though its name suggests it would be a good fit for a software engineer’s personal site, I found it quite ugly — so I started looking for alternatives.

2\. Enter `Minimal Mistakes`. I chose this theme because of the reasons discussed in [Why Minimal Mistakes](#why-minimal-mistakes). I installed it as a remote theme in my `_config.yaml`:
```yaml
remote_theme: "mmistakes/minimal-mistakes@4.27.2"
``` 
A remote theme can be any Jekyll theme that is publicly hosted on GitHub. You only need to declare it in your config file, and the rest is taken care of by the <a href="https://github.com/benbalter/jekyll-remote-theme" target="_blank" rel="nofollow noopener noreferrer">jekyll-remote-theme</a> plugin. No need to clone the Git repo or install the Ruby Gem of the theme.

I also cloned the Minimal Mistakes repository, and studied their <a href="https://mmistakes.github.io/minimal-mistakes/" target="_blank" rel="nofollow noopener noreferrer">live site</a> which functions as documentation and demonstration at the same time. This way I could compare the code in the repo, and the output it produces. By doing so, I learned how Jekyll works. `Layouts`, `pages`, `collections`, `includes` and `Liquid templates`.

### Categories and tags (aka taxonomies)

3\. At this point I had figured out my site structure discussed in [Why sub-blogs?](#why-sub-blogs) and realised that Jekyll only supported tags and categories (taxonomies) for the built-in `Posts` collection, but not for the custom made ones. I wasn't happy about it, so this was the first major extension that I decided to make. I wanted the taxonomies work across all my collections (sub-blogs).

{% include indent.html level="second" content="3.1. First approach. I tried implementing it using only Liquid templates. I didn't succeed, because Liquid is quite limited. I wasn't able to build and manipulate associative containers, like hashes. If you know how to achieve this purely in Liquid, I’d love to hear from you." %}

<!-- This one is too complicated to escape properly, breaks syntax highlight in this file, so I'll just leave it -->
<div class="li-second-level" markdown="1">
3.2. So I had to look into implementing it in Ruby code. You can extend Jekyll's functionality via plugins written in Ruby. There are several types of plugins about which you can read <a href="https://jekyllrb.com/docs/plugins/" target="_blank" rel="nofollow noopener noreferrer">here</a>. I needed a Generator plugin because they can be used to generate content based on my own rules. Here is the Ruby code of my `AllTaxonomiesGenerator` which generates the `site.all_tags` and `site.all_categories` collections:
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

{% include indent.html level="second" content="Then, in order to use the `all_tags` and `all_categories` collections, I added two layout files: `all-tags.html` and `all-categories.html`" %}

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

{% include indent.html level="second" content="" %}
{% include indent.html level="second" content="As you can see, both of these include `posts-taxonomy.html` which comes from Minimal Mistakes, and is located in Minimal Mistakes' `_includes` folder (no need to copy it). This way, I have reused that file as-is, only passed my collections as arguments instead of the built-in `site.categories` and `site.tags` (which only contain taxonomies for the Posts collection.)" %}

4\. The next obstacle was that I just couldn't make my `AllTaxonomiesGenerator` run. I added all possible debug printing and logging, but it did nothing. My kind and helpful AI assistant tried everything, but after a couple of wasted hours, I realised we were just going in circles. So I did a good ol' Google search, and the first hit was <a href="https://github.com/jekyll/jekyll/issues/325" target="_blank" rel="nofollow noopener noreferrer">this GitHub issue</a>. And it says: 
<a id="quote-gh-pages"></a>
> mojombo on May 11, 2011
> 
> We can't run user plugins on GitHub Pages due to security restrictions. You are free to generate your site locally and push the resulting HTML to a Git repo, however.

Old post, but still stands. It would have taken me only 5 minutes to figure this out if I started with Google instead of AI. (Don't get me wrong, AI is great. It has been an immense help during this project, but one should not rely on it blindly.)

So I had two options to choose from: 
1. Build my site locally and push it to another Git branch to publish.
2. Use GitHub Actions.

I felt that `2.` is a bit too advanced for my use case. It is more powerful, flexible and customisable, but for my case `1.` is perfectly adequate.

So I did the following modifications to my `GemFile` (`-`: line removed, `+`: line added)

```
- gem "github-pages", "~> 232", group: :jekyll_plugins
group :jekyll_plugins do
  gem "jekyll-feed", "~> 0.12"
  gem "jekyll-include-cache"
+ gem "minimal-mistakes-jekyll"
end
```
And my `_config.yaml`:

```yaml
- remote_theme: "mmistakes/minimal-mistakes@4.27.1"
+ theme: "minimal-mistakes-jekyll"
```

This way I removed `GitHub Pages` and `Minimal Mistakes` is no longer a remote theme, but installed as a gem. (Don't forget to run `bundle install` to apply those changes.) Now, if I run `bundle exec jekyll build` or `bundle exec jekyll serve`, Jekyll will also run my plugins during build. The compiled site will be placed under the `_site` folder.

## Outroduction

That concludes Part 1. of the series. In the [next](/programming/how-i-build-my-personal-site-with-jekyll-and-minimal-mistakes-part-2) post we will continue with the implementation process. I will show how the amusingly named `monkey patching` helped me overcome another technical challenge, and we’ll explore how to customise a Jekyll theme to your liking.

## Links
- [How I Built my Personal Site with Jekyll and Minimal Mistakes - Part 2](/programming/how-i-build-my-personal-site-with-jekyll-and-minimal-mistakes-part-2)
- [How I Built my Personal Site with Jekyll and Minimal Mistakes - Part 3](/programming/how-i-build-my-personal-site-with-jekyll-and-minimal-mistakes-part-3)
- [Related portfolio entry](/portfolio/my-personal-site)
- <a href="https://github.com/petertengg/petertengg.github.io" target="_blank" rel="nofollow noopener noreferrer">GitHub repo</a>

## Sources
- <a href="https://jekyllrb.com/" target="_blank" rel="nofollow noopener noreferrer">Jekyll</a>
- <a href="https://shopify.github.io/liquid/" target="_blank" rel="nofollow noopener noreferrer">Liquid</a>
- <a href="https://mademistakes.com/work/jekyll-themes/minimal-mistakes/" target="_blank" rel="nofollow noopener noreferrer">Minimal Mistakes</a>
- <a href="https://mmistakes.github.io/minimal-mistakes/" target="_blank" rel="nofollow noopener noreferrer">Minimal Mistakes documentation and demo site</a>
- <a href="https://jekyllrb.com/docs/plugins/" target="_blank" rel="nofollow noopener noreferrer">Jekyll plugins</a>