/// <reference path="markdown.ts" />

namespace vanillavb.app {

    let config: markedjs.option = markedjs.option.Defaults;
    let vbcodeStyle: vscode.CSS = vscode.VisualStudio;

    export function initialize() {

        window.onhashchange = app.loadDocument;
        config.renderer = new markdown();
        vbcodeStyle.lineHeight = "5px";

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
        let path: string;

        if (Strings.Empty(fileName)) {
            path = "README.md";
        } else {
            path = `/docs/${fileName}.md`;
        }

        app.renderDocument(path);
    }

    export function renderDocument(path: string) {
        let renderDocumentInternal = function (markdown: string) {
            $ts("#article").innerHTML = marked(markdown, config);
            vscode.highlightVB(vbcodeStyle);
            $ts.select('.typescript').ForEach((block) => {
                (<any>window).hljs.highlightBlock(block);
            });

            let h1 = $ts("#article").getElementsByTagName("h1")[0];

            if (!isNullOrUndefined(h1)) {
                document.title = h1.innerText;
            }
        }

        $ts.getText(path, renderDocumentInternal);
    }
}