<x-mail::message>
# Welcome to Wanderlust Guides!

Thank you for subscribing to our newsletter. You're now on the list to receive our latest travel guides, exclusive hidden gems, and travel tips straight to your inbox.

Get ready for your next adventure!

<x-mail::button :url="route('destinations.index')">
Explore Destinations
</x-mail::button>

Happy Travels,<br>
{{ config('app.name') }}
</x-mail::message>
