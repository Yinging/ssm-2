/**
 * Created by xiashuai on 2016/9/21.
 */
$(document).ready(function () {

    $('#commit').click(function () {
        commit();
    });
});

function commit() {
    var username = $('#username').val().trim();
    var password = $('#password').val().trim();
    console.log("username: " + username);
    console.log("password: " + password);
    if(username == ''){
        alert("请输入用户名");
        return;
    }
    if(password == ''){
        alert("请输入密码");
        return;
    }
    $.post("rest/user/login", {username: username, password: password},
        function (data) {
            console.log("data: " + data);
            if(data == '1'){
                alert('用户名或密码错误！');
            }else if(data == '0'){
                window.location.href = "rest/blog/edit";
            }else {
                alert('未知错误');
            }
        });
}