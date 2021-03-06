xquery version "3.1";

(: Module for app-specific template functions :)
module namespace app="teipublisher.com/app";

import module namespace templates="http://exist-db.org/xquery/templates";
import module namespace config="http://www.tei-c.org/tei-simple/config" at "config.xqm";

declare namespace tei="http://www.tei-c.org/ns/1.0";

declare
    %templates:wrap
function app:markdown($node as node(), $model as map(*), $doc as xs:string) {
    let $md := util:binary-doc($config:data-root || "/" || $doc)
    return
        <template>{util:binary-to-string($md)}</template>
};