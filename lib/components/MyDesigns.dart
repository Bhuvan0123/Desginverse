import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/Design.dart';

class MyDesigns extends ChangeNotifier {
  List<Design> mydesigns = [
    Design(
        name: "Lion",
        description:
            "The lion, Panthera leo, is a majestic apex predator known for its golden fur, powerful physique, and distinctive mane, symbolizing strength and pride in the animal kingdom.",
        imagepath: "lib/assets/images/logo/lion.jpeg",
        category: "logo",
        isliked: false),
    Design(
        name: "Eagle1",
        description:
            "The eagle, characterized by its impressive wingspan, keen eyesight, and graceful flight, epitomizes freedom and mastery of the skies among birds of prey.",
        imagepath: "lib/assets/images/logo/eagle2.jpeg",
        category: "logo",
        isliked: false),
    Design(
        name: "Color Curves",
        description:
            "Captivating color wave showcasing a spectrum of vibrant hues in motion.",
        imagepath: "lib/assets/images/pattern/colorwave.jpg",
        category: "Pattern",
        isliked: false),
    Design(
        name: "Eagle2",
        description:
            "The eagle, characterized by its impressive wingspan, keen eyesight, and graceful flight, epitomizes freedom and mastery of the skies among birds of prey.",
        imagepath: "lib/assets/images/logo/eagle5.jpeg",
        category: "logo",
        isliked: false),
    Design(
        name: "Eagle3",
        description:
            "The eagle, characterized by its impressive wingspan, keen eyesight, and graceful flight, epitomizes freedom and mastery of the skies among birds of prey.",
        imagepath: "lib/assets/images/logo/eagle6.png",
        category: "logo",
        isliked: false),
    Design(
        name: "Barleycorn",
        description:
            "Barleycorn material is a textured fabric woven with a distinctive pattern resembling barleycorns, ideal for creating stylish and durable clothing and accessories.",
        imagepath: "lib/assets/images/pattern/barleycorn.jpg",
        category: "pattern",
        isliked: false),
    Design(
        name: "Floral",
        description:
            "Floral material refers to fabrics featuring decorative patterns of flowers and botanical motifs, commonly used for crafting garments and home textiles with a vibrant and charming aesthetic.",
        imagepath: "lib/assets/images/pattern/floral.jpeg",
        category: "pattern",
        isliked: false),
    Design(
        name: "Gingham",
        description:
            "Gingham is a fabric characterized by a checkered pattern with even-sized, colored squares (usually white and another color) intersecting to form a grid, creating a classic, versatile look for clothing and home decor.",
        imagepath: "lib/assets/images/pattern/gingham.jpeg",
        category: "pattern",
        isliked: false),
    Design(
        name: "Glen check",
        description:
            "Glen check, also known as Prince of Wales check, is a classic woven pattern characterized by alternating small and large checks in muted colors like grey, black, and white, often used in tailored suits and outerwear for a timeless and sophisticated appearance.",
        imagepath: "lib/assets/images/pattern/glen check.jpg",
        category: "pattern",
        isliked: false),
    Design(
        name: "Nails head",
        description:
            "Nailhead, or sometimes referred to as nailhead weave or microcheck, is a textured fabric pattern featuring small, closely spaced woven dots or squares resembling the head of a nail, often used in suiting and upholstery for a subtle yet distinguished look.",
        imagepath: "lib/assets/images/pattern/nails head.jpeg",
        category: "pattern",
        isliked: false),
    Design(
        name: "paisley",
        description:
            "Paisley is a distinctive fabric pattern featuring a teardrop-shaped motif of Persian origin, often used in textiles and fashion design to create a rich and ornate look with a heritage-inspired feel.",
        imagepath: "lib/assets/images/pattern/paisley1.jpg",
        category: "pattern",
        isliked: false),
    Design(
        name: "windowpane",
        description:
            "Windowpane is a fabric pattern characterized by a grid of thin, widely spaced vertical and horizontal lines that create large, open squares resembling the panes of a window, typically used in suiting and outerwear for a bold and classic aesthetic.",
        imagepath: "lib/assets/images/pattern/windowpane.jpg",
        category: "pattern",
        isliked: false)
  ];

  List<Design> lds = [];

  List<Design> get designs => mydesigns;

  List<Design> get likeddesigns => lds;

  //add into liked design
  void likeDesign(Design d) {
    likeddesigns.add(d);
    d.isliked = true;
    notifyListeners();
  }

  //remove from liked design
  void unlikedesign(Design d) {
    likeddesigns.remove(d);
    d.isliked = false;
    notifyListeners();
  }
}
