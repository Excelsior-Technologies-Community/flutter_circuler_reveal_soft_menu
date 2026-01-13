# CirculerRevealSoftMenu

A customizable Circular / Radial Reveal Soft Menu widget for Flutter.
This widget displays multiple menu items arranged in a circular layout with smooth reveal animation.

---
## ✨ Features
* 🎯 Circular / radial menu layout
* 🔄 Smooth open & close animation
* 🎨 Customizable colors
* 🔳 Custom border radius (circle, rounded, square)
* 📏 Adjustable menu item size
* 🧩 Clean & reusable widget structure
* 🚀 Ready for future library conversion

---
## ✨ Preview
![screen-20260113-1627382](https://github.com/user-attachments/assets/6cf30d6c-94c2-49c3-a1f4-18b49f337e4e)

---
## ✨ Installation
Add this to your package's pubspec.yaml file:
```
dependencies:
  flutter_circuler_reveal_soft_menu:
    path: ../flutter_circuler_reveal_soft_menu  # For local development
```
from git:
```
dependencies:
  flutter_circuler_reveal_soft_menu:
    git:
      url: https://github.com/yourusername/flutter_circuler_reveal_soft_menu.git  # Your github path
``` 
Then run:
```
flutter pub get
```
---
## 📁 Project Structure
```
lib/
│
├── models/
│   └── menu_item_model.dart
│
├── utils/
│   └── menu_constants.dart
│
├── widgets/
│   └── circular_reveal_soft_menu.dart
│
├── screens/
│   ├── home_screen.dart
│   └── profile_screen.dart
│
└── main.dart

```
---
## 🧩 Menu Item Model
```
class MenuItemModel {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  MenuItemModel({
    required this.icon,
    required this.label,
    required this.onTap,
  });
}
```
---
## ⚙️ Constants Configuration
```
const double menuRadius = 120;
const Duration animationDuration = Duration(milliseconds: 500);

```
---
## 🚀 Usage Example
##### Basic Implementation
```
CircularRevealSoftMenu(
  items: [
    MenuItemModel(
      icon: Icons.home,
      label: 'Home',
      onTap: () {},
    ),
    MenuItemModel(
      icon: Icons.person,
      label: 'Profile',
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ProfileScreen(),
          ),
        );
      },
    ),
  ],
)
```
---
## 🎨 Customization Options
#### 1️⃣ Menu Item Border Radius
```
final double menuItemBorderRadius = 10;
```
| Value | Shape       |
| ----- | ----------- |
| `0`   | Square      |
| `6`   | Soft square |
| `12`  | Rounded     |
| `50`  | Circle      |

---
## 2️⃣ Menu Item Size
```
final double menuItemSize = 42;
```
---
## 3️⃣ Background Color
```
CircularRevealSoftMenu(
  backgroundColor: Colors.deepPurple,
  items: [...]
)
```
---
## 🧠 How It Works
* Uses Stack + Transform.translate
* Menu items placed using sin & cos
* AnimationController + Curves.easeOutBack
* Opacity clamped between 0.0 – 1.0 to avoid crashes
---

## 🛠 Common Customizations
* ✅ Add labels under icons
* ✅ Multi-ring menus (for many items)
* ✅ Bottom-right floating radial menu
* ✅ Blur / glassmorphism effects
* ✅ Long-press to open menu
---

## 📜 License
MIT License
```
Copyright (c) 2025 Excelsior Technologies

Permission is hereby granted, free of charge, to any person obtaining a copy  
of this software and associated documentation files (the "Software"), to deal  
in the Software without restriction, including without limitation the rights  
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell  
copies of the Software, and to permit persons to whom the Software is  
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all  
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED **"AS IS"**, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR  
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,  
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
```
---
