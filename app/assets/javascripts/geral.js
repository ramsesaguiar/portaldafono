$(document).ready(function(){
	$("#enviar_newsletter").click(function(){
		email = $("#email_newsletter").val();
		if (isEmail(email) == true){
			envia_email_to_newsletter(email);
		}else{
			alert("Email inválido");
		}
	});


});


function isEmail(email){
    var exclude=/[^@\-\.\w]|^[_@\.\-]|[\._\-]{2}|[@\.]{2}|(@)[^@]*\1/;
    var check=/@[\w\-]+\./;
    var checkend=/\.[a-zA-Z]{2,3}$/;
    if(((email.search(exclude) != -1)||(email.search(check)) == -1)||(email.search(checkend) == -1)){return false;}
    else {return true;}
}

function envia_email_to_newsletter(email){
	$.ajax({
            url: "subscribe_to_newsletter",
            data:{ news_email: email} ,
            type: "POST", 
            cache: true, 
            dataType: "json", 
            beforeSend: function(){
                $('#newsletter-message').html("<div id='loading'>por favor, aguarde...</div>");
            }, 
            complete: function(){
                $("#loading").remove();
            },
            error: function(xhr, er){
                $('#newsletter-message').html('<p> Error: '+ xhr.status + '-' + xhr.statusText +  ' tipo de erro: ' + er + '</p>' );
            }, // Função a ser chamada quando retorna um erro na requisição
            success: function(data){
                $('#newsletter-message').html(data.message);
            }
        })
}