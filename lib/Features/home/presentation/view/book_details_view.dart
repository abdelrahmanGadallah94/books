import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: IconButton(onPressed: (){}, icon: const Icon(Icons.close)),
        actions: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart_outlined)),
        ],
      ),

    );
  }
}
