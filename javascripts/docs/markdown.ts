namespace vanillavb.app {

    /**
     * Website markdown to html render
    */
    export class markdown extends markedjs.htmlRenderer {

        public code(code: string, infostring: string, escaped: boolean): string {
            var lang = (infostring || '').match(/\S*/)[0];
                       
            if (this.options.highlight) {
                var out = this.options.highlight(code, lang);

                if (out != null && out !== code) {
                    escaped = true;
                    code = out;
                }
            }
            if (!lang) {
                return '<pre><code>'
                    + (escaped ? code : markedjs.helpers.escape.doescape(code, true))
                    + '</code></pre>';
            }
            return '<pre><code class="'                
                + markedjs.helpers.escape.doescape(lang, true)
                + '">'
                + (escaped ? code : markedjs.helpers.escape.doescape(code, true))
                + '</code></pre>\n';            
        }
    }
}