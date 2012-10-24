$(document).ready(function(){
    $.featureList(
        $("#feature_tabs li"),
        $("#feature_output li"), 
        {
            start_item : 0,
            transition_interval: 5000
        }
    );

    $('textarea').autosize({append: "\n"});

	$("#enviar_newsletter").click(function(){
		email = $("#email_newsletter").val();
		if (isEmail(email) == true){
			envia_email_to_newsletter(email);
		}else{
			alert("Email inválido");
		}
	});

    $(".dropdown li").hover(function(){
        var dropDown = $(this).children("ul");
        var ulWidth = dropDown.width();
        var liWidth = $(this).width();
        var posLeft = (liWidth - ulWidth)/2;
        dropDown.css("left",posLeft);       
    }); 

    $("ul.tabs").tabs("> .tabcontent", {
        tabs: 'li', 
        effect: 'fade'
    });
    
    $(".recent_posts li:odd").addClass("odd");
    $(".row .col:first-child").addClass("alpha");
    $(".row .col:last-child").addClass("omega");     
    $(".toggle_content").hide(); 
    
    $("h3.toggle").toggle(function(){
        $(this).addClass("active");
        }, function () {
        $(this).removeClass("active");
    });
    
    $("h3.toggle").click(function(){
        $(this).next(".toggle_content").slideToggle();
    });
    
    $(".table-price tr:even").addClass("even");



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