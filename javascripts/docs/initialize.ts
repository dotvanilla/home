/// <reference path="markdown.ts" />

namespace vanillavb.app {

    let config: markedjs.option = markedjs.option.Defaults;

    export function initialize() {

        window.onhashchange = app.loadDocument;
        config.renderer = new markdown();

        // show home page
        app.renderDocument("README.md");
    }

    export function loadDocument() {
        let fileName = $ts.location.hash();
        let path = `/docs/${fileName}.md`;

        app.renderDocument(path);
    }

    export function renderDocument(path: string) {
        $ts.getText(path, markdown => $ts("#article").innerHTML = marked(markdown, config));
    }
}