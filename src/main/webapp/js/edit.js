/**
 * Created by xiashuai on 2016/9/14.
 */
$(document).ready(function () {
    $('#summernote').summernote({
        lang : 'zh-CN',
        minHeight : 300,
        callbacks : {
            onImageUpload : function(files) {
                var $files = $(files);
                $files.each(function() {
                    var file = this;
                    var data = new FormData();
                    data.append("file", file);
                    $.ajax({
                        data : data,
                        type : "POST",
                        url : "rest/file/upload",
                        cache : false,
                        contentType : false,
                        processData : false,
                        success : function(response) {
                            var json = jsonEval(response);
                            console.log("-------->" + json["fileName"]);
                            $('#summernote').summernote('insertImage', json["fileName"]);
                        },
                        error : console.log("-------->error!")//YUNM.ajaxError
                    });
                });
            }
        }
    });

    $('#commit').click(function () {
        commit();
    });
});

function commit(){
    var urlname = $('#urlname').val();
    var title = $('#title').val();
    var content =  $('#summernote').summernote('code');;
    console.log("urlname:" + urlname);
    console.log("title:" + title);
    console.log("content:" + content);
    $.post("rest/blog/insert", { urlname: urlname, title: title, content: content},
        function(data){
            window.location.href = "rest/index";
        });
}

function jsonEval(data) {
    try {
        if ($.type(data) == 'string')
            return eval('(' + data + ')');
        else
            return data;
    } catch (e) {
        return {};
    }
}


