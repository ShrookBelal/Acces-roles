@extends('layouts.admin')
@section('content')
<!--Extended Table starts-->
<section id="extended">
    <div class="row">
        <div class="col-sm-12">
            <div class="card">
                <div class="card-header">
                        <div class="card-title-wrap bar-success">
                    <h4 class="card-title">Roles</h4>
                        </div>
                </div>
                <div class="card-body">
                    <div class="card-block">
                    <a class="btn mr-1 btn-round shadow-z-2 btn-primary" href="{{route('roleadd')}}"> + Add Role</a>
                        <table class="table table-responsive-md text-center">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Name</th>
                                    <th>Display name</th>
                                    <th>description</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                            @foreach ($s as $role )
                               
                                <tr>
                                    <td>{{$role->id}}</td>
                                    <td>{{$role->name }}</td>
                                    <td>{{$role->display_name}}</td>
                                    <td>{{$role->description }}</td>
                                    <td>
                                        <a class="success p-0" href="{{route('editrole',['id'=>$role->id])}}">
                                            <i class="fa fa-pencil font-medium-3 mr-2"></i>
                                        </a>
                                        <a class="danger p-0" href="{{route('deleterole',['id'=>$role->id])}}">
                                            <i class="fa fa-trash-o font-medium-3 mr-2"></i>
                                        </a>
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--Extended Table Ends-->
@endsection