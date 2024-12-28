import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          color: Colors.black,
        ),
        actions: [
          Padding(padding: EdgeInsets.only(right: 16), 
            child: CircleAvatar(
              backgroundColor: Colors.deepOrange.shade50,
              child: IconButton(
                onPressed: () {
                },
                icon: Icon(Icons.shopping_cart),
                color: Colors.deepOrange,
              ),
            ),
          )
        ] 
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(16), 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Delicious Food', 
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
              ),
              Text(
                "Delivered to your Door",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 10,
                      blurRadius: 8,
                    )
                  ]
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search your favourite food",
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.filter_alt),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    )
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}