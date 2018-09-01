<!doctype html>
<html lang="{{ app()->getLocale() }}">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>TechShop-@yield('title')</title>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat|Roboto:300,400,700" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Styles -->
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">

    <link rel="stylesheet" href="{{ asset('css/responsive.css') }}">
    <link href="{{url('img/icon.png')}}" rel="shortcut icon">

    <link rel="stylesheet" href="{{ asset('css/algolia.css') }}">


</head>
<header>

        <div class="top-nav container">
            <div class="top-nav-left">
                <a href="/" style="padding:20"> <img src="{{URL('img/logo.png')}}" height="30" width="300" ></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    @include('partials.menus.main')
            </div>
            <div class="top-nav-right">
    @include('partials.menus.main-right')
            </div>
        </div>
        <!-- end top-nav -->
    </header>
<body>

   

    @yield('content')



</body>

</html>