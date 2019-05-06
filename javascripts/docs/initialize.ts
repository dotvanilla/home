/// <reference path="markdown.ts" />

namespace vanillavb.app {

    let config: markedjs.option = markedjs.option.Defaults;
    let vbcodeStyle: vscode.CSS = vscode.VisualStudio;
    let language: string = lang();

    function lang() {
        let folder = $ts.location.path;

        if (!folder) {
            return "";
        } else {
            return folder.split("/")[0];
        }
    }

    function getTargetFile(): string {
        let fileName: string = $ts.location.hash();

        if (!Strings.Empty(fileName, true)) {
            if (Strings.Empty(language, true)) {
                return `/docs/${fileName}.md`;
            } else {
                return `/docs/${fileName}.${language}.md`;
            }
        } else {
            // show home page
            if (Strings.Empty(language, true)) {
                return "/README.md";
            } else {
                return `/README.${language}.md`;
            }
        }
    }

    export function initialize() {
        // initialize styles and events
        window.onhashchange = app.loadDocument;
        config.renderer = new markdown();
        vbcodeStyle.lineHeight = "5px";
        language = lang();

        TypeScript.logging.log(config);
        app.renderDocument(getTargetFile());
    }

    export function loadDocument() {
        app.renderDocument(getTargetFile());
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