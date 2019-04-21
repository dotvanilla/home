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
        let render = new app.markdown();
        function initialize() {
            window.onhashchange = app.loadDocument;
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
        }
        app.renderDocument = renderDocument;
    })(app = vanillavb.app || (vanillavb.app = {}));
})(vanillavb || (vanillavb = {}));
//# sourceMappingURL=docs.js.map