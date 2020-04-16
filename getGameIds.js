var game_ids="";
for (i=0; i<document.getElementsByClassName("btn_green_white_innerfade").length; i++) {
	game_ids+=document.getElementsByClassName("btn_green_white_innerfade")[i].parentNode.parentNode.parentNode.parentNode.parentNode.childNodes[1].href.split("/gamecards/")[1].replace("/","")+"\n";
}
console.log(game_ids);
