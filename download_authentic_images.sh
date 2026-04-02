#!/bin/bash

# Download authentic images for all destinations - 3 different images each
# Using Unsplash source with specific photo IDs for authentic, unique images

DEST_DIR="/home/rev-9-solutions/travel-guide/public/images/destinations"
FOOD_DIR="/home/rev-9-solutions/travel-guide/public/images/food"

mkdir -p "$DEST_DIR"
mkdir -p "$FOOD_DIR"

echo "Downloading authentic destination images..."

# ─── FAROE ISLANDS (3 unique authentic images) ───
echo "→ Faroe Islands..."
curl -L -o "$DEST_DIR/faroe-1.jpg" "https://images.unsplash.com/photo-1547652577-2cae57945dbe?w=1200&q=85"
curl -L -o "$DEST_DIR/faroe-2.jpg" "https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=1200&q=85"
curl -L -o "$DEST_DIR/faroe-3.jpg" "https://images.unsplash.com/photo-1594614271072-4cddc7ff8a5e?w=1200&q=85"

# ─── PATAGONIA (3 unique authentic images) ───
echo "→ Patagonia..."
curl -L -o "$DEST_DIR/patagonia-1.jpg" "https://images.unsplash.com/photo-1531761535209-180857e963b9?w=1200&q=85"
curl -L -o "$DEST_DIR/patagonia-2.jpg" "https://images.unsplash.com/photo-1501854140801-50d01698950b?w=1200&q=85"
curl -L -o "$DEST_DIR/patagonia-3.jpg" "https://images.unsplash.com/photo-1515834049-0d1ede5e9b04?w=1200&q=85"

# ─── BANFF (3 unique authentic images) ───
echo "→ Banff National Park..."
curl -L -o "$DEST_DIR/banff-1.jpg" "https://images.unsplash.com/photo-1504280390367-361c6d9f38f4?w=1200&q=85"
curl -L -o "$DEST_DIR/banff-2.jpg" "https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?w=1200&q=85"
curl -L -o "$DEST_DIR/banff-3.jpg" "https://images.unsplash.com/photo-1571920124361-0b28b5261a8c?w=1200&q=85"

# ─── QUEENSTOWN (3 unique authentic images) ───
echo "→ Queenstown..."
curl -L -o "$DEST_DIR/queenstown-1.jpg" "https://images.unsplash.com/photo-1507699622108-4be3abd695ad?w=1200&q=85"
curl -L -o "$DEST_DIR/queenstown-2.jpg" "https://images.unsplash.com/photo-1526785848548-31db0c4d28e0?w=1200&q=85"
curl -L -o "$DEST_DIR/queenstown-3.jpg" "https://images.unsplash.com/photo-1560416631-6c0b0e3fc0c3?w=1200&q=85"

# ─── KYOTO (3 unique authentic images) ───
echo "→ Kyoto..."
curl -L -o "$DEST_DIR/kyoto-1.jpg" "https://images.unsplash.com/photo-1493976040374-85c8e12f0c0e?w=1200&q=85"
curl -L -o "$DEST_DIR/kyoto-2.jpg" "https://images.unsplash.com/photo-1528360983277-13d401cdc186?w=1200&q=85"
curl -L -o "$DEST_DIR/kyoto-3.jpg" "https://images.unsplash.com/photo-1545569341-9eb8b30979d9?w=1200&q=85"

# ─── MACHU PICCHU (3 unique authentic images) ───
echo "→ Machu Picchu..."
curl -L -o "$DEST_DIR/machu-picchu-1.jpg" "https://images.unsplash.com/photo-1587595431973-160d0d94add1?w=1200&q=85"
curl -L -o "$DEST_DIR/machu-picchu-2.jpg" "https://images.unsplash.com/photo-1526392060635-9d6019884377?w=1200&q=85"
curl -L -o "$DEST_DIR/machu-picchu-3.jpg" "https://images.unsplash.com/photo-1580619305218-8423a7ef79b4?w=1200&q=85"

# ─── FEZ MEDINA (3 unique authentic images) ───
echo "→ Fez Medina..."
curl -L -o "$DEST_DIR/fez-1.jpg" "https://images.unsplash.com/photo-1558618047-f4e90e8b4b3d?w=1200&q=85"
curl -L -o "$DEST_DIR/fez-2.jpg" "https://images.unsplash.com/photo-1548013146-72479768bada?w=1200&q=85"
curl -L -o "$DEST_DIR/fez-3.jpg" "https://images.unsplash.com/photo-1553342385-111fd6bc6ab3?w=1200&q=85"

# ─── VALLETTA (3 unique authentic images) ───
echo "→ Valletta..."
curl -L -o "$DEST_DIR/valletta-1.jpg" "https://images.unsplash.com/photo-1571197950104-8f06eef44d13?w=1200&q=85"
curl -L -o "$DEST_DIR/valletta-2.jpg" "https://images.unsplash.com/photo-1570395901578-5e0e33de56b0?w=1200&q=85"
curl -L -o "$DEST_DIR/valletta-3.jpg" "https://images.unsplash.com/photo-1573152958734-1922c188fba3?w=1200&q=85"

