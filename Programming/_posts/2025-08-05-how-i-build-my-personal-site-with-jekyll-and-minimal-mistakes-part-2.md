---
title: "How I Built My Personal Site with Jekyll and Minimal Mistakes - Part 2: Custom Implementation and Plugins"
date:   2025-08-05 07:20:00 +0200
published: true
excerpt: In this part, I continue with the implementation process. I will show how the amusingly named `monkey patching` helped me overcome another technical challenge, and we’ll explore how to customise a Jekyll theme to your liking.
toc: true
toc_label: "Table of Contents"
toc_sticky: true
categories:
  - Jekyll
tags:
  - "Web Development"
  - "Minimal Mistakes"
  - "Liquid"
  - "Jekyll"
  - "Ruby"
  - "Monkey Patching"
  - "Github Pages"
---

## Introduction

This is Part 2 in a three-post series, where I sum up the journey of building my website. If you haven't, make sure to read [Part 1: Setup and Design Decisions](/programming/2025-07-29-how-i-build-my-personal-site-with-jekyll-and-minimal-mistakes-part-1). In this part, I continue with the implementation process. I will show how the amusingly named `monkey patching` helped me overcome another technical challenge, and we’ll explore how to customise a Jekyll theme to your liking.

## The implementation process ([continues Part 1](/programming/2025-07-29-how-i-build-my-personal-site-with-jekyll-and-minimal-mistakes-part-1#the-implementation-process))

Since I wasn't familiar with the Jekyll framework, I explored its capabilities and limitations along the way. The road was a bit bumpy, but it wasn't too steep, and the process was quite enjoyable.

### Related posts - monkey patching (Ruby)

Another limitation of Jekyll's default behaviour is that it only suggests related posts from the `Posts` collection which I don't even use. I had to override it to include all my collections. Here, I took a different approach from the [AllTaxonomiesPlugin](/programming/2025-07-29-how-i-build-my-personal-site-with-jekyll-and-minimal-mistakes-part-1#all-taxonomies-plugin-code), because that one creates new collections that don't exist in Jekyll, but here I wanted to modify Jekyll's existing behaviour. It uses `Classifier Reborn` to calculate similarities between posts based on content, not just categories and tags. I wanted to keep that, so I used Ruby's so called `monkey patching` technique which allows you to overwrite existing code, without modifying Jekyll's internal code. (When I first heard `monkey patching`, I thought it was a joke). The key part of `related_posts_patch.rb` is this:

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

## Overriding and customising Jekyll themes

In the previous chapter, I introduced `Jekyll plugins` and `monkey patching` as two means of overriding Jekyll's default behaviour in Ruby code. These are powerful but relatively advanced techniques, best suited for users comfortable with code. However, these are not the only tools available. In this chapter I will show you through examples what else I used. While Ruby coding modifies the behaviour of Jekyll itself, the following techniques allow you to tailor the Jekyll theme you are using (in my case, Minimal Mistakes)

### Replacing files

The most direct way to override some part of a Jekyll theme is by replacing some of its files directly. You do this by placing a file with the same name, under the same path as in the theme. Jekyll will use your file instead of the one defined in the theme. You do not need to change anything in the original theme. For example:

1\. `_includes/documents-collection.html`: The difference between the two files:
{% raw %}
```liquid
-  {% include archive-single.html type=include.type %}
+  {% include {{ include.included_archive_layout | default: "archive-single" }}.html type=include.type %}
```
{% endraw %}
Remember, I did not edit Minimal Mistakes' file, I just overrode it with mine. I added an optional parameter `included_archive_layout` to the include file, because from `_layouts/updates.html` I want to use a modified version of `archive-single`: `archive-update`, which also shows the associated categories under each post. This is important because my updates layout shows posts from every collection on the site.

2\. `_includes/footer.html`: Modified the footer to 
- include a download link of my CV
- instead of opening the atom feed (of the Post collection) directly. It opens a page with separate feeds for all my collections

One potential drawback of this technique is that if the original file in Minimal Mistakes is updated, your override won't automatically reflect those changes, which might or might not be an issue, depending on your needs. You most likely won't even notice, if you don't check it yourself after a Minimal Mistakes update. This is not the case with the next technique:

### Including files and extending them

Here, you don't replace the original Minimal Mistakes (MM from now on — for Pete's sake, I’ve typed it enough times!) files, but extend them through inclusion. It works best for layout files, and if the original layout gets updated in a newer MM version, your page will get the update automatically (which can be an advantage or disadvantage as well). An example of this is `_layout/collection-extended.html` which reuses MM's collection layout, but adds a subtitle. For example, the main title is `Bugs in the Soup` and the subtitle is `Programming`:
{% raw %}
```markdown
---
layout: collection
---

{{ page.subtitle }}
{{ content }}
```
{% endraw %}
Here, content will be replaced by the original content generated by MM's collection layout, preceded by the page's subtitle.

### _includes/head/custom.html

