$(document).ready(function () {
	setBackgroundElement()
	//Declare normal variable javascript
	//Hide element when smaller than 1025
	// $.fancybox.defaults.parentEl = "form";
	if ($(window).width() < 1025) {
		$(".main-menu-nav").fadeIn(function () {
			$(".main-menu-nav").css({
				display: "flex",
			});
		});
	}
	//Library Base function
	$('[data-fancybox=""]').fancybox({
		smallBtn: true,
		toolbar: true,
		type: "html",
		clickSlide: "toggleControls",
	});
	AOS.init({
		// Global settings:
		disable: function () {
			var maxWidth = 1024.1;
			return window.innerWidth < maxWidth;
		},
		offset: 120, // offset (in px) from the original trigger point
		delay: 0, // values from 0 to 3000, with step 50ms
		duration: 700, // values from 0 to 3000, with step 50ms
		easing: 'ease', // default easing for AOS animations
		once: true, // whether animation should happen only once - while scrolling down
		mirror: false, // whether elements should animate out while scrolling past them
		anchorPlacement: 'top-bottom', // defines which position of the element regarding to window should trigger the animation

	});
	mappingMenu();
	mappingMenuTop();
	mappingSearch();
	mapppingButton();
	try {
		stickyNav();
	} catch (error) {}

	tabActive();
	toggleMobileMenu();
	// toggleWatchMore();
	toggleSearch();
	swiperInit();
	backToTop();
	setBackground();

	//Declare NEW function Javascript
});

function toggleSearch() {
	$(".search-toggle").on("click", function (e) {
		$(".searchbox").toggleClass("active");
		e.stopPropagation();
	});
}

function backToTop() {
	let btn = $(".back-to-top");
	btn.on("click", function (e) {
		e.preventDefault();
		$("html, body").animate({
				scrollTop: 0
			},
			"300"
		);
	});
}

// set Background
function setBackgroundElement() {
	$('[setBackground]').each(function () {
		var background = $(this).attr('setBackground')
		$(this).css({
			"background-image": "url(" + background + ")",
			"background-size": "cover",
			"background-position": "center center"
		})
	})
	$('[setBackgroundRepeat]').each(function () {
		var background = $(this).attr('setBackgroundRepeat')
		$(this).css({
			"background-image": "url(" + background + ")",
			"background-repeat": "repeat"
		})
	})
}

function swiperInit() {
	var homerSwiper = new Swiper(".primary-banner .swiper-container", {
		// Optional parameters
		lazy: true,
		slidesPerView: 1,
		speed: 1205,
		autoplay: {
			delay: 3000
		},
	});
	var topBanner = new Swiper(".top-banner .swiper-container", {
		// Optional parameters
		lazy: true,
		speed: 1205,
		slidesPerView: 1,
		autoplay: {
			delay: 3000
		}
	});
	var bottomBanner = new Swiper(".home-new-day .swiper-container", {
		// Optional parameters
		speed: 1205,
		lazy: true,
		slidesPerView: 1,
		effect: 'fade',
		fadeEffect: {
			crossFade: true
		},
		autoplay: {
			delay: 3000
		}
	});
	var accomodationSwiper = new Swiper(".home-accommodation-swiper .swiper-container", {
		// Optional parameters
		speed: 1205,
		lazy: true,
		slidesPerView: 1,
		effect: 'fade',
		fadeEffect: {
			crossFade: true
		},
		autoplay: {
			delay: 3000
		}
	});

	var accomodationOtherSwiper = new Swiper(".accomodation-other .swiper-container", {
		// Optional parameters
		speed: 1205,
		lazy: true,
		breakpointsInverse: true,
		breakpoints: {
			200: {
				slidesPerView: 1,
			},
			400: {
				slidesPerView: 2,
			}
		},
		spaceBetween: 1,
		autoplay: {
			delay: 3000
		}
	});

	var homeDiscount = new Swiper(".home-swiper-discount .swiper-container", {
		// Optional parameters
		speed: 1205,
		spaceBetween: 30,
		breakpointsInverse: true,
		breakpoints: {
			200: {
				slidesPerView: 1,
			},
			400: {
				slidesPerView: 2,
			}
		},
		lazy: true,
		autoplay: {
			delay: 3000
		},
		navigation: {
			nextEl: ".home-swiper-discount .nav-arrow-next",
			prevEl: ".home-swiper-discount .nav-arrow-prev"
		}
	});
	var wellnessDetail = new Swiper(".wellness_detail-3 .swiper-container", {
		// Optional parameters
		speed: 1205,
		spaceBetween: 30,
		breakpointsInverse: true,
		breakpoints: {
			200: {
				slidesPerView: 1,
			},
			400: {
				slidesPerView: 2,
			}
		},
		lazy: true,
		autoplay: {
			delay: 3000
		},
		navigation: {
			nextEl: ".wellness_detail-3  .swiper-button-next",
			prevEl: ".wellness_detail-3  .swiper-button-prev"
		}
	});




	$(" .trinity-item-swiper .swiper-container").each(function (index, element) {
		var $this = $(this);
		$this.addClass("instance-" + index);
		$this.parent().find(".nav-arrow-prev").addClass("btn-prev-" + index);
		$this.parent().find(".nav-arrow-next").addClass("btn-next-" + index);

		var swiper = new Swiper(".instance-" + index, {
			speed: 750,
			observer: true,
			spaceBetween: 30,
			observeParents: true,
			lazy: true,
			breakpointsInverse: true,
			breakpoints: {
				200: {
					slidesPerView: 1,
				},
				400: {
					slidesPerView: 2,
				},
				769: {
					slidesPerView: 2,
				},
				1200: {
					slidesPerView: 3,
				},
			},
			navigation: {
				nextEl: ".btn-next-" + index,
				prevEl: ".btn-prev-" + index
			}

		});
	});
	$(".single-swiper .swiper-container").each(function (index, element) {
		var $this = $(this);
		$this.addClass("instance-" + index);
		$this.parent().find(".nav-arrow-prev").addClass("btn-prev-" + index);
		$this.parent().find(".nav-arrow-next").addClass("btn-next-" + index);

		var swiper = new Swiper(".instance-" + index, {
			speed: 750,
			observer: true,
			observeParents: true,
			lazy: true,
			breakpointsInverse: true,
			slidesPerView: 1,
			speed: 1205,
			autoplay: {
				delay: 3000
			},

			navigation: {
				nextEl: ".btn-next-" + index,
				prevEl: ".btn-prev-" + index
			}

		});
	});
	var galleryThumbs = new Swiper('.gallery-thumbs', {
		spaceBetween: 20,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		breakpointsInverse: true,
		breakpoints: {
			200: {
				slidesPerView: 2,
			},
			400: {
				slidesPerView: 3,
			},
			767: {
				slidesPerView: 4,
			},
			1200: {
				slidesPerView: 5,
			},
		},
	});
	var galleryTop = new Swiper('.swiper-top-wrap .swiper-container', {
		spaceBetween: 20,
		slidesPerView: 1,
		navigation: {
			nextEl: '.accomodation-detail .nav-arrow-next',
			prevEl: '.accomodation-detail .nav-arrow-prev',
		},
		thumbs: {
			swiper: galleryThumbs,
		},
	});
}
// Thumbnail


