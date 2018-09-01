{{-- //@extends('layouts.footer', 'sticky-footer') --}}

@extends('layouts.app')

@section('content')
@section('title', 'Thankyou')

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

            <div class="thank-you-section">
                <h1>Thank you for <br> Your Order!</h1>
                <p>A confirmation email was sent</p>
                <div class="spacer"></div>
                <div>
                    <a href="{{ url('/') }}" class="button">Home Page</a>
                </div>
            </div>

            <div pa>

            </div>

@endsection