import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }


$(document).ready(function () {
    var flip1 = 0;
    $(document).on('click', '.add-form-comment-btn', function () {
        var html = $('.comment-form').html();
        $('#micropost-' + $(this).data('micropost-id')).append(html);
        $('.input-comment').toggle(flip1++ % 2 === 0);
    });


    $(document).on('click', '.comment-submit', function () {
        // lay id bai post
        var micropostId = $(this).closest(".microposts").data("id");
        //lay noi dung input
        var content = $(this).siblings(".comment-content").val();

        $.ajax({
            url: '/comments',
            type: 'POST',
            data: {
                comment: {
                    micropost_id: micropostId,
                    comment_content: content
                }
            },
            dataType: 'JSON',
            success: function (data) {
                // appendText(data.comment.comment_content, micropostId)
                location.reload();
            }
        })
    });

    function appendText(text, micropostId) {
        var txt1 = "<p>"+ text +"</p>";
        $('.comments-' + micropostId).append(txt1);
    }
});