// Slide Specialoffers

var swiper = new Swiper('.Slide-special-detail.swiper-container', {
	slidesPerView: 3,
	spaceBetween: 30,
	slidesPerGroup: 1,
	loop: true,
	loopFillGroupWithBlank: true,
	pagination: {
	  el: '.swiper-pagination',
	  clickable: true,
	},
	navigation: {
	  nextEl: '.lnr-arrow-next',
	  prevEl: '.lnr-arrow-prev',
	},
	breakpoints: {
		576: {
			slidesPerView: 1,
		},
		992: {
			slidesPerView: 2,
		}
	}
  });


//Mapping

function mappingMenu() {
	return new MappingListener({
		selector: ".header-bottom",
		mobileWrapper: ".mobile-wrapper",
		mobileMethod: "appendTo",
		desktopWrapper: ".header-top",
		desktopMethod: "insertAfter",
		breakpoint: 1025,
	}).watch();
}

function mappingMenuTop() {
	return new MappingListener({
		selector: ".nav-primary-top",
		mobileWrapper: ".mobile-wrapper",
		mobileMethod: "appendTo",
		desktopWrapper: ".nav-top-wrapper",
		desktopMethod: "appendTo",
		breakpoint: 1025
	}).watch();
}

function mappingSearch() {
	return new MappingListener({
		selector: ".search-wrapper",
		mobileWrapper: ".mobile-wrapper",
		mobileMethod: "appendTo",
		desktopWrapper: ".language-wrapper",
		desktopMethod: "insertBefore",
		breakpoint: 1025,
	}).watch();
}

function mapppingButton() {
	return new MappingListener({
		selector: ".btn-wrap-reservation",
		mobileWrapper: ".mobile-wrapper",
		mobileMethod: "appendTo",
		desktopWrapper: ".language-wrapper",
		desktopMethod: "insertAfter",
		breakpoint: 1025,
	}).watch();
}

//Toggle Plugin

function toggleItem() {
	$(".toggle-item > .title").click(function (e) {
		e.preventDefault();
		if (!$(this).parent().hasClass("active")) {
			$(".toggle-item .content").slideUp();
			$(this).next().slideToggle();
			$(".toggle-item").removeClass("active");
			$(this).parent().addClass("active");
		} else {
			$(this).next().slideToggle();
			$(".toggle-item").removeClass("active");
		}
	});
}

//Toggle mobile menu

function toggleMobileMenu() {
	var $hamburger = $(".hamburger");
	$(".main-menu-toggle").on("click", function () {
		$(".mobile-wrapper").toggleClass("active");
		$hamburger.toggleClass("is-active");
	});
}

//Sticky navigation
function setBackground() {
	$("[setBackground]").each(function () {
		var background = $(this).attr("setBackground");
		$(this).css({
			"background-image": "url(" + background + ")",
			"background-size": "cover",
			"background-position": "center center",
		});
	});
	$("[setBackgroundRepeat]").each(function () {
		var background = $(this).attr("setBackgroundRepeat");
		$(this).css({
			"background-image": "url(" + background + ")",
			"background-repeat": "repeat",
		});
	});
}
function stickyNav() {
	if ($(".sticky-nav").length) {
		$(".sticky-nav").scrollToFixed({
			zIndex: 99,
			marginTop: $("header").outerHeight(),
		});
		$(".sticky-nav a").on("click", function (event) {
			if (this.hash !== "") {
				let offset =
					$("header").outerHeight() + $(".sticky-nav").outerHeight();
				var hash = this.hash;
				$(".sticky-nav li").removeClass("active");
				$(this).parent().addClass("active");
				$("html, body").animate({
						scrollTop: $(hash).offset().top - offset,
					},
					800,
					function () {
						window.location.hash = hash;
					}
				);
			} // End if
		});
	}
}

//Tab active

function tabActive() {
	$(".tab-navigation li a").on("click", function () {
		$(this).parents(".tab-navigation").find("li").removeClass("active");
		$(this).parents("li").addClass("active");

		var display = $(this).attr("data-type");
		$(".tab-item").removeClass("active");
		$("#" + display).addClass("active");
	});
}

// Side
