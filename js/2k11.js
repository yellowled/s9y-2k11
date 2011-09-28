/*! http://mths.be/placeholder v1.8.5 by @mathias */
(function(g,a,$){var f='placeholder' in a.createElement('input'),b='placeholder' in a.createElement('textarea');if(f&&b){$.fn.placeholder=function(){return this};$.fn.placeholder.input=$.fn.placeholder.textarea=true}else{$.fn.placeholder=function(){return this.filter((f?'textarea':':input')+'[placeholder]').bind('focus.placeholder',c).bind('blur.placeholder',e).trigger('blur.placeholder').end()};$.fn.placeholder.input=f;$.fn.placeholder.textarea=b;$(function(){$('form').bind('submit.placeholder',function(){var h=$('.placeholder',this).each(c);setTimeout(function(){h.each(e)},10)})});$(g).bind('unload.placeholder',function(){$('.placeholder').val('')})}function d(i){var h={},j=/^jQuery\d+$/;$.each(i.attributes,function(l,k){if(k.specified&&!j.test(k.name)){h[k.name]=k.value}});return h}function c(){var h=$(this);if(h.val()===h.attr('placeholder')&&h.hasClass('placeholder')){if(h.data('placeholder-password')){h.hide().next().show().focus().attr('id',h.removeAttr('id').data('placeholder-id'))}else{h.val('').removeClass('placeholder')}}}function e(){var l,k=$(this),h=k,j=this.id;if(k.val()===''){if(k.is(':password')){if(!k.data('placeholder-textinput')){try{l=k.clone().attr({type:'text'})}catch(i){l=$('<input>').attr($.extend(d(this),{type:'text'}))}l.removeAttr('name').data('placeholder-password',true).data('placeholder-id',j).bind('focus.placeholder',c);k.data('placeholder-textinput',l).data('placeholder-id',j).before(l)}k=k.removeAttr('id').hide().prev().attr('id',j).show()}k.addClass('placeholder').val(k.attr('placeholder'))}else{k.removeClass('placeholder')}}}(this,document,jQuery));

jQuery(document).ready(function($) {
    // placeholder polyfill
    $('input, textarea').placeholder();
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
    var currPage = $('#primary-nav span').text();
    $("<option />", {
        "selected": "selected",
        "value"   : "",
        "text"    : currPage
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
