/**
 * Created by xiashuai on 2016/9/14.
 */
$(document).ready(function () {
    $('#summernote').summernote({
        lang : 'zh-CN',
        minHeight : 300,
        callbacks: {
            // onImageUpload的参数为files，summernote支持选择多张图片
            onImageUpload : function(files) {
                var $files = $(files);
                // 通过each方法遍历每一个file
                $files.each(function() {
                    var file = this;
                    // FormData，新的form表单封装，具体可百度，但其实用法很简单，如下
                    var data = new FormData();
                    // 将文件加入到file中，后端可获得到参数名为“file”
                    data.append("file", file);
                    // ajax上传
                    $.ajax({
                        url: 'rest/file/upload',
                        method: 'POST',
                        data: data,
                        processData: false,
                        contentType: false,
                        success: function(data) {
                            console.log("------>" + data.fileName);
                            $this.summernote('insertImage', data.fileName);

                        },
                        error: function(XMLHttpRequest, textStatus, errorThrown) {
                            alert(XMLHttpRequest.status);
                            alert(XMLHttpRequest.readyState);
                            alert(textStatus);
                        }
                    });
                });
            }
        }
    });
});
