var gameIds="", drops=0;
for (i=0; i<document.getElementsByClassName("btn_green_white_innerfade").length; i++) {
	gameIds+=document.getElementsByClassName("btn_green_white_innerfade")[i].parentNode.parentNode.parentNode.parentNode.parentNode.childNodes[1].href.split("/gamecards/")[1].replace("/","")+"<br>";
	drops+=Number(document.getElementsByClassName("btn_green_white_innerfade")[i].parentNode.parentNode.childNodes[3].childNodes[3].childNodes[1].textContent.split(" ")[0]);
}
document.write("DROPS: "+drops+", GAMES:"+document.getElementsByClassName("btn_green_white_innerfade").length+"<br><br>----GAME IDS----<br>"+gameIds); document.body.style.fontFamily="Lucida Console, monospace";
