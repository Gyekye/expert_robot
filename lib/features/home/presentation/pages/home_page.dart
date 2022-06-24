import '../../../../injection_container.dart';
import '../bloc/home_bloc.dart';
import 'package:flutter/material.dart';

// Home page UI
class HomePage extends StatefulWidget {
  // Constructor
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Home bloc
  final bloc = sl<HomeBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text('London, GB'),
        actions: [
          IconButton(onPressed: ()async {
            await bloc.retrieveForecast('Accra');
          }, icon: const Icon(Icons.search_outlined))
        ],
      ),
    );
  }
}
