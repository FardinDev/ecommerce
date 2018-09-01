@extends('layouts.footer')

@extends('layouts.app2')

@section('content')
@section('title', 'Product')
<div class="container">
    <div class="auth-pages">
        <div>
                         <h2>Create Account</h2>
            <div class="spacer"></div>

            <form method="POST" action="https://laravelecommerceexample.ca/register">
                <input type="hidden" name="_token" value="y74CD9R8k5NvS67KgW9O8QjgmnEAs4Xy4DfiZvBE">

                <input id="name" type="text" class="form-control" name="name" value="" placeholder="Name" required autofocus>

                <input id="email" type="email" class="form-control" name="email" value="" placeholder="Email" required>

                <input id="password" type="password" class="form-control" name="password" placeholder="Password" placeholder="Password" required>

                <input id="password-confirm" type="password" class="form-control" name="password_confirmation" placeholder="Confirm Password"
                    required>

                <div class="login-container">
                    <button type="submit" class="auth-button">Create Account</button>
                    <div class="already-have-container">
                        <p><strong>Already have an account?</strong></p>
                        <a href="https://laravelecommerceexample.ca/login">Login</a>
                    </div>
                </div>

            </form>
        </div>

        <div class="auth-right">
            <h2>New Customer</h2>
            <div class="spacer"></div>
            <p><strong>Save time now.</strong></p>
            <p>Creating an account will allow you to checkout faster in the future, have easy access to order history and customize your experience to suit your preferences.</p>

            &nbsp;
            <div class="spacer"></div>
            <p><strong>Loyalty Program</strong></p>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt debitis, amet magnam accusamus nisi distinctio eveniet ullam. Facere, cumque architecto.</p>
        </div>
    </div> <!-- end auth-pages -->
</div>



@endsection