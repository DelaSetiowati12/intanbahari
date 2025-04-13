@extends('layouts.app')

@section('title', 'Detail Travel')

@section('content')
<main>
    <section class="section-details-header"></section>
        <section class="section-details-content">
            <div class="container">
                <div class="row">
                    <div class="col p-0">
                        <nav>
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    Tiket
                                </li>
                                <li class="breadcrumb-item active">
                                    Rincian
                                </li>
                            </ol>
                        </nav>

                    </div>
                </div>
                <div class="row">
                    <!-- Gallery -->
                    <div class="col-lg-8 pl-lg-0">
                        <div class="card card-details">
                            <h1>{{ $item->title }}</h1>
                            <p>{{ $item->location }}</p>
                            @if ($item->galleries->count())
                                <div class="gallery">
                                    <div class="xzoom-container">
                                        <img
                                        src="{{ Storage::url($item->galleries->first()->image) }}"
                                        class="xzoom"
                                        id="xzoom-default"
                                        xoriginal="{{ Storage::url($item->galleries->first()->image) }}"/>
                                    </div>
                                    <div class="xzoom-thumbs">
                                        @foreach ($item->galleries as $gallery)
                                        <a href="{{ Storage::url($gallery->image) }}">
                                            <img
                                            src="{{ Storage::url($gallery->image) }}"
                                            class="xzoom-gallery"
                                            width="128"
                                            xpreview="{{ Storage::url($gallery->image) }}"/>
                                        </a>
                                        @endforeach
                                    </div>
                                </div>

                            @endif
                            <h2>Tentang Tiket</h2>
                            <p>
                                {!! $item->about !!}
                            </p>

                            <div class="features row">
                                <div class="col-md-4">
                                    <img src="{{ url('/frontend/images/ic_event.png') }}" alt="" class="features-image">
                                    <div class="description">
                                        <h3>Featured Event</h3>
                                        <p>{{ $item->featured_event }}</p>
                                    </div>
                                </div>
                                <div class="col-md-4 border-left">
                                    <img src="{{ url('/frontend/images/ic_language.png') }}" alt="" class="features-image">

                                    <div class="description">
                                        <h3>Language</h3>
                                        <p>{{ $item->language }}</p>
                                    </div>
                                </div>
                                <div class="col-md-4 border-left">
                                    <img src="{{ url('/frontend/images/ic_foods.png') }}" alt="" class="features-image">

                                    <div class="description">
                                        <h3>Foods</h3>
                                        <p>{{ $item->foods }}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Right Card -->
                    <div class="col-lg-4">
                        <div class="card card-details card-right">
                           <!--  <h2>Pengguna yang telah membeli </h2>
                            <div class="members my-2">
                                <img src="/frontend/images/member1.png" alt="" class="member-image mr -1"/>
                                <img src="/frontend/images/member2.png" alt="" class="member-image mr -1"/>
                                <img src="/frontend/images/member3.png" alt="" class="member-image mr -1"/>
                                <img src="/frontend/images/member4.png" alt="" class="member-image mr -1"/>
                                <img src="/frontend/images/m5.png" alt="" class="member-image mr -1"/>
                            </div> -->
                            <hr>
                            <h2>Informasi Tiket</h2>
                            <table class="trip-information">
                                <tr>
                                    <th width=50%>Tanggal</th>
                                    <td width=50% style="color:blue;" class="text-right">{{ \Carbon\Carbon::create($item->date_of_departure)
                                    ->format('F n, Y') }}</td>
                                </tr>
                                <tr>
                                    <th width=50%>Durasi</th>
                                    <td width=50% style="color:blue;" class="text-right">{{ $item->duration }}</td>
                                </tr>
                                <tr>
                                    <th width=50%>Type</th>
                                    <td width=50% style="color:blue;" class="text-right">{{ $item->type }}</td>
                                </tr>
                                <tr>
                                    <th width=50%>Harga</th>
                                    <td width=50% style="color:blue;" class="text-right">Rp. {{ $item->price }},00 /orang</td>
                                </tr>

                            </table>
                        </div>
                        <div class="join-container">
                            @auth
                                <form action="{{ route('checkout_process', $item->id) }}" method="POST">
                                    @csrf
                                    <button class="btn btn-block btn-join-now mt-3 py-2" type="submit">
                                        Daftar Sekarang
                                    </button>
                                </form>
                            @endauth

                            @guest
                            <a href="{{ route('login') }}" class="btn btn-block btn-primary mt-3 py-2">
                                Masuk atau Daftar untuk bergabung
                            </a>
                            @endguest
                        </div>
                    </div>
                </div>
            </div>
        </section>
</main>

@endsection

@push('prepend-style')
    <link rel="stylesheet" href="{{ url('/frontend/libraries/xzoom/xzoom.css') }}">
@endpush

@push('addon-script')
<script src="{{ url('/frontend/libraries/xzoom/xzoom.min.js') }}"></script>
<script>
    $(document).ready(function() {
        $('.xzoom, .xzoom-gallery').xzoom({
            zoomwidth: 500,
            title: false,
            tint: '#333',
            xoffset: 15
        });
    });
</script>

@endpush