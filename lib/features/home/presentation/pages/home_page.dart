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
        title: const Text('Accra, GH'),
        actions: [
          IconButton(
              onPressed: () async {
                return await showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20))),
                    context: context,
                    builder: (context) => Container(
                          padding: const EdgeInsets.all(20),
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.3,
                        ));
              },
              icon: const Icon(Icons.travel_explore_outlined))
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // City
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 10),
                child: Text(
                  'Accra',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .apply(fontWeightDelta: 2),
                ),
              ),
              // Current date
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(
                  'Wednesday - 24 June',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              // Temperature
              Text(
                '14*',
                style: Theme.of(context).textTheme.headline1!.apply(
                    fontSizeFactor: 1.8,
                    fontWeightDelta: 6,
                    color: Colors.black),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Its the sun time',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text(
                      '15* - 17*',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Wind: 29kmh',style: Theme.of(context).textTheme.headline6,),
                  Text(
                    'Humility: 23%',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Pressure: 1002Pa',style: Theme.of(context).textTheme.headline6,),
                    Text(
                      'visibility: 2000',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
