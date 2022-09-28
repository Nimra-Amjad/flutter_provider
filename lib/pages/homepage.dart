import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_1/providers/homepage_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
          padding: const EdgeInsets.all(20),
          child: ChangeNotifierProvider<HomePageProvider>(
            create: (context) => HomePageProvider(),
            child:
                Consumer<HomePageProvider>(builder: (context, provider, child) {
              return Column(
                children: [
                  Text(provider.eligibilityMessage.toString(),
                      style: TextStyle(
                          color: (provider.iseligible == true)
                              ? Colors.green
                              : Colors.red)),
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: "Enter your age",
                    ),
                    onChanged: (age) {
                      provider.checkEligibility(int.parse(age));
                    },
                  )
                ],
              );
            }),
          )),
    ));
  }
}
