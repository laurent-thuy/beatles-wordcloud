$(document).ready(
		function() {

			var title;
			var songWords;
			var songFreq;
			var w = window.innerWidth;
			var h = window.innerHeight / 1.1;
			var colorVariant;
			var fill;

			function makeCloud() {
				d3.layout.cloud().size([ w, h ]).words(
						songWords.map(function(d, index) {
							return {
								text : d,
								size : (songFreq[index] * 2.5) + 40
							}
						})).rotate(function() {
					return ~~(Math.random() * 2) * 90;
				}).font("Verdana").fontSize(function(d) {
					return d.size;
				}).on("end", draw).start();
			}

			function draw(words) {
				console.log(fill);
				d3.select("section").append("svg").attr("width", w).attr(
						"height", h).append("g").attr("transform",
						"translate(" + [ w >> 1, h >> 1 ] + ")").selectAll(
						"text").data(words).enter().append("text").style(
						"font-size", function(d) {
							return d.size + "px";
						}).style("font-family", "Verdana").style("fill",
						function(d, i) {
							return fill(i);
						}).attr("text-anchor", "middle").attr(
						"transform",
						function(d) {
							return "translate(" + [ d.x, d.y ] + ")rotate("
									+ d.rotate + ")";
						}).text(function(d) {
					return d.text;
				});
			}

			function update() {
				$("section").fadeOut("fast", function() {
					$("section").empty();
					makeCloud();
					$("section").fadeIn("fast");
				});
			}

			function setSong() {
				var index = Math
						.floor((Math.random() * songs.songs.length - 1));
				title = songs.songs[index].title;
				songWords = songs.songs[index].words;
				songFreq = songs.songs[index].freq;
			}

			function setColor() {
				var ColorCategory = pickRandomProp(colorbrewer);
				colorVariant = pickRandomProp(ColorCategory);
				fill = d3.scale.ordinal().domain([ "foo", "bar", "baz" ])
						.range(colorVariant);
			}

			function pickRandomProp(obj) {
				var keys = Object.keys(obj)
				return obj[keys[keys.length * Math.random() << 0]];
			}

			// update cloud if screen resize
			$(window).resize(function() {
				w = window.innerWidth;
				h = window.innerHeight / 1.1;
				update();
			});

			$(".next").click(function() {
				setColor();
				setSong()
				update();
			});

			$("#reveal").click(function() {
				var answerElement = $("#answer");
				answerElement.text(title);
				answerElement.fadeIn("slow", function() {
					answerElement.fadeOut("slow", function() {
						answerElement.text("");
					});
				});

			});

			// fold collapsible if open
			$(".nav.navbar-nav.navbar-right li a").click(function() {
				if ($(".navbar-collapse.collapse").hasClass("in")) {
					$(".navbar-collapse.collapse").collapse('toggle');
				}
			});

			// make initial cloud
			setColor();
			setSong();
			makeCloud();
			$("footer").show();
		});
