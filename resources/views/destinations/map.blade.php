@extends('layouts.app')

@section('title', 'Global Map | Wanderlust Guides')

@section('styles')
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css" integrity="sha256-p4NxAoJBhIIN+hmNHrzRCf9tD/miZyoHS5obTRR9BMY=" crossorigin=""/>
    <link rel="stylesheet" href="https://unpkg.com/leaflet.markercluster@1.4.1/dist/MarkerCluster.css" />
    <link rel="stylesheet" href="https://unpkg.com/leaflet.markercluster@1.4.1/dist/MarkerCluster.Default.css" />
    <style>
        #global-map {
            width: 100%;
            height: calc(100vh - 80px); /* Adjust based on your navbar height */
            z-index: 1; /* Keep map below navbar */
        }
        
        /* Custom popup styling */
        .leaflet-popup-content-wrapper {
            border-radius: 12px;
            padding: 0;
            overflow: hidden;
            box-shadow: 0 10px 25px rgba(0,0,0,0.15);
        }
        .leaflet-popup-content {
            margin: 0;
            width: 250px !important;
        }
        .map-popup-image {
            width: 100%;
            height: 120px;
            object-fit: cover;
        }
        .map-popup-info {
            padding: 15px;
        }
        .map-popup-title {
            font-size: 16px;
            font-weight: 700;
            color: var(--navy);
            margin: 0 0 5px;
            font-family: 'Outfit', sans-serif;
        }
        .map-popup-location {
            font-size: 13px;
            color: var(--gray-500);
            margin: 0 0 10px;
        }
        .map-popup-link {
            display: inline-block;
            background: var(--coral);
            color: white !important;
            text-decoration: none;
            padding: 6px 12px;
            border-radius: 20px;
            font-size: 12px;
            font-weight: 600;
            transition: background 0.3s;
        }
        .map-popup-link:hover {
            background: #ff5252;
        }
        .leaflet-popup-close-button {
            width: 26px !important;
            height: 26px !important;
            background: rgba(255,255,255,0.8) !important;
            border-radius: 50%;
            margin: 8px !important;
            color: var(--navy) !important;
            font-weight: bold;
        }
    </style>
@endsection

@section('content')
    <div id="global-map"></div>
@endsection

@section('scripts')
    <script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js" integrity="sha256-20nQCchB9co0qIjJZRGuk2/Z9VM+kNiyxNV1lvTlZBo=" crossorigin=""></script>
    <script src="https://unpkg.com/leaflet.markercluster@1.4.1/dist/leaflet.markercluster.js"></script>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // Initialize map
            var map = L.map('global-map').setView([20, 0], 3); // Centered on equator, wide zoom

            // Add CartoDB Voyager tiles (clean, light style)
            L.tileLayer('https://{s}.basemaps.cartocdn.com/rastertiles/voyager/{z}/{x}/{y}{r}.png', {
                attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors &copy; <a href="https://carto.com/attributions">CARTO</a>',
                subdomains: 'abcd',
                maxZoom: 19,
                minZoom: 2
            }).addTo(map);

            // Initialize marker clustering functionality
            var markers = L.markerClusterGroup({
                chunkedLoading: true,
                maxClusterRadius: 50,
                spiderfyOnMaxZoom: true,
                showCoverageOnHover: false,
                iconCreateFunction: function(cluster) {
                    var count = cluster.getChildCount();
                    var size = count < 10 ? 'small' : count < 50 ? 'medium' : 'large';
                    var px = count < 10 ? 30 : count < 50 ? 40 : 50;
                    
                    return new L.DivIcon({ 
                        html: '<div style="background: var(--coral); color: white; width: 100%; height: 100%; display: flex; align-items: center; justify-content: center; border-radius: 50%; font-weight: bold; border: 3px solid rgba(255,107,107,0.4);"><span style="position: relative; z-index: 2;">' + count + '</span></div>', 
                        className: 'marker-cluster marker-cluster-' + size, 
                        iconSize: new L.Point(px, px) 
                    });
                }
            });

            // Parse destinations from backend
            var destinationsData = @json($destinations);
            
            // Define a generic colored marker icon builder
            function getCustomIcon(color) {
                return L.divIcon({
                    className: 'custom-div-icon',
                    html: "<div style='background-color:" + color + "; width:16px; height:16px; border-radius:50%; border:2px solid white; box-shadow: 0 0 4px rgba(0,0,0,0.4);'></div>",
                    iconSize: [20, 20],
                    iconAnchor: [10, 10],
                    popupAnchor: [0, -10]
                });
            }

            // Loop through data and create markers
            destinationsData.forEach(function(dest) {
                if(dest.latitude && dest.longitude) {
                    
                    var markerColor = dest.category ? dest.category.color : 'var(--coral)';
                    var categoryIcon = dest.category ? dest.category.icon : 'fa-location-dot';
                    var categoryName = dest.category ? dest.category.name : '';
                    
                    // Create marker with category color
                    var marker = L.marker([parseFloat(dest.latitude), parseFloat(dest.longitude)], {
                        icon: getCustomIcon(markerColor)
                    });

                    // Build sleek popup HTML
                    var popupHtml = `
                        <div class="leaflet-popup-content">
                            <img src="${dest.hero_image_url || '/images/default-destination.jpg'}" alt="${dest.name}" class="map-popup-image" onerror="this.src='/images/default-destination.jpg'">
                            <div class="map-popup-info">
                                <h3 class="map-popup-title">${dest.name}</h3>
                                <p class="map-popup-location"><i class="fa-solid fa-location-dot" style="color: var(--coral); margin-right: 4px;"></i>${dest.location}</p>
                                <div style="display:flex; justify-content: space-between; align-items: center;">
                                    ${dest.rating > 0 ? `<span style="font-size: 13px; font-weight: bold; color: var(--navy);"><i class="fa-solid fa-star" style="color: var(--amber);"></i> ${dest.rating}</span>` : '<span></span>'}
                                    <a href="/destinations/${dest.slug}" class="map-popup-link">Explore</a>
                                </div>
                            </div>
                        </div>
                    `;

                    marker.bindPopup(popupHtml, {
                        closeButton: true,
                        minWidth: 250,
                        maxWidth: 250,
                        className: 'destination-popup'
                    });
                    
                    markers.addLayer(marker);
                }
            });

            // Add marker clusters to map
            map.addLayer(markers);
            
            // If we have just one or a few grouped close together, fit boundaries nicely
            if (destinationsData.length > 0) {
                map.fitBounds(markers.getBounds(), { padding: [50, 50], maxZoom: 8 });
            }
        });
    </script>
@endsection
