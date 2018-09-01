@extends('layouts.footer')

@extends('layouts.app')

@section('content')
@section('title', 'Product')

@if (session()->has('success_message'))
<div class="spacer"></div>
<div class="alert alert-success">
    {{ session()->get('success_message') }}
</div>
@endif
@if(count($errors) > 0)
<div class="spacer"></div>
<div class="alert alert-danger">
<ul>
    @foreach ($errors->all() as $error)
        <li>{!! $error !!}</li>
    @endforeach
</ul>
</div>
@endif

 <div class="container">
    <div class="auth-pages">
        <div class="auth-left">
                         <h2>Returning Customer</h2>
            <div class="spacer"></div>

            <form action="https://laravelecommerceexample.ca/login" method="POST">
                <input type="hidden" name="_token" value="y74CD9R8k5NvS67KgW9O8QjgmnEAs4Xy4DfiZvBE">

                <input type="email" id="email" name="email" value="" placeholder="Email" required autofocus>
                <input type="password" id="password" name="password" value="" placeholder="Password" required>

                <div class="login-container">
                    <button type="submit" class="auth-button">Login</button>
                    <label>
                        <input type="checkbox" name="remember" > Remember Me
                    </label>
                </div>

                <div class="spacer"></div>

                <a href="https://laravelecommerceexample.ca/password/reset">
                    Forgot Your Password?
                </a>

            </form>
        </div>

        <div class="auth-right">
            <h2>New Customer</h2>
            <div class="spacer"></div>
            <p><strong>Save time now.</strong></p>
            <p>You dont need an account to checkout.</p>
            <div class="spacer"></div>
            <a href="https://laravelecommerceexample.ca/guestCheckout" class="auth-button-hollow">Continue as Guest</a>
            <div class="spacer"></div>
            &nbsp;
            <div class="spacer"></div>
            <p><strong>Save time later.</strong></p>
            <p>Create an account for fast checkout and easy access to order history.</p>
            <div class="spacer"></div>
            <a href="https://laravelecommerceexample.ca/register" class="auth-button-hollow">Create Account</a>

        </div>
    </div>
    
</div>
 


@endsection