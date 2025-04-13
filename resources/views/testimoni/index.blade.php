@extends('layouts.app')

@section('content')
<div class="container mt-4">
    <a href="{{ route('testimoni.create') }}" class="btn btn-success mb-3">Tambah Testimoni</a>
    @foreach ($testimonis as $t)
        <div class="card mt-3">
            <div class="card-body">
                <h5>{{ $t->nama }}</h5>
                <p>{{ $t->pesan }}</p>
                <!-- <a href="{{ route('testimoni.edit', $t->id) }}" class="btn btn-primary btn-sm">Edit</a>
                <form action="{{ route('testimoni.delete', $t->id) }}" method="POST" style="display:inline;">
                    @csrf
                    @method('DELETE')
                    <button class="btn btn-danger btn-sm">Hapus</button>
                </form> -->
            </div>
        </div>
    @endforeach
</div>
@endsection
