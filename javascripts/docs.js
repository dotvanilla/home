var vanillavb;
(function (vanillavb) {
    var app;
    (function (app) {
        /**
         * Website markdown to html render
        */
        class markdown extends markedjs.htmlRenderer {
            image(href, title, text) {
                href = markedjs.helpers.cleanUrl(this.options.sanitize, this.options.baseUrl, href);
                if (href === null) {
                    return text;
                }
                else if (!markdown.isFullName(href)) {
                    href = `/docs/${href}`;
                }
                var out = '<img src="' + href + '" alt="' + text + '"';
                if (title) {
                    out += ' title="' + title + '"';
                }
                out += this.options.xhtml ? '/>' : '>';
                return out;
            }
            static isFullName(href) {
                return href.toLowerCase().indexOf("://") > -1;
            }
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
                else {
                    /*if (lang == "typescript") {
                        return (<any>window).highlight.highlightAuto(code).value;
                    }*/
                }
                return '<pre><code class="highlight ' + lang + '">'
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
        let language = lang();
        function lang() {
            let folder = $ts.location.path;
            if (!folder) {
                return "";
            }
            else {
                return folder.split("/")[1];
            }
        }
        function getTargetFile() {
            let fileName = $ts.location.hash();
            if (!Strings.Empty(fileName)) {
                if (!language) {
                    return `/docs/${fileName}.${language}.md`;
                }
                else {
                    return `/docs/${fileName}.md`;
                }
            }
            else {
                // show home page
                if (!language) {
                    return `/README.${language}.md`;
                }
                else {
                    return "/README.md";
                }
            }
        }
        function initialize() {
            // initialize styles and events
            window.onhashchange = app.loadDocument;
            config.renderer = new app.markdown();
            vbcodeStyle.lineHeight = "5px";
            TypeScript.logging.log(config);
            app.renderDocument(getTargetFile());
        }
        app.initialize = initialize;
        function loadDocument() {
            app.renderDocument(getTargetFile());
        }
        app.loadDocument = loadDocument;
        function renderDocument(path) {
            let renderDocumentInternal = function (markdown) {
                $ts("#article").innerHTML = marked(markdown, config);
                vscode.highlightVB(vbcodeStyle);
                $ts.select('.typescript').ForEach((block) => {
                    window.hljs.highlightBlock(block);
                });
                let h1 = $ts("#article").getElementsByTagName("h1")[0];
                if (!isNullOrUndefined(h1)) {
                    document.title = h1.innerText;
                }
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