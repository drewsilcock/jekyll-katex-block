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

Note that this requires you to have the following CSS included in your web page:

```css
span.centredequation {
    margin: auto;
    margin-top: 0.5em;
    margin-bottom: 0.5em;
    display: table;
}
```

What I do is just append this to my main stylesheet. If you're wondering why I didn't just `div` it, or use inline styles, they're escaped by Jekyll for some reason I'm not entirely sure. Maybe security reasons, although that seems silly.

Options
-------

There is currently one global option, which is the relative path from the root of your Jekyll project to the KaTeX javascript file; you can change it in your `config.yml` like so:

```yaml
katex:
    path_to_js: "./your/path/to/katex/js"
```

The default value is `./public/js/katex.min.js`.