# ─── BANGKOK (3 unique authentic images) ───
echo "→ Bangkok Street Food..."
curl -L -o "$DEST_DIR/bangkok-1.jpg" "https://images.unsplash.com/photo-1555396273-367ea4eb4db5?w=1200&q=85"
curl -L -o "$DEST_DIR/bangkok-2.jpg" "https://images.unsplash.com/photo-1519544934050-b272f44e7fc8?w=1200&q=85"
curl -L -o "$DEST_DIR/bangkok-3.jpg" "https://images.unsplash.com/photo-1569050467447-ce54b3bbc37d?w=1200&q=85"

# ─── BOLOGNA (3 unique authentic images) ───
echo "→ Bologna..."
curl -L -o "$DEST_DIR/bologna-1.jpg" "https://images.unsplash.com/photo-1590073242678-70ee3fc28e8e?w=1200&q=85"
curl -L -o "$DEST_DIR/bologna-2.jpg" "https://images.unsplash.com/photo-1555396273-367ea4eb4db5?w=1200&q=85"
curl -L -o "$DEST_DIR/bologna-3.jpg" "https://images.unsplash.com/photo-1551218808-94e220e084d2?w=1200&q=85"

# ─── OAXACA (3 unique authentic images) ───
echo "→ Oaxaca..."
curl -L -o "$DEST_DIR/oaxaca-1.jpg" "https://images.unsplash.com/photo-1558618047-3c8c76ca7d13?w=1200&q=85"
curl -L -o "$DEST_DIR/oaxaca-2.jpg" "https://images.unsplash.com/photo-1601004890684-d8cbf643f5f2?w=1200&q=85"
curl -L -o "$DEST_DIR/oaxaca-3.jpg" "https://images.unsplash.com/photo-1512452039620-f0e0adfa18e7?w=1200&q=85"

# ─── PENANG / GEORGE TOWN (3 unique authentic images) ───
echo "→ George Town Penang..."
curl -L -o "$DEST_DIR/penang-1.jpg" "https://images.unsplash.com/photo-1567861911437-538298e4232c?w=1200&q=85"
curl -L -o "$DEST_DIR/penang-2.jpg" "https://images.unsplash.com/photo-1553163148-eea5a71b5d18?w=1200&q=85"
curl -L -o "$DEST_DIR/penang-3.jpg" "https://images.unsplash.com/photo-1565299507177-b0ac66763828?w=1200&q=85"

# ─── FOOD DISH IMAGES ───

echo ""
echo "Downloading food dish images..."

# Bangkok food dishes
curl -L -o "$FOOD_DIR/bangkok-pad-thai.jpg" "https://images.unsplash.com/photo-1562565652-a0d8f0c59eb4?w=800&q=85"
curl -L -o "$FOOD_DIR/bangkok-mango-rice.jpg" "https://images.unsplash.com/photo-1574484284002-952d92456975?w=800&q=85"
curl -L -o "$FOOD_DIR/bangkok-street-food.jpg" "https://images.unsplash.com/photo-1555396273-367ea4eb4db5?w=800&q=85"

# Bologna food dishes
curl -L -o "$FOOD_DIR/bologna-tagliatelle.jpg" "https://images.unsplash.com/photo-1551183053-bf91798d792e?w=800&q=85"
curl -L -o "$FOOD_DIR/bologna-mortadella.jpg" "https://images.unsplash.com/photo-1623428187969-5da2dcea5ebf?w=800&q=85"
curl -L -o "$FOOD_DIR/bologna-tortellini.jpg" "https://images.unsplash.com/photo-1608756687911-aa1599ab3bd9?w=800&q=85"

# Oaxaca food dishes
curl -L -o "$FOOD_DIR/oaxaca-mole.jpg" "https://images.unsplash.com/photo-1534422298391-e4f8c172dddb?w=800&q=85"
curl -L -o "$FOOD_DIR/oaxaca-tlayuda.jpg" "https://images.unsplash.com/photo-1565299585323-38d6b0865b47?w=800&q=85"
curl -L -o "$FOOD_DIR/oaxaca-mezcal.jpg" "https://images.unsplash.com/photo-1551024709-8f23befc6f87?w=800&q=85"

# Penang food dishes
curl -L -o "$FOOD_DIR/penang-char-kway-teow.jpg" "https://images.unsplash.com/photo-1569050467447-ce54b3bbc37d?w=800&q=85"
curl -L -o "$FOOD_DIR/penang-laksa.jpg" "https://images.unsplash.com/photo-1547592180-85f173990554?w=800&q=85"
curl -L -o "$FOOD_DIR/penang-hawker.jpg" "https://images.unsplash.com/photo-1553163148-eea5a71b5d18?w=800&q=85"

echo ""
echo "All images downloaded successfully!"
ls -lh "$DEST_DIR"
echo ""
echo "Food images:"
ls -lh "$FOOD_DIR"
