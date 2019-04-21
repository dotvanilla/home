/// <reference path="../linq.d.ts" />
/// <reference path="../marked.d.ts" />
$ts(function () {
    vanillavb.app.initialize();
});
var vanillavb;
(function (vanillavb) {
    var app;
    (function (app) {
        /**
         * Website markdown to html render
        */
        class markdown extends markedjs.htmlRenderer {
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
        function initialize() {
            window.onhashchange = app.loadDocument;
            config.renderer = new app.markdown();
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
            $ts.getText(path, markdown => $ts("#article").innerHTML = marked(markdown, config));
        }
        app.renderDocument = renderDocument;
    })(app = vanillavb.app || (vanillavb.app = {}));
})(vanillavb || (vanillavb = {}));
//# sourceMappingURL=docs.js.map