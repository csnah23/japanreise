import "package:flutter/material.dart";
import "package:japan_reise/components/button.dart";

class NoodleHarmonyPage extends StatelessWidget {
  const NoodleHarmonyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 215, 165, 187),
      appBar: AppBar(
        title: Text("J A P A N"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.dark_mode)),
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Icon(Icons.shopping_cart),
          )
        ],
      ),
      body: ListView(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              "lib/images/japan3.png",
              height: 220,
            ),
          ),
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0),
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 30,
                ),
                Text(
                  "4,0",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: const Text(
              "Noodle Harmony Japan",
              style: TextStyle(
                fontSize: 28,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: const Text(
              "Das erwartet Sie",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: const Text(
              "Das Noodle Harmony in Tokio ist mehr als nur ein Restaurant, es ist eine Oase für alle Liebhaber authentischer japanischer Nudel??? schmelzen traditionelle Rezepte und moderne Kochtechniken, um ein einzigartiges Geschmackserlebnis zu kreieren, das jeden Gaumen entzückt",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                height: 1.5,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(25),
              color: Color.fromARGB(255, 61, 91, 212),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "€ 49,00",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: IconButton(
                                onPressed: () {}, icon: Icon(Icons.remove)),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            "2",
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: IconButton(
                                onPressed: () {}, icon: Icon(Icons.add)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  MyButton(
                    mytext: "Zum Einkaufswagen",
                    event: () => Navigator.pushNamed(context, '/cartpage'),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
