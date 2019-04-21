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
    function renderDocument(path: string): void;
}
