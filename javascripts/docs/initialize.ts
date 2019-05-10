﻿/// <reference path="markdown.ts" />

namespace vanillavb.app {

    let config: markedjs.option = markedjs.option.Defaults;
    let vbcodeStyle: vscode.CSS = vscode.VisualStudio;
    let language: string = lang();

    function lang() {
        let folder = $ts.location.path;

        if (Strings.Empty(folder) || folder == "/") {
            return "";
        } else if (folder.charAt(0) == "#") {
            return "";
        } else {
            return folder.split("/")[0];
        }
    }

    function getTargetFile(): DocumentFullName {
        let fileName: string = $ts.location.hash();
        let pathFallback: string;
        let path: string;

        if (!Strings.Empty(fileName, true)) {
            pathFallback = `/docs/${fileName}.md`;
            path = pathFallback;

            if (!Strings.Empty(language, true)) {
                path = `/docs/${fileName}.${language}.md`;
            }
        } else {
            // show home page
            pathFallback = "/README.md";
            path = pathFallback;

            if (!Strings.Empty(language, true)) {
                path = `/README.${language}.md`;
            }
        }

        return <DocumentFullName>{
            path: path,
            pathFallback: pathFallback
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

    export function updateArticle(html: string) {
        let h1: HTMLHeadingElement;

        // update article content
        $ts("#article").innerHTML = html;
        // and then highligh vb code block
        vscode.highlightVB(vbcodeStyle);

        h1 = $ts("#article").getElementsByTagName("h1")[0];

        if (!isNullOrUndefined(h1)) {
            document.title = h1.innerText;
        }
    }

    export function renderDocument(ref: DocumentFullName) {
        let count: number = 0;
        let renderDocumentInternal = function (markdown: string) {
            let html: string;            

            if (Strings.Empty(markdown, true)) {
                // 404的时候返回的是空字符串
                if (count == 0) {
                    count++;

                    // request for fallback document path
                    $ts.getText(ref.pathFallback, renderDocumentInternal, {
                        nullForNotFound: true
                    });
                    return;
                } else {
                    // 目标文档查找失败
                    html = `
<h1>404 Not Found</h1>
<p>The requested URL <strong>${ref.path}</strong> was not found on this server.</p>`;
                }
            } else {
                html = marked(markdown, config);
            }

            vanillavb.app.updateArticle(html);
        }

        $ts.getText(ref.path, renderDocumentInternal, {
            nullForNotFound: true
        });
    }

    export interface DocumentFullName {
        /**
         * 带有当前的语言翻译的文档的位置
        */
        path: string;
        /**
         * 如果目标文档查找失败，则使用这个相对应的默认英文的文档的路径
        */
        pathFallback: string;
    }
}