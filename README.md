<div align="center">

#  WanderLust Guides

### *Explore the World. One Destination at a Time.*

A production-ready, full-stack travel guide platform built with **Laravel 10** featuring interactive maps, curated destinations, culinary guides, AJAX-powered search, rich media galleries, and a secure Admin CMS.

<br/>

[![Laravel](https://img.shields.io/badge/Laravel-10-FF2D20?style=for-the-badge&logo=laravel&logoColor=white)](https://laravel.com)
[![PHP](https://img.shields.io/badge/PHP-8.3-777BB4?style=for-the-badge&logo=php&logoColor=white)](https://php.net)
[![MySQL](https://img.shields.io/badge/MySQL-8.0-4479A1?style=for-the-badge&logo=mysql&logoColor=white)](https://mysql.com)
[![Vite](https://img.shields.io/badge/Vite-5.0-646CFF?style=for-the-badge&logo=vite&logoColor=white)](https://vitejs.dev)
[![Railway](https://img.shields.io/badge/Deployed_on-Railway-0B0D0E?style=for-the-badge&logo=railway&logoColor=white)](https://railway.app)
[![License](https://img.shields.io/badge/License-MIT-22C55E?style=for-the-badge)](LICENSE)

<br/>

[ Live Demo](https://wonderlust.up.railway.app) · [ Report Bug](https://github.com/Hazammm/WonderLust/issues) · [ Request Feature](https://github.com/Hazammm/WonderLust/issues)

<br/>

---

</div>

<br/>

##  Table of Contents

- [ About The Project](#-about-the-project)
- [ Features](#-features)
- [ Tech Stack](#️-tech-stack)
- [ Getting Started](#-getting-started)
- [ Project Structure](#-project-structure)
- [ Team](#-team)
- [ Acknowledgements](#-acknowledgements)

<br/>

---

## About The Project

**Wanderlust Guides** is not just another travel website it's a fully deployed, production-grade web application that brings the world closer. Whether you're chasing hidden gems or exploring iconic landmarks, Wanderlust delivers a seamless, visually immersive experience powered by a robust Laravel backend.

Built from the ground up as a complete full-stack project ,from database schema design and backend API logic to frontend animations, admin panel, and cloud deployment this platform represents real-world software development at its finest.

<br/>

---

##  Features

<br/>

###  For Travelers
| Feature | Description |
|---|---|
| **Destination Explorer** | Browse a curated directory of global destinations with rich details |
| **Media Galleries** | Every destination showcases a stunning 3-image gallery with authentic photography |
| **Interactive Maps** | Leaflet.js powered maps to visually locate every destination |
| **Culinary Guides** | Discover local cuisines, famous dishes, and recommended restaurants |
| **AJAX Live Search** | Instant search and filtering without page reloads |
| **Fully Responsive** | Pixel-perfect on mobile, tablet, and desktop |
| **Newsletter** | Subscribe to stay updated with the latest travel guides |

<br/>

###  For Administrators
| Feature | Description |
|---|---|
| **Secure Admin CMS** | Full control over destinations, categories, and site content |
| **Image Uploads** | Upload and manage destination images directly from the panel |
| **Category Management** | Organize destinations by type, region, or custom categories |
| **Content Control** | Create, edit, and delete any content through an intuitive dashboard |

<br/>

---

## Tech Stack

<br/>

**Backend**

![Laravel](https://img.shields.io/badge/Laravel_10-FF2D20?style=flat-square&logo=laravel&logoColor=white)
![PHP](https://img.shields.io/badge/PHP_8.3-777BB4?style=flat-square&logo=php&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=flat-square&logo=mysql&logoColor=white)

**Frontend**

![Blade](https://img.shields.io/badge/Blade-FF2D20?style=flat-square&logo=laravel&logoColor=white)
![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=flat-square&logo=javascript&logoColor=black)
![CSS3](https://img.shields.io/badge/CSS3-1572B6?style=flat-square&logo=css3&logoColor=white)
![Vite](https://img.shields.io/badge/Vite-646CFF?style=flat-square&logo=vite&logoColor=white)

**Libraries & Tools**

![Leaflet](https://img.shields.io/badge/Leaflet.js-199900?style=flat-square&logo=leaflet&logoColor=white)
![Swiper](https://img.shields.io/badge/Swiper.js-6332F6?style=flat-square&logo=swiper&logoColor=white)
![AOS](https://img.shields.io/badge/AOS_Animations-FF6B6B?style=flat-square)
![Composer](https://img.shields.io/badge/Composer-885630?style=flat-square&logo=composer&logoColor=white)

**Deployment**

![Railway](https://img.shields.io/badge/Railway-0B0D0E?style=flat-square&logo=railway&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=flat-square&logo=docker&logoColor=white)

<br/>

---

## Getting Started

### Prerequisites

Make sure you have the following installed:

- **PHP** >= 8.3
- **Composer** >= 2.x
- **Node.js** >= 18.x & npm
- **MySQL** >= 8.0

<br/>

## Project Structure

```
WonderLust/
├── app/
│   ├── Http/Controllers/     # Request handling logic
│   ├── Models/               # Eloquent ORM models
│   └── Providers/            # Service providers
├── database/
│   ├── migrations/           # Database schema
│   └── seeders/              # Sample data seeders
├── resources/
│   ├── views/                # Blade templates
│   │   ├── layouts/          # Base layouts
│   │   ├── destinations/     # Destination pages
│   │   ├── culinary/         # Food guide pages
│   │   └── admin/            # Admin panel views
│   ├── css/                  # Stylesheets
│   └── js/                   # JavaScript files
├── routes/
│   └── web.php               # Application routes
├── public/                   # Publicly accessible assets
├── Dockerfile                # Docker configuration
└── vite.config.js            # Vite build config
```

<br/>

---

### Installation

**1. Clone the repository**
```bash
git clone https://github.com/Hazammm/WonderLust.git
cd WonderLust
```

**2. Install PHP dependencies**
```bash
composer install
```

**3. Install Node dependencies**
```bash
npm install
```

**4. Set up environment file**
```bash
cp .env.example .env
php artisan key:generate
```

**5. Configure your database** in `.env`:
```env
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=wonderlust
DB_USERNAME=your_username
DB_PASSWORD=your_password
```

**6. Run migrations and seed the database**
```bash
php artisan migrate --seed
```

**7. Create storage symlink**
```bash
php artisan storage:link
```

**8. Build frontend assets**
```bash
npm run build
```

**9. Start the development server**
```bash
php artisan serve
```

 Visit `http://localhost:8000` — you're live locally!

<br/>

---

## Acknowledgements

- **Miss Syeda Zarwa** ; Our incredible instructor whose guidance, mentorship, and belief in us made this project possible. You didn't just teach us programming, you taught us how to think like developers.
- [Laravel](https://laravel.com)  The PHP framework for web artisans
- [Leaflet.js](https://leafletjs.com)  Open-source interactive maps
- [Swiper.js](https://swiperjs.com)  Modern touch slider
- [AOS](https://michalsnik.github.io/aos/)  Animate On Scroll library
- [Railway](https://railway.app)  Deployment platform

<br/>

---

<div align="center">

[![Live Demo](https://img.shields.io/badge/🌍_Live_Demo-wonderlust.up.railway.app-FF6B6B?style=for-the-badge)](https://wonderlust.up.railway.app)

<br/>

</div>
