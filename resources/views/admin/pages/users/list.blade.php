
@extends('layouts.app')
@section('content')

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
  <div class="container box">
   <h3 >Ajax Dynamic Dependent Dropdown in Laravel</h3><br />
   <div class="form-group">
    <select name="role_id" id="role_id" class="form-control input-lg dynamic" data-dependent="permission_id">
     <option value="">Select Role</option>
     @foreach($per as $rol)
     <option value="{{ $rol->id}}">{{ $rol->name }}</option>
     @endforeach
    </select>
   </div>
   <br />
   <div class="form-group">
    <select name="permission_id" id="permission_id" class="form-control input-lg dynamic">
     <option value="">Select Permission</option>
    </select>
   </div>
   <br />
   {{ csrf_field() }}
   <br />
   <br />
  </div>
 

<script>
$(document).ready(function(){

 $('.dynamic').change(function(){
  if($(this).val() != '')
  {
   var select = $(this).attr("id");
   var value = $(this).val();
   var dependent = $(this).data('dependent');
   var _token = $('input[name="_token"]').val();
   $.ajax({
    url:"{{ route('dynamicdependent.fetch') }}",
    method:"POST",
    data:{select:select, value:value, _token:_token, dependent:dependent},
    success:function(result)
    {
     $('#'+dependent).html(result);

    }

   })
  }
 });

 $('#role_id').change(function(){
  $('#permission_id').val('');
 });
 

});
</script>
@endsection