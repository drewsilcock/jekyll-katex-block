require 'execjs'

module Jekyll
    module Tags
        class KatexBlock < Liquid::Block

            def initialize(tag, markup, tokens)
                super
                @tag = tag
                @tokens = tokens
                @markup = markup
            end

            # Config defaults
            PATH_TO_JS = "./public/js/katex.min.js"

            def render(context)
                # Take config from global `_config.yml', if it exists
                katex_config = context.registers[:site].config['katex'] || {}

                # Take path to KaTeX javascript from site config or default
                path = katex_config['path_to_js'] || PATH_TO_JS

                katexsrc = open(path).read
                katex_module = ExecJS.compile(katexsrc)

                latex_source = super
                displaystyle = (@markup.include? 'displaystyle') || (@markup.include? 'centred')

                katex_module.call("katex.renderToString", latex_source, displayMode: displaystyle)
            end
        end
    end
end

Liquid::Template.register_tag('latex', Jekyll::Tags::KatexBlock)
