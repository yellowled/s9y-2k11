{foreach from=$comments item=comment name="comments"}
<!-- TODO: * find a robust solution for threaded comments -->
<!--       * jQuery code for reply function               -->
<article id="c{$comment.id}" class="serendipity_comment{if $entry.author == $comment.author} serendipity_comment_author_self{/if} {cycle values="odd, even"} {if $comment.depth > 8}commentlevel-9{else}commentlevel-{$comment.depth}{/if}">
    <h4>{if $comment.url}<a href="{$comment.url}">{/if}{$comment.author|@default:$CONST.ANONYMOUS}{if $comment.url}</a>{/if} {$CONST.ON} <time datetime="{$comment.timestamp|@formatTime:'%Y-%m-%dT%H:%M:%S%z'}" pubdate>{$comment.timestamp|@formatTime:$template_option.date_format}</time>:</h4>
    
    <div class="serendipity_commentBody">
    {if $comment.body == 'COMMENT_DELETED'}
        {$CONST.COMMENT_IS_DELETED}
    {else}
        {$comment.body}
    {/if}
    </div>
    
    <footer>
        <a class="comment_source_trace" href="#c{$comment.id}">#{$comment.trace}</a>
    {if $entry.is_entry_owner}
        | <a class="comment_source_ownerlink" href="{$comment.link_delete}" title="{$CONST.COMMENT_DELETE_CONFIRM|@sprintf:$comment.id:$comment.author}">{$CONST.DELETE}</a>
    {/if}
    {if $entry.allow_comments AND $comment.body != 'COMMENT_DELETED'}
        | <a class="comment_reply" href="#serendipity_CommentForm" id="serendipity_reply_{$comment.id}" onclick="document.getElementById('serendipity_replyTo').value='{$comment.id}'; {$comment_onchange}">{$CONST.REPLY}</a>
        <div id="serendipity_replyform_{$comment.id}"></div>
    {/if}
    </footer>
</article>
{foreachelse}
<p class="nocomments">{$CONST.NO_COMMENTS}</p>
{/foreach}
