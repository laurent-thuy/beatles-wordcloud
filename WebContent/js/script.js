var tags;

$(document).ready(function() {
	tags = songs[0];

	$(".navbar-right li a#refresh").click(function() {
		update();
	});

	$(".navbar-right li a#next").click(function() {
		var index = Math.floor((Math.random() * songs.length - 1) + 1);
		tags = songs[index];
		console.log(songs[index][0]["key"]);
		$("#vis").fadeOut("slow");
		$("#vis svg g").empty();
		$("#vis").fadeIn("slow");
		update();
	});

	update();
	$("footer").show();
});
