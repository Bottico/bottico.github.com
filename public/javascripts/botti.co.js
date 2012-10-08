$(document).on('ready', function(){

	mixpanel.track("Pagina cargada", {
		"url": window.location.href
	});
});