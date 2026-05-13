import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counterValue = 0;

  void increaseCounter() {
    setState(() {
      counterValue++;
    });
  }

  void decreaseCounter() {
    setState(() {
      counterValue--;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('Semua \'HomeScreen\' dibangun');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan BLoC Dasar'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Text(
                  'Nilai Counter : ${counterValue}',
                  style: TextStyle(fontSize: 20),
                )),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () => decreaseCounter(),
                      icon: const Icon(Icons.remove),
                      label: const Text('Kurang'),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () => increaseCounter(),
                        icon: const Icon(Icons.add),
                        label: const Text('Tambah'),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}