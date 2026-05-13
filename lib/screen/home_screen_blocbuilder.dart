import 'package:flutter/material.dart';
import 'package:flutter_post_bloc_ti4ta/bloc/bloc_imports.dart';

class HomeScreenBuilder extends StatefulWidget {
  const HomeScreenBuilder({Key? key}) : super(key: key);

  @override
  State<HomeScreenBuilder> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreenBuilder> {
  // HAPUS: int counterValue = 0; <- Ini sudah tidak dipakai karena pakai BLoC

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
              child: BlocBuilder<CounterBloc, CounterState>(
                builder: (context, state) {
                  // Mengambil nilai dari state BLoC, bukan variabel lokal
                  return Text(
                    'Nilai Counter : ${state.counterValue}',
                    style: const TextStyle(fontSize: 20),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () => context.read<CounterBloc>().add(CounterDecrementEvent()),
                      icon: const Icon(Icons.remove),
                      label: const Text('Kurang'),
                    ),
                  ),
                  const SizedBox(width: 30),
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () => context.read<CounterBloc>().add(CounterIncrementEvent()),
                      icon: const Icon(Icons.add),
                      label: const Text('Tambah'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}