var vanillavb;
(function (vanillavb) {
    var app;
    (function (app) {
        /**
         * Website markdown to html render
        */
        class markdown extends markedjs.htmlRenderer {
            code(code, infostring, escaped) {
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
                return '<pre><code class="highlight '
                    + markedjs.helpers.escape.doescape(lang, true)
                    + '">'
                    + (escaped ? code : markedjs.helpers.escape.doescape(code, true))
                    + '</code></pre>\n';
            }
        }
        app.markdown = markdown;
    })(app = vanillavb.app || (vanillavb.app = {}));
})(vanillavb || (vanillavb = {}));
/// <reference path="markdown.ts" />
var vanillavb;
(function (vanillavb) {
    var app;
    (function (app) {
        let config = markedjs.option.Defaults;
        let vbcodeStyle = vscode.VisualStudio;
        function initialize() {
            window.onhashchange = app.loadDocument;
            config.renderer = new app.markdown();
            vbcodeStyle.lineHeight = "6px";
            TypeScript.logging.log(config);
            // show home page
            app.renderDocument("README.md");
        }
        app.initialize = initialize;
        function loadDocument() {
            let fileName = $ts.location.hash();
            let path = `/docs/${fileName}.md`;
            app.renderDocument(path);
        }
        app.loadDocument = loadDocument;
        function renderDocument(path) {
            let renderDocumentInternal = function (markdown) {
                $ts("#article").innerHTML = marked(markdown, config);
                vscode.highlightVB();
            };
            $ts.getText(path, renderDocumentInternal);
        }
        app.renderDocument = renderDocument;
    })(app = vanillavb.app || (vanillavb.app = {}));
})(vanillavb || (vanillavb = {}));
/// <reference path="../linq.d.ts" />
/// <reference path="../marked.d.ts" />
/// <reference path="../vbcode.d.ts" />
/// <reference path="initialize.ts" />
$ts.mode = Modes.debug;
// run web app
$ts(vanillavb.app.initialize);
//# sourceMappingURL=docs.js.map