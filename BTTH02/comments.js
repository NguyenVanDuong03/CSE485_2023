$(document).ready(function(){ 
	$('#commentForm').on('submit', function(event){
		event.preventDefault();
		var formData = $(this).serialize();
		$.ajax({
			url: "comments.php",
			method: "POST",
			data: formData,
			dataType: "JSON",
			success:function(response) {
				if(!response.error) {
					$('#commentForm')[0].reset();
					$('#commentId').val('0');
					$('#message').html(response.message);
					showComments();
				} else if(response.error){
					$('#message').html(response.message);
				}
            }
		})
	});	
});

// 1.5 Sửa tệp comments.js để bổ sung hiển thị bình luận với Ajax
function showComments() {
	$.ajax({
		url:"show_comments.php",
		method:"POST",
		success:function(response) {
			$('#showComments').html(response);
		}
	})
}