This is a special case of [Replacing files](#replacing-files), but it is a bit different. It deserves mentioning separately because this is by design in Minimal Mistakes. In the MM theme, `_includes/head/custom.html` is an existing, empty file, containing only a couple of comments, and it is actually included in MM's `default.html`, which is the root file of the whole layout hierarchy. It includes `custom.html` in the `<head>` part:
{% raw %}
```liquid
  <head>
    {% include head.html %}
    {% include head/custom.html %}
  </head>
```
{% endraw %}

This means it will be included in every page on your site, and it provides extensibility. I used it to include my `custom.css` file and my `favicon` which Jekyll wouldn’t otherwise include during the build process:
{% raw %}
```html
<link rel="stylesheet" href="{{ '/assets/css/custom.css' | relative_url }}">
<link rel="shortcut icon" type="image/x-icon" href="{{ site.baseurl }}/assets/images/favicon.ico">
```
{% endraw %}

Similarly, there is a corresponding `_includes/footer/custom.html` file for the footer, which I didn't use, but the possibility is there, should you need it.

## Third party plugins

In this section, I will discuss third party plugins that I used to further enhance the functionality of my site.

### jekyll-feed

Installed as a Ruby gem, it performs the generation of feeds based on your site content. It is <a href="https://pages.github.com/versions/" target="_blank" rel="nofollow noopener noreferrer">supported</a> by GitHub Pages (GHP), so you can use it even if you rely on GHP to build your site. After having struggled so much with the Posts vs. custom collections support by Jekyll ([taxonomies](/programming/2025-07-29-how-i-build-my-personal-site-with-jekyll-and-minimal-mistakes-part-1#categories-and-tags-aka-taxonomies) and [related posts](#related-posts---monkey-patching-ruby)), it was a pleasant surprise that `jekyll-feed` is pretty configurable (<a href="https://github.com/jekyll/jekyll-feed#jekyll-feed-plugin" target="_blank" rel="nofollow noopener noreferrer">see more</a>) and is happy to recognise other collections beyond the almighty `Posts`. All I had to do in my `_config.yaml` is:
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

### jekyll-seo-tag

`jekyll-seo-tag` is also a low hanging fruit for a newly launched site. It is installed as a Ruby gem and is also supported by GHP. The configuration effort is minimal, and it adds  <a href="https://github.com/jekyll/jekyll-seo-tag?tab=readme-ov-file#about-jekyll-seo-tag" target="_blank" rel="nofollow noopener noreferrer">meta tags</a> to your site. All you need to do is

1\. Install it as a Ruby gem.

```
group :jekyll_plugins do
...
  gem "jekyll-seo-tag", "~> 2.8.0"
...
end
```

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

### Disqus

Disqus is a comment provider which lets readers comment and discuss under posts. It is even more third party than the two Jekyll plugins above, I could even call it fourth party. Why did I choose it then among all the <a href="https://mmistakes.github.io/minimal-mistakes/docs/configuration/#comments" target="_blank" rel="nofollow noopener noreferrer">supported comment providers</a> by MM? During my research, this is what I found:
1. `giscus` and `utterances` 
  - Pros: they leverage GitHub's infrastructure, which would make them well suited for my site, however...
  - Cons: they require a GitHub account for the reader to comment. Since my target audience does not only consist of developers, but also traders and hobby cooks, they were out of the equation.
2. `Facebook`: 
  - Pros: big, battle tested, most people have FB accounts. 
  - Cons: privacy concerns.
3. `Disqus`: 
  - Pros: big, battle tested, widely used, lets people comment without registration. 
  - Cons: privacy concerns, shows ads (unless paid subscription), limited styling options (although you can choose between dark and light themes, which was more than enough for me)
4. `Staticman v2/v3`, `Discourse`: Although there are some key differences, I will cover them together. Both of these are really cool!
  - Pros: Self hosted, open source, no privacy concerns
  - Cons: quite advanced setup in both cases.

Since my site is not that big, and I don't expect it to be in the near future, I wanted to start with something easy to set up. This excluded `Staticman` and `Discourse`. With `giscus` and `utterances` also out of the equation, I chose `Disqus` as the lesser evil of the two remaining giants. I won't go over the installation process of `Disqus` here. It was relatively straightforward. If you want me to cover it, feel free to leave a (Disqus) comment below. I will be happy to write it, and open a champagne for my first reader comment. :)

In the future, if my site were to see a serious discussion activity, I would definitely consider switching to `Staticman` or `Discourse`, but that's for a later story.

## Outroduction

That concludes Part 2. of the series. In the [next post](/programming/2025-08-12-how-i-build-my-personal-site-with-jekyll-and-minimal-mistakes-part-3), the site will finally go live! I will share a useful checklist for pre- and post-publishing, based on my experiences, and we will conclude the series with my final thoughts.

## Links
- [Part 1: Setup and Design Decisions](/programming/2025-07-29-how-i-build-my-personal-site-with-jekyll-and-minimal-mistakes-part-1)
- [Part 3: Publishing Takeaways and Final Thoughts](/programming/2025-08-12-how-i-build-my-personal-site-with-jekyll-and-minimal-mistakes-part-3)
- [Portfolio entry](/portfolio/2025-07-29-my-personal-site)
- <a href="https://github.com/petertengg/petertengg.github.io" target="_blank" rel="nofollow noopener noreferrer">GitHub repo</a>

## Sources
- <a href="https://pages.github.com/versions/" target="_blank" rel="nofollow noopener noreferrer">GitHub Pages dependencies</a>
- <a href="https://github.com/jekyll/jekyll-feed" target="_blank" rel="nofollow noopener noreferrer">jekyll-feed plugin GitHub</a>
- <a href="https://github.com/jekyll/jekyll-seo-tag" target="_blank" rel="nofollow noopener noreferrer">jekyll-seo-tag plugin GitHub</a>
- <a href="https://mmistakes.github.io/minimal-mistakes/" target="_blank" rel="nofollow noopener noreferrer">Minimal Mistakes documentation and demo site</a>