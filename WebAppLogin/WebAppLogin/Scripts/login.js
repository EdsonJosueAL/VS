﻿
function ShowCurrentTime() {
    $.ajax({
        type: "POST",
        url: "Login.aspx/GetCurrentTime",
        data: '{name: "' + $("#<%=txtUserName.ClientID%>")[0].value + '" }',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: OnSuccess,
        failure: function (response) {
            alert(response.d);
        }
    });
}

function OnSuccess(response) {
    alert(response.d);
}