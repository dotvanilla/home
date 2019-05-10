/// <reference path="linq.d.ts" />
/// <reference path="marked.d.ts" />
/// <reference path="vbcode.d.ts" />
declare namespace vanillavb.app {
    /**
     * Website markdown to html render
    */
    class markdown extends markedjs.htmlRenderer {
        image(href: string, title: string, text: string): string;
        private static isFullName;
        code(code: string, infostring: string, escaped: boolean): string;
    }
}
declare namespace vanillavb.app {
    function initialize(): void;
    function loadDocument(): void;
    function updateArticle(html: string): void;
    function renderDocument(ref: DocumentFullName): void;
    interface DocumentFullName {
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
