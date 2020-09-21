const id_user = document.getElementById("userid").value;

window.onload = function () {
    if(id_user == "") {
        window.location = "./open4um";
    }
    var arr = window.location.href.split("/");
    if(arr.length == 7) {
        fetch('http://localhost:8080/open4um/api/report-comment', {
            method: 'POST',
            body: arr[arr.length - 1],
            headers: {
                'Content-Type': 'application/json'
            }
        })
        .then(response => response.json())
        .then(data => {
            document.getElementById("id_report_content_name").innerHTML = data.cmtname;
        })
        .catch(error => console.error(error));
    }
    if(arr.length == 6) {
        fetch('http://localhost:8080/open4um/api/report-product', {
            method: 'POST',
            body: arr[arr.length - 1],
            headers: {
                'Content-Type': 'application/json'
            }
        })
        .then(response => response.json())
        .then(data => {
            document.getElementById("id_report_content_name").innerHTML = data.content;
        })
        .catch(error => console.error(error));
    }
}

function addReport(){
    var arr = window.location.href.split("/");
    
    var id_reportname = document.getElementById("id_user_report_content").value;
    var id_userid = id_user;
    var m = new Date();
    var date = m.getUTCFullYear() + "-" +
    ("0" + (m.getUTCMonth()+1)).slice(-2) + "-" +
    ("0" + m.getUTCDate()).slice(-2) + " " +
    ("0" + m.getHours()).slice(-2) + ":" +
    ("0" + m.getMinutes()).slice(-2) + ":" +
    ("0" + m.getSeconds()).slice(-2);
    var id_reportdate = date;
    var id_productid = 0;
    var id_cmtid = 0;
    if(arr.length == 6) {
        id_productid = arr[arr.length - 1];
    }
    if(arr.length == 7) {
        id_cmtid = arr[arr.length - 1];
    }

    fetch('http://localhost:8080/open4um/api/add-report', {
        method: 'POST',
        body: JSON.stringify({
            reportname: id_reportname,
            userid: id_userid,
            productid: id_productid,
            reportdate: id_reportdate,
            cmtid: id_cmtid
        }),
        headers: {
            'Content-Type': 'application/json'
        }
    })
        .then(response => response.json())
        .then(data => {
            if(data == true) {
                document.getElementById("id_report_content_name").innerHTML = "Báo cáo thành công";
            }
        })
        .catch(error => console.error(error));

}