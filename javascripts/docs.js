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
        }
        app.initialize = initialize;
    })(app = vanillavb.app || (vanillavb.app = {}));
})(vanillavb || (vanillavb = {}));
//# sourceMappingURL=docs.js.map