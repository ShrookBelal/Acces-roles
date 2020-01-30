@extends('layouts.admin')
@section('content')
<section id="basic-form-layouts">
	<div class="row">
		<div class="col-md-12">
			<div class="card">
			
				<div class="card-header">
					<div class="card-title-wrap bar-success">
						<h4 class="card-title" id="basic-layout-form">Add Admin</h4>
					</div>
                    </div>
				<div class="card-body">
					<div class="px-3">
						<form class="form" method="PATCH" action="{{route('adduser')}}">
						{{method_field('PATCH')}}
                               @csrf
							<div class="form-body">
								<h4 class="form-section">
									<i class="icon-user"></i> Personal Details</h4>
								<div class="row">
									<div class="col-md-12">
										<div class="form-group">
											<label for="projectinput1">Name</label>
											<input type="text" id="projectinput1" class="form-control" name="uname">
										</div>
									</div>
									
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="projectinput3">E-mail</label>
											<input type="text" id="projectinput3" class="form-control" name="uemail">
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="projectinput4">Phone</label>
											<input type="text" id="projectinput4" class="form-control" name="uphone">
										</div>
									</div>
								</div>

								<h4 class="form-section">
									<i class="icon-book-open"></i>Rolls</h4>

								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="projectinput5">Type</label>
											<select id="projectinput5" name="utype" class="form-control">
                                            <option value="">Please select type</option>
												<option value="1">Admin</option>
												<option value="0">User</option>
												</Select>
										</div>
									</div>

									<div class="col-md-6">
										<div class="form-group">
											<label for="projectinput6">Roll</label>
											<select id="projectinput6" name="urole" class="form-control">
                                            <option value="" >Please select a role</option>
											@foreach ($roles as $r )
												<option value="{{$r->id}}" >{{$r->name}}</option>
											@endforeach
											</select>
										</div>
									</div>
								</div>
							</div>

							<div class="form-actions">
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