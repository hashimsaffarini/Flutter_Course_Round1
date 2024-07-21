import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: const Text('Welcome to Flutter'),
        leading: InkWell(
          onTap: () {},
          child: const Icon(
            Icons.arrow_back_rounded,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: const Column(
        children: [
          Row(
            children: [
              Text('Hello'),
              Text('Hello'),
              Text('Hello'),
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Row(
            children: [
              Text('Hello'),
              Text('Hello'),
              Text('Hello'),
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Row(
            children: [
              Text('Hello'),
              Text('Hello'),
              Text('Hello'),
            ],
          )
        ],
      ),
    );
  }
}
//named function.... ananyomous function

