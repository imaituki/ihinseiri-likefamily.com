$(function(){
	function attrLatLngFromAddress(address){
		var geocoder = new google.maps.Geocoder();
		geocoder.geocode({'address': address}, function(results, status){
			if(status == google.maps.GeocoderStatus.OK) {
				var lat = results[0].geometry.location.lat();
				var lng = results[0].geometry.location.lng();
				// 小数点第六位以下を四捨五入した値を緯度経度にセット、小数点以下の値が第六位に満たない場合は0埋め
				document.getElementById("latitude").value = (Math.round(lat * 1000000) / 1000000).toFixed(6);
				document.getElementById("longitude").value = (Math.round(lng * 1000000) / 1000000).toFixed(6);
			}
		});
	}

	$('#attrLatLng').click(function(){
		var address1 = document.getElementById("address").value;
		var address  = address1;
		attrLatLngFromAddress(address);
	});
});
