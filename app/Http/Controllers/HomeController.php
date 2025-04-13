<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use \App\Models\TravelPackage;

class HomeController extends Controller
{
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $items = TravelPackage::with(['galleries'])->get();
        return view('pages.home',[
            'items' => $items
        ]);
    }

    

    // public function store(GalleryRequest $request)
    // {
    //     $request->validate([
    //         'image' => 'required'
    //     ]);

    //     $data = $request->all();
    //     $data['image'] = $request->file('image')->store(
    //         'assets/gallery', 'public'
    //     );

    //     Gallery::create($data);
    //     return redirect()->route('gallery.index');
    // }
}
