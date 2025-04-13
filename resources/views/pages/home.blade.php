@extends('layouts.app')

@section('title')
    Intan Bahari Wisata
@endsection


@section('content')
    <!--Header-->
    <header class="text-center">
        <h1>Jelajahi Tempat yang Indah
            <br />
            Hanya dengan 1 kali klik
        </h1>
        <p class="mt-3">
            Anda akan melihat yang indah <br />
            momen yang belum pernah anda lihat sebelumnya
        </p>
        <a href="#popular" class="btn btn-primary btn-lg px-12 mt-12">
            Pesan Sekarang <i class="fa fa-lup"></i>
        </a>
    </header>

    <!-- Statistik dan Wisata Popular-->
    <main>
        <!-- <div class="container">
                <section class="section-stats row justify-content-center" id="stats">
                    <div class="col-3 col-md-2 stats-detail">
                        <h2>20K</h2>
                        <p>Members</p>
                    </div>
                    <div class="col-3 col-md-2 stats-detail">
                        <h2>12</h2>
                        <p>Countries</p>
                    </div>
                    <div class="col-3 col-md-2 stats-detail">
                        <h2>3K</h2>
                        <p>Hotels</p>
                    </div>
                    <div class="col-3 col-md-2 stats-detail">
                        <h2>72</h2>
                        <p>Partners</p>
                    </div>
                </section>
            </div> -->
        <!-- Wisata Popular -->
        <section class="section-popular" id="popular">
            <div class="container">
                <div class="row">
                    <div class="col text-center section-popular-heading">
                        <h2>Pilih Jenis Tiket</h2>
                        <p>
                            Pastikan memilih tiket yang sesuai dengan keinginan Anda!
                        </p>
                    </div>
                </div>
            </div>

        </section>
        <!-- Popular Content-->
        <section class="section-popular-content" id="popularContent">
            <div class="container">
                <div class="section-popular-travel row justify-content-center">
                    @foreach ($items as $item)
                        <div class="col-sm-6 col-md-4 col-lg-3">
                            <div class="card-travel text-center d-flex flex-column"
                                style="background-image:
                            url('{{ $item->galleries->count() ? Storage::url($item->galleries->first()->image) : '' }}');">
                                <div style="color:black;" class="travel-country">{{ $item->location }}</div>
                                <div style="color:black;" class="travel-location">{{ $item->title }}</div>
                                <div class="travel-button mt-auto">
                                    <a href="{{ route('detail', $item->slug) }}" class="btn btn-primary btn-lg px-4">
                                        Pilih
                                    </a>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </section>

        <!-- Partners -->
        <section class="section-networks" id="lokasiwisata">
            <center>
                <h2 style="color:blue;">Lokasi Wisata</h2>
            </center>
            <div class="container text-center">
                <iframe
                    src="https://www.google.com/maps/embed?pb=!1m19!1m8!1m3!1d37850.64062022493!2d108.99387466242668!3d-7.690681708673612!3m2!1i1024!2i768!4f13.1!4m8!3e0!4m0!4m5!1s0x2e6572b22a8ce523%3A0x5027a76e3571db0!2sKutawaru%2C%20Kec.%20Cilacap%20Tengah%2C%20Kabupaten%20Cilacap%2C%20Jawa%20Tengah!3m2!1d-7.6815633!2d108.97993869999999!5e1!3m2!1sid!2sid!4v1740145411325!5m2!1sid!2sid"
                    width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"
                    referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
            <!-- <div class="container">
                    <div class="row">
                        <div class="col-md-4">
                            <h2> Our Networks </h2>
                            <p> Companies are trusted us
                                <br />
                                More than just a trip
                            </p>
                        </div>
                        <div class="col-d-8 text-center">
                            <img src="/frontend/images/logos_partner.png" alt="Logo Partner" class="img-partner">
                        </div>
                    </div>
                </div> -->
        </section>

        <!--Testimonial-->
        <section class="section-testimonial-heading" id="testimonialHeading">
            <div class="container">
                <div class="row">
                    <div class="col text-center" id="tentang">
                        <h2>Tentang Kami</h2>
                        <!-- <p>Moments were giving them
                                <br />
                                the best experience
                            </p> -->
                    </div>
                </div>
            </div>
        </section>

        <section class="section section-testimonial-content" id="testimonialContent">
            <div class="container">
                <div class="section-popular-travel row justify-content-center">
                    <div class="col-sm-6 col-md-6 col-lg-4">
                        <div class="card card-testimonial text-center">
                            <div class="testimonial-content">
                                <img src="frontend/images/ferina.png" alt="User 1" class="mb-4 rounded-circle">
                                <h3 class="mb-4">Ferina Tri Amalia</h3>
                                <h4>PROJECT MANAGER</h4>
                            </div>
                            <hr />
                            <!--  <p class="trip-to mt-2">
                                    Trip to Ubud
                                </p> -->
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-6 col-lg-4">
                        <div class="card card-testimonial text-center">
                            <div class="testimonial-content">
                                <img src="frontend/images/della1.png" alt="User 2" class="mb-4 rounded-circle">
                                <h3 class="mb-4">Della Stiowati</h3>
                                <h4>CEO & FOUNDER</h4>
                            </div>
                            <hr />
                            <!--   <p class="trip-to mt-2">
                                    Trip to Nusa Penida
                                </p> -->
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-6 col-lg-4">
                        <div class="card card-testimonial text-center">
                            <div class="testimonial-content">
                                <img src="frontend/images/amelia.png" alt="User 2" class="mb-4 rounded-circle">
                                <h3 class="mb-4">Amelia Tri R</h3>
                                <h4>CEO & FOUNDER</h4>
                            </div>
                            <hr />
                            <!--   <p class="trip-to mt-2">
                                    Trip to Nusa Penida
                                </p> -->
                        </div>
                    </div>

                <div class="container">


                    <div class="col text-center" id="galeri">
                        <h2 style="bold" align="center">Galeri</h2>
                    </div>
                    <!-- <p>Moments were giving them
                                <br />
                                the best experience
                            </p> -->


                </div>

                <div class="row">
                    <!-- <div class="col-12 text-center">
                            <a href="#" class="btn btn-need-help px-4 mt-4 mx-1">
                                Beranda
                            </a>

                            <a href="{{ route('register') }}" class="btn btn-get-started px-4 mt-4 mx-1">
                               Daftar Sekarang
                            </a>

                        </div> -->
                </div>
                <!-- Gallery -->
                <div class="row">
                 @foreach ($item->galleries as $gallery)
                    <div class="col-lg-4 col-md-12 mb-4 mb-lg-0">

                        <img src="{{ Storage::url($gallery->image) }}"
                            class="w-100 shadow-1-strong rounded mb-4"  />


                    </div>

                    @endforeach
                </div>
                <!-- Gallery -->
            </div>

        </section>
        <!--Testimonial-->
       <!--  <section class="section-testimonial-heading" id="testimonialHeading">
            <div class="container">
                <div class="row">
                    <div class="col text-center">
                        <h2>They Are Loving Us</h2>
                        <p>Moments were giving them
                            <br />
                            the best experience
                        </p>
                    </div>
                </div>
            </div>
        </section>

        <section class="section section-testimonial-content" id="testimonialContent">
            <div class="container">
                <div class="section-popular-travel row justify-content-center">
                    <div class="col-sm-6 col-md-6 col-lg-4">
                        <div class="card card-testimonial text-center">
                            <div class="testimonial-content">

                                <h3 class="mb-4">Angga Risky</h3>
                                <p class="testimonial">
                                    “ It was glorious and I could not stop
                                    to say wohooo for every single moment Dankeeeeee “
                                </p>
                            </div>
                            <hr />
                            <p class="trip-to mt-2">
                                Trip to Ubud
                            </p>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-6 col-lg-4">
                        <div class="card card-testimonial text-center">
                            <div class="testimonial-content">

                                <h3 class="mb-4">Shayna</h3>
                                <p class="testimonial">
                                    “ The trip was amazing and I saw something beautiful in
                                        that Island that makes me want to learn more “
                                </p>
                            </div>
                            <hr />
                            <p class="trip-to mt-2">
                                Trip to Nusa Penida
                            </p>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-6 col-lg-4">
                        <div class="card card-testimonial text-center">
                            <div class="testimonial-content">

                                <h3 class="mb-4">Shabrina</h3>
                                <p class="testimonial">
                                    “ I loved it when the waves
                                    was shaking harder — I was
                                    scared too “
                                </p>
                            </div>
                            <hr />
                            <p class="trip-to mt-2">
                                Trip to Karimun Jawa
                            </p>
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-12 text-center">
                        <a href="#" class="btn btn-need-help px-4 mt-4 mx-1">
                            I Need Help
                        </a>

                        <a href="{{ route('register') }}" class="btn btn-get-started px-4 mt-4 mx-1">
                           Get Started
                        </a>

                    </div>
                </div>
            </div>
        </section> -->

    </main>
@endsection
