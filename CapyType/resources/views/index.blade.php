@extends('layouts.navigation')
    <!-- awal description -->
    @section('title')
    CapyType | Home
    @endsection
    @section('content')
    <div class="flex items-center justify-around mx-5 mt-10 " style="padding-top: 30px; font-size: 20;">
        <div class="w-2/5 ">
            <p class="font-bold " style="font-size: 71px; color:
                #E5F7EF;">CapyType
            </p>
            <p class="pt-10 font-bold" style="color: #2ABA86">test your typing skill here</p>
            <p class="flex pt-8" style="color: #526777;">CapyType is a minimalistic typing test. It
                features many test modes, an account system
                to save your typing speed history, and user-
                configurable features such as themes and
                more.</p>

                <div class="pt-10">
                    <a href="/typing">
                        <button class="px-6 py-2 font-bold rounded-full " style="background-color: #2ABA86; font-size: 16px; color: #1F232C;">TYPE NOW</button>
                    </a>
                    <a href="#about">
                        <button class="px-6 py-2 font-bold rounded-full outline " style="background-color: #262A33; font-size: 16px; color: #2ABA86;">SEE MORE</button>
                    </a>

                </div>

        </div >

        <img src="{{asset('assets/gif/capygift.gif')}}"  width="500" />

    </div>

@endsection
