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
                else if (lang != "vbnet") {
                    let highlight = window.hljs
                        .highlightAuto(code)
                        .value;
                    code = `<pre><code class="highlight ${lang} hljs">${highlight}</code></pre>`;
                    return code;
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
            if (Strings.Empty(folder) || folder == "/") {
                return "";
            }
            else if (folder.charAt(0) == "#") {
                return "";
            }
            else {
                return folder.split("/")[0];
            }
        }
        function getTargetFile() {
            let fileName = $ts.location.hash();
            let pathFallback;
            let path;
            if (!Strings.Empty(fileName, true)) {
                pathFallback = `/docs/${fileName}.md`;
                path = pathFallback;
                if (!Strings.Empty(language, true)) {
                    path = `/docs/${fileName}.${language}.md`;
                }
            }
            else {
                // show home page
                pathFallback = "/README.md";
                path = pathFallback;
                if (!Strings.Empty(language, true)) {
                    path = `/README.${language}.md`;
                }
            }
            return {
                path: path,
                pathFallback: pathFallback
            };
        }
        function initialize() {
            // initialize styles and events
            window.onhashchange = app.loadDocument;
            config.renderer = new app.markdown();
            vbcodeStyle.lineHeight = "5px";
            language = lang();
            TypeScript.logging.log(config);
            app.renderDocument(getTargetFile());
        }
        app.initialize = initialize;
        function loadDocument() {
            app.renderDocument(getTargetFile());
        }
        app.loadDocument = loadDocument;
        function updateArticle(html) {
            let h1;
            // update article content
            $ts("#article").innerHTML = html;
            // and then highligh vb code block
            vscode.highlightVB(vbcodeStyle);
            h1 = $ts("#article").getElementsByTagName("h1")[0];
            if (!isNullOrUndefined(h1)) {
                document.title = h1.innerText;
            }
        }
        app.updateArticle = updateArticle;
        function renderDocument(ref) {
            let count = 0;
            let renderDocumentInternal = function (markdown) {
                let html;
                if (Strings.Empty(markdown, true)) {
                    // 404的时候返回的是空字符串
                    if (count == 0) {
                        count++;
                        // request for fallback document path
                        $ts.getText(ref.pathFallback, renderDocumentInternal, {
                            nullForNotFound: true
                        });
                        return;
                    }
                    else {
                        // 目标文档查找失败
                        html = `
<h1>404 Not Found</h1>
<p>The requested URL <strong>${ref.path}</strong> was not found on this server.</p>`;
                    }
                }
                else {
                    html = marked(markdown, config);
                }
                vanillavb.app.updateArticle(html);
            };
            $ts.getText(ref.path, renderDocumentInternal, {
                nullForNotFound: true
            });
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