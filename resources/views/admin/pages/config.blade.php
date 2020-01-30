@extends('layouts.admin')
@section('content')
<div class="row match-height">
		<div class="col-md-12">
			<div class="card">
				<div class="card-header">
					<div class="card-title-wrap bar-warning">
						<h4 class="card-title" id="basic-layout-form-center">@if ($en->lang === 'en') English @else Arabic @endif Form</h4>
					</div>
				</div>
				<div class="card-body">
					<div class="px-3">
                    {{-- @foreach ($en as $e) --}}
						<form class="form" method="post" enctype="multipart/form-data"  action="{{url('configupdate')}}/{{ $en->id }}">
						@csrf
							<div class="row justify-content-md-center">
								<div class="col-md-10">
									<div class="form-body">
									<div class="form-group col-12 mb-2">
										   <label> Your Icon </label>
											<img src="{{url('resources/assets/back/img/config/source/'.$en->icon)}}" width="100px" height="60px">
										    <label id="projectinput8" class="file center-block">
											<input type="file" id="file" name="icon">
										    </label>
									    </div>

                                    <div class="form-group">
											<label for="eventInput4">Site Name</label>
											<input type="text" value="{{$en->site_name}}" class="form-control" name="sitename">
										</div>

										<div class="form-group col-12 mb-2">
										   <label>Site Logo</label>
										   <img src="{{url('resources/assets/back/img/config/source/'.$en->site_logo)}}" width="100px" height="60px">
										   <label id="projectinput8" class="file center-block">
											<input type="file" name="logo">
										    </label>
									    </div>

										<div class="form-group">
											<label for="eventInput4">Home Link 1</label>
											<input type="text" value="{{$en->home_link1}}" class="form-control" name="home1">
										</div>

										<div class="form-group col-12 mb-2">
										   <label >Home image 1</label>
											<img src="{{url('resources/assets/back/img/config/source/'.$en->home_img1)}}" width="100px" height="60px">
										    <label id="projectinput8" class="file center-block">
											<input type="file" id="file" name="img1">
										    </label>
									    </div>
										<div class="form-group">
											<label for="eventInput1">Home Link 2</label>
											<input type="text" value="{{$en->home_link2}}" class="form-control" name="home2">
										</div>

                                        <div class="form-group col-12 mb-2">
										   <label>Home image 2</label>
											<img src="{{url('resources/assets/back/img/config/source/'.$en->home_img2)}}" width="100px" height="60px">										    <label id="projectinput8" class="file center-block">
											<input type="file" id="file" name="img2">
										    </label>
									    </div>

										<div class="form-group">
									        <label for="issueinput8">About Site</label>
									        <textarea id="issueinput8" value="{{$en->about_site}}" rows="5" class="form-control" name="about" data-toggle="tooltip" data-trigger="hover" data-placement="top" data-title="Comments">{{$en->about_site}}</textarea>
								        </div>

									    <div class="form-group col-12 mb-2">
										   <label>Offer image</label>
											<img src="{{url('resources/assets/back/img/config/source/'.$en->offer_img)}}" width="100px" height="60px">
										    <label id="projectinput8" class="file center-block">
											<input type="file" id="file" name="offer">
										    </label>
									    </div>
										
										<div class="form-group">
											<label for="eventInput3">Address</label>
											<input type="text" value="{{$en->address}}" class="form-control" name="address">
										</div>
										<div class="form-group">
									        <label for="issueinput8">Meta Desc</label>
									        <textarea id="issueinput8" value="{{$en->meta_desc}}" rows="5" class="form-control" name="desc" data-toggle="tooltip" data-trigger="hover" data-placement="top" data-title="Comments">{{$en->meta_desc}}</textarea>
								        </div>
										<div class="form-group">
									        <label for="issueinput8">Meta key</label>
									        <textarea id="issueinput8" value="{{$en->meta_key}}" rows="5" class="form-control" name="key" data-toggle="tooltip" data-trigger="hover" data-placement="top" data-title="Comments">{{$en->meta_key}}</textarea>
								        </div>

                                        <div class="form-group">
											<label for="eventInput5">Phone</label>
											<input type="tel" value="{{$en->phone}}" class="form-control" name="phone">
										</div>

                                        <div class="form-group">
									          <label for="issueinput5"> Language</label>
									            <input type="text" value="{{$en->lang }}" class="form-control" name="language">
								        </div>
										
                                    </div>
								</div>
							</div>

							<div class="form-actions center">
								<button type="submit" class="btn btn-danger mr-1">
									<i class="icon-trash"></i> Cancel
								</button>
								<button type="submit" class="btn btn-success">
									<i class="icon-note"></i> Save
								</button>
							</div>
						</form>
                        {{-- @endforeach --}}
					</div>
				</div>
			</div>
		</div>
	</div>
@endsection