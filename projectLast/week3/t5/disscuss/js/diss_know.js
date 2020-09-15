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
