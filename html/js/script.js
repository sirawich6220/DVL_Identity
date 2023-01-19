$(".container").hide();
window.addEventListener('message',function(e){
    if(e.data.action=='open'){
        $(".container").show();
    }else {
        $(".container").hide();
    }
});

$("#ok").click(function(){
    let fname=$("#fname").val();
    let lname=$("#lname").val();
    let bday=$("#bday").val();
    let sex=$("#sex").val();
    let height=$("#h").val();

    $("#fname").val('');
    $("#lname").val('');
    $("#bday").val('');
    $("#sex").val('');
    $("#h").val('');
    $.post('https://DVL_Identity/DVL_Identity:get_input',JSON.stringify({
        fn:fname,
        ln:lname,
        bd:bday,
        sex:sex,
        h:height
    }),{

})
    })