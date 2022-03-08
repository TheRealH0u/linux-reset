var $j = jQuery.noConflict();

$j(document).ready(function() {
    $j.getJSON('json/data.json', function(data) {
        $j.each(data, function(itemName, item) {
            $j.each(item, function(i, category) {
                $j("#v-pills-" + itemName).append('<hr style="margin: 5px 0"><span style="margin-bottom: 10px" class="badge bg-primary">' + category.name + '</span>');
                $j.each(category.programs, function(i, v) {
                    $j("#v-pills-" + itemName).append(
                        '<div class="form-check form-switch form-secondary"><input class="form-check-input ' + itemName + '" type="checkbox" name="' + itemName + '" id="' + v.id + '"><label class="form-check-label" for="' + v.id + '">' + v.name + '</label>&nbsp;<label tabindex="0" class="far fa-question-circle" role="button" data-bs-toggle="popover" data-bs-trigger="hover" title="' + v.name + '" data-bs-content="' + v.description + '"></label></div>'
                    ); //data-toogle="tooltip" title="awd" data-bs-trigger="focus"
                    $j("#" + v.id).data("install", v.install);
                });
                var popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'))
                popoverTriggerList.map(function(popoverTriggerEl) {
                    return new bootstrap.Popover(popoverTriggerEl, { trigger: 'hover' })
                })
                console.log("loaded");
            });
        });
    });
});

$j(document).on('click', '.programs, .services, .tools, .miscs', function(e) {
    if ($j(this).is(":checked")) {
        $j("#script").text($j("#script").text() + "\n" + $j(this).data("install"));
    } else {
        $j("#script").text($j("#script").text().replace("\n" + $j(this).data("install"), ""));
    }
    document.querySelector("#script").style.height = "1px";
    document.querySelector("#script").style.height = (25 + document.querySelector("#script").scrollHeight) + "px";
});

$j(document).on('focusout', '#directoryName', function() {
    $j("#script").text($j("#script").text().replace(/\$dir=(.*)/g, "$dir=/home/" + $j(".dir").val()));
})

function textAreaAdjust(element) {
    element.style.height = "1px";
    element.style.height = (25 + element.scrollHeight) + "px";
}

function upgrade(e, name) {
    if ($j(e).is(":checked")) {
        $j("#script").text($j("#script").text().replace("#" + name, "sudo apt " + name + " -y"));
    } else {
        $j("#script").text($j("#script").text().replace("sudo apt " + name + " -y", "#" + name));
    }
}

function copy(e) {
    $j("#script").select();
    document.execCommand("copy");
}

function download(e) {
    var downloadableLink = document.createElement('a');
    downloadableLink.setAttribute('href', 'data:text/plain;charset=utf-8,' + encodeURIComponent($j("#script").val()));
    downloadableLink.download = "update.sh";
    document.body.appendChild(downloadableLink);
    downloadableLink.click();
    document.body.removeChild(downloadableLink);
}