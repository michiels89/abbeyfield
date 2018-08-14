jQuery(document).ready(function(){
	jQuery('.addthis_button').addClass("share");
	
	jQuery(".faq_holder > div > a").click(function(event) {
		event.preventDefault();
		jQuery(this).closest("div").toggleClass("active");
	});
});