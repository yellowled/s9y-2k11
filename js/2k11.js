jQuery(document).ready(function($) {
    // Disable trackback url link
    $('#trackback_url>a').click(function() {
        var trackbackMsg = $(this).attr('title');
        alert(trackbackMsg);
        return false;
    });
    // Confirm comment deletion
    $('.comment_source_ownerlink').click(function() {
        var deleteMsg = $(this).attr('title');
        return confirm(deleteMsg);
    })
});
