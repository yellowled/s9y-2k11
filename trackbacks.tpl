{foreach from=$trackbacks item=trackback}
<article id="c{$trackback.id}" class="serendipity_comment {cycle values="odd, even"}">
    <h4><cite>{$trackback.author|@default:$CONST.ANONYMOUS}</cite> {$CONST.ON} <time datetime="{$trackback.timestamp|@formatTime:'%Y-%m-%dT%H:%M:%S'}" pubdate>{$trackback.timestamp|@formatTime:$template_option.date_format}</time>: <a href="{$trackback.url|@strip_tags}">{$trackback.title}</a></h4>
    
    <div class="serendipity_commentBody">{$trackback.body|@strip_tags|@escape:all}</div>
{if $entry.is_entry_owner}
    <a href="{$serendipityBaseURL}comment.php?serendipity[delete]={$trackback.id}&amp;serendipity[entry]={$trackback.entry_id}&amp;serendipity[type]=trackbacks">{$CONST.DELETE}</a>
{/if}
</article>
{foreachelse}
<p class="nocomments">{$CONST.NO_TRACKBACKS}</p>
{/foreach}
