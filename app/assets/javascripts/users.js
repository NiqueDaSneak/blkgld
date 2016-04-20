$(document).ready(function() {

	getLocation();

	function getLocation() {
		if (navigator.geolocation) {
			// console.log('inside if logic');
			navigator.geolocation.getCurrentPosition(insertCoords);
		} else {
			$('.login-error').innerHTML = "Please use a device with location services.";
		}
	}


	function insertCoords(position) {
		$('.latitude').val(position.coords.latitude);
		$('.longitude').val(position.coords.longitude);
// console.log(position.coords.latitude);
// console.log(position.coords.longitude);
}


});