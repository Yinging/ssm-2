/**
 * Created by xiashuai on 2016/9/30.
 */
$(document).ready(function () {

    $('#sure').click(function () {
        commit();
    });

});

function onDelete() {
    var value = $('#delete').val();
    console.log("delete value:" + value);
    $('#to_delete').val(value);
}

function commit() {
    var value = $('#to_delete').val();
    alert(value);
    console.log("value:" + value);

}
