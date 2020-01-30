@extends('layouts.app')

@section('content')
<!--Login Page Starts-->
<section id="login">
    <div class="container-fluid">
        <div class="row full-height-vh">
            <div class="col-12 d-flex align-items-center justify-content-center gradient-aqua-marine">
                <div class="card px-4 py-2 box-shadow-2 width-400">
                    <div class="card-header text-center">
                        <img src="{{url('resources/assets/back/img/logos/logo-color-big.png')}}" alt="company-logo" class="mb-3" width="80">
                        <h4 class="text-uppercase text-bold-400 grey darken-1">Login</h4>
                    </div>
                    <div class="card-body">
                        <div class="card-block">
                            <form method="POST" action="{{ route('login') }}">
                                 @csrf
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <input type="email" id="email" class="form-control form-control-lg @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" id="inputEmail" placeholder="Email Address" required autocomplete="email" autofocus>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-12">
                                        <input type="password" class="form-control form-control-lg @error('password') is-invalid @enderror" name="password" id="password" placeholder="Password" required autocomplete="current-password">
                                     @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="custom-control custom-checkbox mb-2 mr-sm-2 mb-sm-0 ml-5">
                                                <input type="checkbox" class="custom-control-input" checked id="rememberme">
                                                <label class="custom-control-label float-left" for="rememberme">Remember Me</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="text-center col-md-12">
                                        <button type="submit" class="btn btn-danger px-4 py-2 text-uppercase white font-small-4 box-shadow-2 border-0">Submit</button>
                                    </div>
                                </div>
                            </form>
                            <div class="form-group row mb-0">
                                 <div class="col-md-10 offset-md-4">
                                       <a href="{{ url('/auth/redirect/facebook') }}" class="btn btn-social-icon btn-round mr-2 mb-2 btn-facebook"><span class="fa fa-facebook"></span></a>
                                 
                                       <a href="{{ url('auth/google') }}" class="btn btn-social-icon btn-round mr-2 mb-2 btn-google"><i class="fa fa-google"></i></a>
                                       <a href="{{ url('') }}" class="btn btn-social-icon btn-round mr-2 mb-2 btn-yahoo"><i class="fa fa-yahoo"></i></a>
                                 </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer grey darken-1">
                        <div class="text-center mb-1">Forgot Password? <a href="{{route('password.request')}}"><b>Reset</b></a></div>
                        <div class="text-center">Don't have an account? <a href="{{route('register')}}"><b>Signup</b></a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--Login Page Ends-->
@endsection
