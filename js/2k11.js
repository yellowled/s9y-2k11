jQuery(document).ready(function($) {
    // Disable trackback url link
    $('#trackback_url>a').click(function() {
        var trackbackMsg = $(this).attr('title');
        alert(trackbackMsg);
        return false;
    });
    // Reply to comment
    $('.comment_reply').click(function() {
        var commentId = $(this).attr('id').replace(/serendipity_reply_/g,"");
        $('#serendipity_replyTo').val(commentId);
    });
    // Confirm comment deletion
    $('.comment_source_ownerlink').click(function() {
        var deleteMsg = $(this).attr('title');
        return confirm(deleteMsg);
    });
    // Clone primary navigation as select for small screen
    $('<select/>').appendTo('#primary-nav');
    // Create default option
    $("<option />", {
        "selected": "selected",
        "value"   : "",
        "text"    : "Navigation …"
    }).appendTo("#primary-nav>select");
    // Populate dropdown with menu items
    $("#primary-nav a").each(function() {
        var el = $(this);
        $("<option />", {
            "value"   : el.attr("href"),
            "text"    : el.text()
        }).appendTo("#primary-nav>select");
    });
    // Make the select navs work
    $("#primary-nav>select").change(function() {
        window.location = $(this).find("option:selected").val();
    });
});
