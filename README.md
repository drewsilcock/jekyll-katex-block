jekyll-katex-block
==================

KaTeX is the new development from Khan Academy for super fast mathematics typesetting on your website. It renders your equations into pure CSS and HTML using a small JS file, making it orders of magnitude faster than the mainstream alternative, [MathJax](http://www.mathjax.org/).

This small plugin integrates KaTeX into your Jekyll website utilising Liquid blocks, so rendering an equation is as simple as writing `{% latex %} equation {% endlatex %}`. It is intended to be lightweight and add no appreciable compilation time to your site, even if you have many equations.

Because the KaTeX JavaScript is being run server-side through the `execjs` Ruby gem, you don't even need to include the KaTeX JS in the resulting web page, only the CSS and fonts!

Installation
------------

To install it, copy `katex_block.rb` into the `_plugins` folder of your Jekyll project.

You can download the script directly by running

```bash
wget https://raw.githubusercontent.com/drewsberry/jekyll-katex-block/master/katex_block.rb
mv katex_block.rb /path/to/your/site/_plugins/
```

Or by cloning the whole repo and copying it across

```bash
git clone https://github.com/drewsberry/jekyll-katex-block.git
cp jekyll-katex-block/katex_block.rb /path/to/your/site/_plugins/
```

You also need the KaTeX CSS file, `katex.min.css`, and the KaTeX font files copied into your project. To download these and for more information, head over to [KaTeX GitHub Page](http://khan.github.io/KaTeX) and the [KaTeX source repo](https://github.com/Khan/KaTeX).

For a fully working example, check out the `test` directory. It contains a minimal working example of using the plugin.

Use
---

To use it in a post, wrap your equation in a `latex` block as follows:

```markdown
{% latex %} E = mc^2 {% endlatex %}
```

And that's it!

If you also want to have centred equations, you can do:

```markdown
{% latex centred %} E = mc^2 {% endlatex %}
```

It's really as simple as that. This is intended to be a virtually weightless extension to your Jekyll blog that allows you to leverage the virtually weightless KaTeX CSS for incredibly fast and easy mathematics typesetting.

Options
-------

There is currently one global option, which is the relative path from the root of your Jekyll project to the KaTeX javascript file; you can change it in your `config.yml` like so:

```yaml
katex:
    path_to_js: "./your/path/to/katex/js"
```

The default value is `./public/js/katex.min.js`.

Problems
--------

The only real problem is that being relatively new, KaTeX doesn't yet support all mathematical symbols that you might need. Several important PRs are in the works over at [https://github.com/Khan/KaTeX/pulls](https://github.com/Khan/KaTeX/pulls), in particular [#151](https://github.com/Khan/KaTeX/pull/151) which adds vital symbols like `\nabla`, `\imath`, `\hbar`, `\exists` and a load of others.
