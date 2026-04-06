<?php

namespace App\Http\Controllers;

use App\Models\Destination;
use App\Models\Category;
use Illuminate\Http\Request;

class DestinationController extends Controller
{
    public function index(Request $request)
    {
        $query = Destination::with('category');

        if ($request->has('category') && $request->category !== 'all') {
            $query->byCategory($request->category);
        }

        if ($request->has('search') && $request->search) {
            $query->search($request->search);
        }

        if ($request->has('budget') && $request->budget) {
            $query->where('budget', $request->budget);
        }

        if ($request->has('sort') && $request->sort) {
            if ($request->sort === 'rating_desc') {
                $query->orderBy('rating', 'desc');
            } elseif ($request->sort === 'name_asc') {
                $query->orderBy('name', 'asc');
            } else {
                 $query->latest();
            }
        } else {
            $query->latest();
        }

        $destinations = $query->paginate(12);
        $categories = Category::withCount('destinations')->get();

        if ($request->ajax()) {
            return response()->json([
                'html' => view('partials.destination-card', ['destinations' => $destinations])->render(),
                'hasMore' => $destinations->hasMorePages(),
            ]);
        }

        return view('destinations.index', compact('destinations', 'categories'));
    }

    public function show($slug)
    {
        $destination = Destination::with('category')->where('slug', $slug)->firstOrFail();
        $similarDestinations = $destination->similarDestinations(4);

        return view('destinations.show', compact('destination', 'similarDestinations'));
    }

    public function map()
    {
        $destinations = Destination::with('category')
            ->whereNotNull('latitude')
            ->whereNotNull('longitude')
            ->get();
            
        return view('destinations.map', compact('destinations'));
    }
}
