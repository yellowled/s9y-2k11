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
});
