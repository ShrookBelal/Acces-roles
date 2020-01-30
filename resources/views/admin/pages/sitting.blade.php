@extends('layouts.admin')
@section('content')
<div class="row match-height">
		<div class="col-md-12">
			<div class="card">
				<div class="card-header">
					<div class="card-title-wrap bar-warning">
						<h4 class="card-title" id="basic-layout-form-center">Setting Form</h4>
					</div>
				</div>
				<div class="card-body">
					<div class="px-3">
						<form class="form" method="post" action="{{url('settingupdate')}}/{{ $s->id }}">
						@csrf
							<div class="row justify-content-md-center">
								<div class="col-md-10">
									<div class="form-body">
                                    <div class="form-group">
											<label for="eventInput4">Contact Email</label>
											<input type="email" value="{{$s->contact_email }}" class="form-control" name="emailContact">
										</div>
										<div class="form-group">
											<label for="eventInput4">Email</label>
											<input type="email" value="{{$s->email }}" class="form-control" name="email">
										</div>
										<div class="form-group">
											<label for="eventInput1">Facebook</label>
											<input type="text" value="{{$s->facebook }}" class="form-control" name="facebook">
										</div>

										<div class="form-group">
											<label for="eventInput2">Linkedin</label>
											<input type="text" value="{{$s->linkedin }}" class="form-control" name="linked">
										</div>

										<div class="form-group">
											<label for="eventInput3">Youtube</label>
											<input type="text" value="{{$s->youtube }}" class="form-control" name="youtube">
										</div>
                                        <div class="form-group">
											<label for="eventInput3">Instgram</label>
											<input type="text" value="{{$s->instgram }}" class="form-control" name="instgram">
										</div>
										<div class="form-group">
											<label for="eventInput3">Snapchat</label>
											<input type="text" value="{{$s->snapchat  }}" class="form-control" name="snapchat">
										</div>

                                        <div class="form-group">
											<label for="eventInput3">Twitter</label>
											<input type="text" value="{{$s->twitter  }}" class="form-control" name="twitter">
										</div>

										<div class="form-group">
											<label for="eventInput5">Telephone</label>
											<input type="tel" value="{{$s->telphone }}" class="form-control" name="telephone">
										</div>

                                        <div class="form-group">
											<label for="eventInput5">Mobile</label>
											<input type="tel" value="{{$s->twitter }}" class="form-control" name="mobile">
										</div>

                                        <div class="form-group">
									          <label for="issueinput5">Default Language</label>
									            <select id="issueinput5" name="language" class="form-control" data-toggle="tooltip" data-trigger="hover" data-placement="top" data-title="Priority">
										            <option value="en">English</option>
										            <option value="ar">Arabic</option>
									            </select>
								        </div>

                                        <div class="form-group">
											<label for="eventInput5">Points Rating</label>
											<input type="number" value="{{$s->point_rating }}" class="form-control" name="rating">
										</div>
                                        <div class="form-group">
											<label for="eventInput5">Points Like</label>
											<input type="number" value="{{$s->point_like }}" class="form-control" name="like">
										</div>
                                        <div class="form-group">
											<label for="eventInput5">Points Replay</label>
											<input type="number" value="{{$s->point_replay }}" class="form-control" name="replay">
										</div>
                                        <div class="form-group">
											<label for="eventInput5">Points Discission</label>
											<input type="number" value="{{$s->point_discussion }}" class="form-control" name="discission">
										</div>

                                        <div class="form-group">
											<label for="eventInput5">Lat</label>
											<input type="text" value="{{$s->lat }}" class="form-control lat" name="lat">
										</div>
                                        <div class="form-group">
											<label for="eventInput5">Long</label>
											<input type="text" value="{{$s->long}}" class="form-control long" name="long">
										</div>
                                          <div id="map-canvas" style="height: 450px;width: 90%;margin: 0 auto;">
                                                                </div>
                                                              
                                    </div>
								</div>
							</div>

							<div class="form-actions center">
								{{-- <button type="submit" class="btn btn-danger mr-1">
									<i class="icon-trash"></i> Cancel
								</button> --}}
								<button type="submit" class="btn btn-success">
									<i class="icon-note"></i> Save
								</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
@endsection
  @section('script')
	<script>
       var lat = $('.lat').val();
    var long = $('.long').val();
   
    if(lat != ''){
        function initMap2() {
        var uluru = {lat: Number(lat), lng: Number(long)};
        var myOptions = {
            zoom: 15,
            center: new google.maps.LatLng(lat, long)
        },
        map = new google.maps.Map(document.getElementById('map-canvas'), myOptions),
        marker = new google.maps.Marker({
            position: uluru,
            map: map,
        }),
        infowindow = new google.maps.InfoWindow;
        map.addListener('click', function(e) {
            map.setCenter(e.latLng);
            marker.setPosition(e.latLng);
            infowindow.setContent("Latitude: " + e.latLng.lat() +
            "<br>" + "Longitude: " + e.latLng.lng());
            infowindow.open(map, marker);
            var s = $('.lat').val(e.latLng.lat());
            var ss = $('.long').val(e.latLng.lng());
        });
    }
    }else{
        function initMap() {
            var uluru = {lat: 30.0096523304429, lng: 31.22744746506214};
            var myOptions = {
                zoom: 10,
                center: new google.maps.LatLng(30.0096523304429, 31.22744746506214)
            },
            map = new google.maps.Map(document.getElementById('map-canvas'), myOptions),
            marker = new google.maps.Marker({
                position: uluru,
                map: map,
            }),
            infowindow = new google.maps.InfoWindow;
            map.addListener('click', function(e) {
                map.setCenter(e.latLng);
                marker.setPosition(e.latLng);
                infowindow.setContent("Latitude: " + e.latLng.lat() +
                "<br>" + "Longitude: " + e.latLng.lng());
                infowindow.open(map, marker);
                var s = $('.lat').val(e.latLng.lat());
                var ss = $('.long').val(e.latLng.lng());
            });
        }
    }
</script>
@if($s->lat != '')
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB2DM4_HwOA3s6WsWcyhRt5Q_NO9CoxZpU&callback=initMap2" async defer></script>
@else
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB2DM4_HwOA3s6WsWcyhRt5Q_NO9CoxZpU&callback=initMap" async defer></script>
@endif
@endsection