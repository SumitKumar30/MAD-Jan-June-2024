import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:second_app/model/eligibility_provider.dart';

class EligibilityScreen extends StatelessWidget {
  final ageController = TextEditingController();
  EligibilityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<EligibilityProvider>(
      create: (context) => EligibilityProvider(),
      child: Builder(builder: (context) {
        return Scaffold(
          body: Container(
            padding: EdgeInsets.all(16),
            child: Form(
                child: Consumer<EligibilityProvider>(
                  builder: (context, provider, child){
                      return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, 
                      //if isEligible is null then set orange color else if it is true then set green else red 
                              color: (provider.isEligible == null) ? Colors.orangeAccent : provider.isEligible ? Colors.green : Colors.redAccent
                      ),
                  height: 50,
                  width: 50,
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: ageController,
                  decoration: InputDecoration(hintText: 'Enter your age'),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: Text("Check"),
                    style: ElevatedButton.styleFrom(primary: Colors.blueAccent),
                    onPressed: () {
                      //getting the text from TextField and converting it into int
                              final int age = int.parse(ageController.text.trim());
                              
                              //Calling the method from provider.
                              provider.checkEligiblity(age);
                    },
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(provider.eligiblityMessage)
              ],
                      );
                  }
              
            )),
          ),
        );
      }),
    );
  }
}
