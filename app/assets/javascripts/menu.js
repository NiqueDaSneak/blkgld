	$(document).ready(function() {

$menuLeft = $('.pushmenu-left');
		$open_nav = $('.open-menu');
		$close_nav = $('.close-menu')
		

		$close_nav.css('display', 'none');

		// menu toggle
		
		$open_nav.click(function() {
			$(this).toggleClass('active');
			$('.pushmenu-push').toggleClass('pushmenu-push-toright');
			$menuLeft.toggleClass('pushmenu-open');
			$close_nav.css('display', 'inline');
					$open_nav.css('display', 'none');

		});

		$close_nav.click(function() {
			$(this).toggleClass('active');
			$('.pushmenu-push').toggleClass('pushmenu-push-toright');
			$menuLeft.toggleClass('pushmenu-open')
			$close_nav.css('display', 'none');
			$open_nav.css('display', 'inline');


		});
	});