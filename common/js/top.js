// slick
document.write('<script type="text/javascript" src="/common/js/slick/slick.min.js"></script>');
document.write('<link rel="stylesheet" href="/common/js/slick/slick.css" type="text/css">');

$(function() {

	$('#voice_slide').slick({
		autoplay: true,
		dots: false,
		infinite: true,
		autoplaySpeed: 3000,
		slidesToShow: 2,
		slidesToScroll: 1,
		responsive: [
			{ breakpoint: 576,
			  settings: {
					slidesToShow: 1
				}
			}
		]
	});

});
