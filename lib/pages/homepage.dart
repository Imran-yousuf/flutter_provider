import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_provider/main.dart';
import 'package:flutter_provider/provider/home_page_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final items = ['BTC', 'ETH', 'BNB', 'SOL', 'ADA'];
  String dropdownValue = 'BTC';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: ChangeNotifierProvider<HomePageProvider>(
            create: (context) => HomePageProvider(),
            child: Consumer<HomePageProvider>(
              builder: (context, provider, child) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(dropdownValue),
                    Text(
                      provider.eligibilityMessage.toString(),
                      style: TextStyle(
                          color: (provider.isEligible == true)
                              ? Colors.green
                              : Colors.red),
                    ),
                    DropdownButton<String>(
                      value: dropdownValue,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      style: const TextStyle(color: Colors.deepPurple),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                        provider.checkEligibility(dropdownValue);
                      },
                      items: <String>['BTC', 'ETH', 'BNB', 'SOL']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                );
              },
            )),
      )),
    );
  }
}
