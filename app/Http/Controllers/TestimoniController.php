<?php

namespace App\Http\Controllers;

use App\Models\Testimoni;
use Illuminate\Http\Request;

class TestimoniController extends Controller
{
    public function index()
    {
        $testimonis = Testimoni::all();
        return view('testimoni.index', compact('testimonis'));
    }

    public function admin()
    {
        $testimonis = Testimoni::all();
        return view('testimoni.index', compact('testimonis'));
    }

    public function create()
    {
        return view('testimoni.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'nama' => 'required',
            'pesan' => 'required',
        ]);

        Testimoni::create($request->all());
        return redirect()->route('testimoni')->with('success', 'Testimoni berhasil ditambahkan.');
    }

    public function edit($id)
    {
        $testimoni = Testimoni::findOrFail($id);
        return view('testimoni.edit', compact('testimoni'));
    }

    public function update(Request $request, $id)
    {
        $testimoni = Testimoni::findOrFail($id);
        $testimoni->update($request->all());
        return redirect()->route('testimoni')->with('success', 'Testimoni diperbarui.');
    }

    public function destroy($id)
    {
        $testimoni = Testimoni::findOrFail($id);
        $testimoni->delete();
        return redirect()->route('testimoni')->with('success', 'Testimoni dihapus.');
    }
}
