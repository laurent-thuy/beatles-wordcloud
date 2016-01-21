var tags;

$(document).ready(function() {
	tags = songs[0];

	$("li#refresh").click(function() {
		update();
	});

	$("li#next").click(function() {
		var index = Math.floor((Math.random() * songs.length - 1) + 1);
		tags = songs[index];
		console.log(songs[index][0]["key"]);
		$("#vis").fadeOut("slow");
		$("#vis svg g").empty();
		$("#vis").fadeIn("slow");
		update();
		
	});

	
	update();
});