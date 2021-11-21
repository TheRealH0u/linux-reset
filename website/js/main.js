/*
<div class="form-check form-switch form-secondary">
    <input class="form-check-input" type="checkbox" id="pff-tools">
    <label class="form-check-label" for="pff-tools">pff-tools</label>
</div>
*/
$(document).ready(function () {
    console.log("Page ready!");
    $.getJSON('json/data.json', function (data) {
        $.each(data.programs, function (i, v) {
            $("#v-pills-programs").append(
                '<div class="form-check form-switch form-secondary"><input class="form-check-input programs" type="checkbox" name="programs" id="' + v.id + '"><label class="form-check-label" for="' + v.id + '">' + v.name + '</label></div>'
            );
            $("#" + v.id).data("install", v.install);
        });
    });
});
$(document).on('click', '.programs', function (e) {
    if ($(this).is(":checked")) {
        $("#script").text($("#script").text() + "\n" + $(this).data("install"));
    }
    else {
        $("#script").text($("#script").text().replace("\n"+$(this).data("install"), ""));
    }
    document.querySelector("#script").style.height = "1px";
    document.querySelector("#script").style.height = (25+document.querySelector("#script").scrollHeight)+"px";
});

function textAreaAdjust(element) {
    element.style.height = "1px";
    element.style.height = (25+element.scrollHeight)+"px";
  }