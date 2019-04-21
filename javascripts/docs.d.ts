/// <reference path="linq.d.ts" />
/// <reference path="marked.d.ts" />
declare namespace vanillavb.app {
    /**
     * Website markdown to html render
    */
    class markdown extends markedjs.htmlRenderer {
    }
}
declare namespace vanillavb.app {
    function initialize(): void;
}
