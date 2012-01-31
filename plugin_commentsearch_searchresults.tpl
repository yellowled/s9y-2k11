<aside class="comment_results">
    <h3>{$CONST.COMMENT_SEARCHRESULTS|sprintf:$comment_searchresults}</h3>

    <ul>
    {foreach from=$comment_results item="result"}
        <li><span><a href="{$result.permalink|@escape}">{$result.title|@escape}</a> (<time datetime="{$result.ctimestamp|@formatTime:@serendipity_smarty_html5time}" pubdate>{$result.ctimestamp|@formatTime:$template_option.date_format}</time>)</span>
            {if $result.type == 'TRACKBACK'}<a href="{$result.url|@escape}">{else}<b>{/if}{$result.author|@escape}{if $result.type == 'TRACKBACK'}</a>{else}</b>{/if}: {$result.comment|@truncate:200:" ... "}
        </li>
    {/foreach}
    </ul>
</aside>
