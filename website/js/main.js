/*
<div class="form-check form-switch form-secondary">
    <input class="form-check-input" type="checkbox" id="pff-tools">
    <label class="form-check-label" for="pff-tools">pff-tools</label>
</div>
*/
$( document ).ready(function() {
    console.log( "Page ready!" );
    $.getJSON('json/data.json', function (data) {
        $.each(data.programs, function(i, v) {
            $("#v-pills-programs").append(
                '<div class="form-check form-switch form-secondary"><input onchange="programsBox()" class="form-check-input programs" type="checkbox" name="programs" id="'+v.name+'"><label class="form-check-label" for="'+v.name+'">'+v.name+'</label></div>'
            );
            $("#"+v.name).data("install", v.install);
        });
    });
    $("#v-pills-programs .form-check :checkbox").change(function () {
        if ($(this).is(":checked"))
            console.log("checked Score: " + $(this).data("install"));
        else
            console.log("not checked Score: " + $(this).data("install"));
    });
});
function programsBox(){
    $("#v-pills-programs .form-check :checkbox").change(function () {
        if ($(this).is(":checked"))
            console.log("checked Score: " + $(this).data("install"));
        else
            console.log("not checked Score: " + $(this).data("install"));
    });
};