/// <reference path="markdown.ts" />

namespace vanillavb.app {

    let config: markedjs.option = markedjs.option.Defaults;
    let vbcodeStyle: vscode.CSS = vscode.VisualStudio;

    export function initialize() {

        window.onhashchange = app.loadDocument;
        config.renderer = new markdown();
        vbcodeStyle.lineHeight = "6px";

        TypeScript.logging.log(config);

        if (!Strings.Empty($ts.location.hash())) {
            app.renderDocument(`/docs/${$ts.location.hash()}.md`);
        } else {
            // show home page
            app.renderDocument("README.md");
        }
    }

    export function loadDocument() {
        let fileName = $ts.location.hash();
        let path = `/docs/${fileName}.md`;

        app.renderDocument(path);
    }

    export function renderDocument(path: string) {
        let renderDocumentInternal = function (markdown: string) {
            $ts("#article").innerHTML = marked(markdown, config);
            vscode.highlightVB(vbcodeStyle);
        }

        $ts.getText(path, renderDocumentInternal);
    }
}