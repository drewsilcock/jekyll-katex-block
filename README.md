jekyll-katex-block
==================

This is a Jekyll plugin that includes a `latex` Liquid tag that utilises the KaTeX web math typesetting system to generate equations server-side into pure HTML and CSS.

Installation
------------

To install it, copy `katex_block.rb` into the `_plugins` folder of your Jekyll project.

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
