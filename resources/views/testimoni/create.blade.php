@extends('layouts.app')

@section('content')
<div class="container mt-4">
    <h2>{{ isset($testimoni) ? 'Edit' : 'Tambah' }} Testimoni</h2>
    <form action="{{ isset($testimoni) ? route('testimoni.update', $testimoni->id) : route('testimoni.store') }}" method="POST">
        @csrf
        @if(isset($testimoni))
            @method('PUT')
        @endif
        <div class="mb-3">
            <label>Nama</label>
            <input type="text" name="nama" class="form-control" value="{{ $testimoni->nama ?? '' }}">
        </div>
        <div class="mb-3">
            <label>Isi</label>
            <textarea name="pesan" class="form-control">{{ $testimoni->pesan ?? '' }}</textarea>
        </div>
        <button class="btn btn-success">Simpan</button>
    </form>
</div>
@endsection
