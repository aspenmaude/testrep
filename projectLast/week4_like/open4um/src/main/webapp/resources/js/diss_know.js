window.onload = function (){
    var status = document.getElementById('post-status');
    status.addEventListener('click', showpost);
    var search = document.getElementById('searchi').style.display = 'none';

}


var commentinp = document.getElementById('comment-inp');
commentinp.addEventListener('click',showbutton);

function showbutton(){
    var button = document.getElementById('show-button');
    if(button.style.display == 'none'){
        button.style.display = 'block';
    }else{
        button.style.display = 'block';
    }
}

var reply = document.getElementById('reply');
reply.addEventListener('click',showreply);

function showreply (){
    var replycomment = document.getElementById('reply-comment');
    if (replycomment.style.display == 'none'){
        replycomment.style.display = 'block';
    }else{
        replycomment.style.display = 'block'; 
    }
}

function showpost(){
    var framespost = document.getElementById('frames-postid');
    var posts = document.getElementById('posts');

    if (framespost.style.display == 'none')
    {
        framespost.style.display = 'block';
        posts.style.marginTop = '210px';
    }
    else
    {
        framespost.style.display = 'none';
    }
}

function updatelike(id) {
	$.ajax({
		url: "/open4um/forum/updatelikeajax/",
		type: 'POST',
		contentType: "application/json",
		dateType: 'json',
		data: JSON.stringify(id),
		success: function(data) {
			console.log(data);
			$("#resultlike-" + id).html(data + " Thích");
		}
	});
}

