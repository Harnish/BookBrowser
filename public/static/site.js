

function Reindex() {
    var url = window.location.href;
    var arr = url.split("/");
    var result = arr[0] + "//" + arr[2];
    var xmlHttp = new XMLHttpRequest();
    xmlHttp.open( "GET", result + "/api/reindex" );
    xmlHttp.send( null  );
    location.reload();
}
