@extends('layouts.admin')
@section('content')
<section id="basic-form-layouts">
	<div class="row">
		<div class="col-sm-12">
			<h2 class="content-header">Forms</h2>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<div class="card">
				<div class="card-header">
					<div class="card-title-wrap bar-success">
						<h4 class="card-title" id="basic-layout-form">New Role</h4>
					</div>
                    </div>
				<div class="card-body">
					<div class="px-3">
						<form class="form" method="PATCH" action="{{route('updaterole',['id'=>$s->id])}}">
                         {{method_field('PATCH')}}
                               @csrf 
							<div class="form-body">
								<div class="row">
									<div class="col-md-12">
										<div class="form-group">
											<label for="projectinput1">Name</label>
											<input type="text" id="projectinput1" value="{{$s->name}}" class="form-control" name="rname">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<div class="form-group">
											<label for="projectinput3">Display Name</label>
											<input type="text" id="projectinput3" value="{{$s->display_name}}" class="form-control" name="rdisplay">
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<label for="projectinput4">Description</label>
											<input type="text" id="projectinput4" value="{{$s->description}}" class="form-control" name="rdescribe">
										</div>
									</div>
								</div>
							</div>

							<div class="form-actions">
								{{-- <button type="button" class="btn btn-danger mr-1">
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