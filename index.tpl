{if $is_embedded != true}
<!doctype html>
<!--[if lt IE 7 ]> <html class="no-js ie6 oldie" lang="{$lang}"> <![endif]-->
<!--[if IE 7 ]>    <html class="no-js ie7 oldie" lang="{$lang}"> <![endif]-->
<!--[if IE 8 ]>    <html class="no-js ie8 oldie" lang="{$lang}"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="{$lang}"> <!--<![endif]-->
<head>
    <meta charset="{$head_charset}">
    <title>{$head_title|@default:$blogTitle} {if $head_subtitle} - {$head_subtitle}{/if}</title>
    <meta name="generator" content="Serendipity v.{$head_version}"/>
    <meta name="viewport" content="width=device-width,initial-scale=1"/>
    <link rel="stylesheet" href="{$head_link_stylesheet}"/>
    <script src="{serendipity_getFile file="js/modernizr-2.0.6.min.js"}"></script>
    <link rel="alternate" type="application/rss+xml" title="{$blogTitle} RSS feed" href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/index.rss2"/>
    <link rel="alternate" type="application/x.atom+xml"  title="{$blogTitle} Atom feed"  href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/atom.xml"/>
{if $entry_id}
    <link rel="pingback" href="{$serendipityBaseURL}comment.php?type=pingback&amp;entry_id={$entry_id}"/>
{/if}
{serendipity_hookPlugin hook="frontend_header"}
</head>
<body>
{else}
{serendipity_hookPlugin hook="frontend_header"}
{/if}
{if $is_raw_mode != true}
<div id="page" class="clearfix container">
    <header id="banner" class="clearfix{if $leftSidebarElements > 0 && $rightSidebarElements > 0} col3{elseif $leftSidebarElements > 0 && $rightSidebarElements == 0} col2l{else} col2r{/if}" role="banner">
        <div id="identity">
            <h1><a href="{$serendipityBaseURL}">{$head_title|@default:$blogTitle}</a></h1>
            <p>{$head_subtitle|@default:$blogDescription}</p>
        </div>
        
        <form id="search" action="{$serendipityHTTPPath}{$serendipityIndexFile}" method="get" role="search">
        <div>
            <input type="hidden" name="serendipity[action]" value="search"/>
            <label for="searchterm" class="visuallyhidden">{$CONST.QUICKSEARCH}</label>
            <input id="searchterm" name="serendipity[searchTerm]" type="search" placeholder="{$CONST.QUICKSEARCH}" value=""/>
            <input id="searchsend" name="serendipity[searchButton]" class="visuallyhidden" type="submit" value="{$CONST.GO}"/>
        </div>
        </form>
        {serendipity_hookPlugin hook="quicksearch_plugin" hookAll="true"}
    </header>
    
    <nav id="primary-nav" role="navigation">
        <h2 class="visuallyhidden">Navigation</h2>
        
        <ul class="clearfix">{foreach from=$navlinks item="navlink" name="sbnav"}<li{if $smarty.foreach.sbnav.first} class="first"{/if}{if $smarty.foreach.sbnav.last} class="last"{/if}>{if $currpage==$navlink.href or $currpage2==$navlink.href}<span>{else}<a href="{$navlink.href}">{/if}{$navlink.title}{if $currpage==$navlink.href or $currpage2==$navlink.href}</span>{else}</a>{/if}</li>{/foreach}</ul>
    </nav>
    
    <div id="main" class="clearfix{if $leftSidebarElements > 0 && $rightSidebarElements > 0} col3{elseif $leftSidebarElements > 0 && $rightSidebarElements == 0} col2l{else} col2r{/if}">
        <div id="content" class="clearfix" role="main">
        {$CONTENT}
        </div>
    {if $leftSidebarElements > 0}
        <aside id="sidebar_left" role="complementary">
            <h2 class="visuallyhidden">Sidebar</h2>
            {serendipity_printSidebar side="left"}
        </aside>
    {/if}
    {if $rightSidebarElements > 0}
        <aside id="sidebar_right" role="complementary">
            <h2 class="visuallyhidden">Sidebar</h2>
            {serendipity_printSidebar side="right"}
        </aside>
    {/if}
    </div>
    
    <footer id="colophon" role="contentinfo">
        <small lang="en">Powered by <a href="http://s9y.org">Serendipity</a> &amp; the <i>2k11</i> theme.</small>
    </footer>
</div>
{/if}
{$raw_data}
{serendipity_hookPlugin hook="frontend_footer"}
{if $is_embedded != true}
</body>
</html>
{/if}
