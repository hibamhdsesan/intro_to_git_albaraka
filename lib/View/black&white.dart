import 'dart:convert';

import 'package:flutter/material.dart';

class Black_White_Screen extends StatelessWidget {
  const Black_White_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("hiba"),
                accountEmail: Text(
                  "hiba@gmail.com",
                ),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.settings),
                title: Text("settings"),
              )
            ],
          ),
        ),
        body: ListView(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                  
                  border: Border.all(
                    color: Colors.black,
                    width: 3.0,
                  )),
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("product",style: TextStyle(color: Colors.grey),),
                    Text("Brand New Product",style:  TextStyle(fontWeight: FontWeight.bold),),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        )

                      ),
                      child: Text("botton",style: TextStyle(color: Colors.white),),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Center(
              child: Text("Our Products",style:  TextStyle(fontWeight: FontWeight.bold)),
            ),
            ProductListView(),
            ProductListView(),
            ProductListView(),
          ],
        ));
  }
}

class ProductListView extends StatelessWidget {
  ProductListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 500,
            height: 150,
            child: Icon(Icons.close,color: const Color.fromARGB(255, 61, 37, 37),size:150),
            decoration:
                BoxDecoration(border: Border.all(color: Colors.black, width: 3)),
          ),
          Text("New Product",style:  TextStyle(fontWeight: FontWeight.bold)),
          Text("Body text",style: TextStyle(color: Colors.grey),),
        ],
      ),
    );
  }
}
