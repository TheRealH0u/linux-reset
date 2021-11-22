$(document).ready(function() {
    console.log("Page ready!");
    $.getJSON('json/data.json', function(data) {
        $.each(data, function(itemName, item) {
            $.each(item, function(i, category) {
                $("#v-pills-" + itemName).append('<hr style="margin: 5px 0"><span style="margin-bottom: 10px" class="badge bg-primary">' + category.name + '</span>');
                $.each(category.programs, function(i, v) {
                    $("#v-pills-" + itemName).append(
                        '<div class="form-check form-switch form-secondary"><input class="form-check-input ' + itemName + '" type="checkbox" name="' + itemName + '" id="' + v.id + '"><label class="form-check-label" for="' + v.id + '">' + v.name + '</label></div>'
                    );
                    $("#" + v.id).data("install", v.install);
                });
            });
        });
    });
});

$(document).on('click', '.programs, .services, .tools, .miscs', function(e) {
    if ($(this).is(":checked")) {
        $("#script").text($("#script").text() + "\n" + $(this).data("install"));
    } else {
        $("#script").text($("#script").text().replace("\n" + $(this).data("install"), ""));
    }
    document.querySelector("#script").style.height = "1px";
    document.querySelector("#script").style.height = (25 + document.querySelector("#script").scrollHeight) + "px";
});

$(document).on('focusout', '.dir', function() {
    $("#script").text($("#script").text().replace(/\$dir=(.*)/g, "$dir=/home/" + $(".dir").val()));
})

function textAreaAdjust(element) {
    element.style.height = "1px";
    element.style.height = (25 + element.scrollHeight) + "px";
}

function upgrade(e, name) {
    if ($(e).is(":checked")) {
        $("#script").text($("#script").text().replace("#" + name, "sudo apt " + name + " -y"));
    } else {
        $("#script").text($("#script").text().replace("sudo apt " + name + " -y", "#" + name));
    }
}

function copy(e) {
    $("#script").select();
    document.execCommand("copy");
}

function download(e) {
    var downloadableLink = document.createElement('a');
    downloadableLink.setAttribute('href', 'data:text/plain;charset=utf-8,' + encodeURIComponent($("#script").val()));
    downloadableLink.download = "update.sh";
    document.body.appendChild(downloadableLink);
    downloadableLink.click();
    document.body.removeChild(downloadableLink);
}