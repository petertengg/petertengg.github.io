# petertengg.com

**Personal portfolio and blog site of Peter Tengg**  
- Built with [Jekyll](https://jekyllrb.com) and the [Minimal Mistakes theme](https://mmistakes.github.io/minimal-mistakes/)  
- Hosted on [GitHub Pages](https://pages.github.com/)  
- Visit: [https://petertengg.com](https://petertengg.com)

---

## About

This is the source code for my personal site and blog, where I write about:

- **Programming**: C++, Python, performance, tools, and technical deep dives  
- **Trading**: Algorithms, Pine Script, MetaTrader, and related experiments  
- **Portfolio**: Selected projects, freelance work, and technical showcases  

The site is structured around multiple sub-blogs using [Jekyll custom collections](https://jekyllrb.com/docs/collections/).

---

## Tech stack

- **Framework**: [Jekyll](https://jekyllrb.com)
- **Theme**: [Minimal Mistakes](https://mmistakes.github.io/minimal-mistakes/)
- **Hosting**: GitHub Pages (manual deploy to `gh-pages` branch)
- **Languages**: Markdown, HTML, CSS, Liquid, Ruby
- **Features**:
  - Custom collections: `programming`, `portfolio`, `updates`
  - Custom Ruby plugin: `AllTaxonomiesGenerator` for cross-collection tags/categories
  - Monkey-patched `related_posts` to work across all collections
  - Custom layouts, shortcodes, and includes
  - Manual deployment via `git worktree` and `deploy.sh`
  - Comment system: [Disqus](https://disqus.com/)

---

## Local development

```bash
bundle install
bundle exec jekyll serve
```

Then open your browser at:  
[http://127.0.0.1:4000](http://127.0.0.1:4000)

---

## Deployment

This site is manually deployed to the `gh-pages` branch using a [git worktree](https://git-scm.com/docs/git-worktree) setup.

To publish your site:

```bash
./deploy.sh
```

This script builds the site with `JEKYLL_ENV=production`, copies the output from `_site` to `../_deploy`, and pushes the result to the `gh-pages` branch.

---

## Notes and tips

- `_site/` is the built output and should not be committed  

---

## Credits

- Theme: [Minimal Mistakes](https://github.com/mmistakes/minimal-mistakes) by [Michael Rose](https://mademistakes.com/)
- Inspired by the open-source Jekyll and developer blogging community

---

## Contact

Interested in collaboration or freelance trading software projects?  
Visit [https://petertengg.com](https://petertengg.com) or connect via [LinkedIn](https://www.linkedin.com/in/petertengg)
