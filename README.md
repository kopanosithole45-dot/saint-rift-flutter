# Saint Rift - Black Streetwear Ecommerce Flutter App

🖤 **A modern Flutter ecommerce application with a sleek black streetwear theme - Now available as a Web App!**

## Features

✅ **Bottom Navigation** - Easy navigation between Home, Shop, Cart, and Profile
✅ **Home Screen** - Large banner with "New Drop" collection and featured products
✅ **Shop Screen** - Browse all products with category filtering (Hoodies, Shirts, Jackets)
✅ **Cart Screen** - Manage items with quantity adjustment and order summary
✅ **Profile Screen** - User profile with menu options
✅ **Material Design 3** - Modern UI with Material components
✅ **Black Streetwear Theme** - Dark aesthetic with white accents
✅ **Responsive Design** - Works on all screen sizes
✅ **Web Ready** - Runs in browser as HTML/JavaScript app

## Quick Start - Web (Browser)

### Prerequisites
- Flutter 3.0.0 or higher
- Dart SDK
- VS Code

### Installation & Launch

1. **Clone the repository:**
```bash
git clone https://github.com/kopanosithole45-dot/saint-rift-flutter.git
cd saint-rift-flutter
```

2. **Install dependencies:**
```bash
flutter pub get
```

3. **Run the web app:**
```bash
flutter run -d chrome
```

OR

4. **From VS Code:**
- Press `F5` or click Run → Run Without Debugging
- Select Chrome when prompted
- App opens in your browser!

### Alternative: Run on Edge or Firefox

```bash
# Run on Edge
flutter run -d edge

# Run on Firefox
flutter run -d firefox
```

## Project Structure

```
saint-rift-flutter/
├── lib/
│   ├── main.dart                 # App entry point
│   ├── models/
│   │   └── product.dart         # Product model
│   ├── widgets/
│   │   └── product_card.dart    # Reusable product card
│   └── screens/
│       ├── home_screen.dart     # Home with banner & products
│       ├── shop_screen.dart     # Shop with category filtering
│       ├── cart_screen.dart     # Shopping cart
│       └── profile_screen.dart  # User profile
├── web/
│   ├── index.html               # Web entry point
│   ├── manifest.json            # PWA manifest
│   └── favicon.png              # App icon
├── android/                      # Android config
├── ios/                          # iOS config
├── pubspec.yaml                 # Dependencies
└── README.md
```

## Available Products

### Hoodies
- Classic Black Hoodie - $89.99
- Monochrome Hoodie - $94.99
- Tech Hoodie - $109.99

### Shirts
- Oversized Graphic Shirt - $49.99
- Vintage Band Shirt - $54.99
- Streetwear Logo Shirt - $59.99

### Jackets
- Leather Bomber Jacket - $199.99
- Denim Jacket - $129.99
- Puffer Jacket - $159.99

## Features

### Home Screen
- Large banner with "NEW DROP" collection
- Featured products grid
- Search and notifications

### Shop Screen
- All products catalog
- Category filter (All, Hoodies, Shirts, Jackets)
- Product cards with add to cart

### Cart Screen
- View cart items
- Adjust quantities
- Order summary with tax calculation
- Checkout button

### Profile Screen
- User profile info
- My Orders
- Wishlist
- Addresses
- Payment Methods
- Settings
- Help & Support
- Logout

## Troubleshooting

### App won't start
```bash
flutter clean
flutter pub get
flutter run -d chrome
```

### Port already in use
```bash
flutter run -d chrome --web-port=8080
```

### Build issues
```bash
flutter clean
flutter pub cache clean
flutter pub get
flutter run -d chrome -v
```

## Future Enhancements

- Add product images
- Integrate payment gateway
- User authentication & registration
- Order tracking
- Product reviews and ratings
- Wishlist functionality
- Push notifications
- Backend API integration
- Dark/Light theme toggle

## Repository

🔗 **GitHub**: https://github.com/kopanosithole45-dot/saint-rift-flutter

## Author

👨‍💻 **Kopano Sithole**

---

**Enjoy shopping at Saint Rift! 🖤**