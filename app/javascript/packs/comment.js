$(document).ready(function () {
    var flip = 0;
    alert(1)
    $(document).on('click', '.add-form-comment-btn', function () {
        console.log(1)
        var html = $('.comment-form').html();
        $('#micropost-' + $(this).data('micropost-id')).append(html);
        $('.input-comment').toggle(flip++ % 2 === 0);
    });

    $(document).on('click', '.comment-submit', function () {
        alert('234')
        $.ajax({
            url: '/comments/' + $(this).data().id,
            type: 'POST',
            data: {
                comment_content: $(this).data().comment_content,
            },
            dataType: 'JSON'
        }).done(function (data) { 
            location.reload();
        });
    });
});