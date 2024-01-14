import 'package:flutter/material.dart';
import 'package:japan_reise/models/cart_model.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>(
      builder: (context, cartModel, child) => Scaffold(
        backgroundColor: Color.fromARGB(255, 215, 165, 187),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text("Warenkorb"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    if (cartModel.nudelsuppe > 0)
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 61, 91, 212),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ListTile(
                          title: Text(
                            "Nudelsuppe",
                            style: TextStyle(color: Colors.white),
                          ),
                          subtitle: Text(
                            "€ 18,00",
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                cartModel.nudelsuppe.toString(),
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(width: 10),
                              IconButton(
                                onPressed: cartModel.clearNudelsuppe,
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    SizedBox(height: 15),
                    if (cartModel.festival > 0)
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 61, 91, 212),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ListTile(
                          title: Text(
                            "Mitama Matsuri Festival",
                            style: TextStyle(color: Colors.white),
                          ),
                          subtitle: Text(
                            "€49,00",
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                cartModel.festival.toString(),
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(width: 10),
                              IconButton(
                                onPressed: cartModel.clearFestival,
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    //KOCHKURS KAWAII SUSHI MAKING
                    SizedBox(height: 15),
                    if (cartModel.cooking > 0)
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 61, 91, 212),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ListTile(
                          title: Text(
                            "Kochkurs Kawaii Sushi Making",
                            style: TextStyle(color: Colors.white),
                          ),
                          subtitle: Text(
                            "€53,00",
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                cartModel.cooking.toString(),
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(width: 10),
                              IconButton(
                                onPressed: cartModel.clearCooking,
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    SizedBox(height: 50),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 61, 91, 212),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListTile(
                        title: Text(
                          "Menge der Events",
                          style: TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(
                          cartModel.totalItems.toString(),
                          style: TextStyle(color: Colors.white),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              cartModel.festival.toString(),
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(width: 10),
                            IconButton(
                              onPressed: cartModel.clearFestival,
                              icon: Icon(
                                Icons.delete,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
