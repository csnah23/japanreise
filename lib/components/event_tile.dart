import 'package:flutter/material.dart';

class EvenTile extends StatelessWidget {
  final String name;
  final String price;
  final String imagePath;
  final String rating;
  final void Function()? details;

  const EvenTile({
    super.key,
    required this.name,
    required this.price,
    required this.imagePath,
    required this.rating,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      padding: EdgeInsets.all(8),
      width: 200,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 61, 91, 212),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: details,
            child: Image.asset(imagePath),
          ),
          Text(
            name,
            style: const TextStyle(fontSize: 18, color: Colors.white),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                price,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Row(
                children: [
                  Text(
                    rating,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.star,
                    size: 15,
                    color: Color.fromARGB(255, 224, 198, 6),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
