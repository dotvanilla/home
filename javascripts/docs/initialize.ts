/// <reference path="markdown.ts" />

namespace vanillavb.app {

    let render: markedjs.htmlRenderer = new markdown();

    export function initialize() {

        window.onhashchange = app.loadDocument;

        // show home page
        app.renderDocument("README.md");
    }

    export function loadDocument() {
        let fileName = $ts.location.hash();
        let path = `/docs/${fileName}.md`;

        app.renderDocument(path);
    }

    export function renderDocument(path: string) {

    }
}