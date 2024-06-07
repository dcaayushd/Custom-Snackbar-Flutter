// final_view.dart
import 'package:custom_snackbar/snackbars.dart';
import 'package:custom_snackbar/colors.dart'; // Import the colors file
import 'package:flutter/material.dart';

class FinalView extends StatefulWidget {
  const FinalView({super.key});

  @override
  State<FinalView> createState() => _FinalViewState();
}

class _FinalViewState extends State<FinalView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appBarColor, 
          centerTitle: true,
          title: const Text(
            "Custom Snackbar",
            style: TextStyle(color: appBarTitleColor), // Use the imported color constant
          ),
        ),
        backgroundColor: backgroundColor, // Use the imported color constant
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// Failure
              MaterialButton(
                color: failureButtonColor, // Use the imported color constant
                onPressed: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(MySnackBars.failureSnackBar);
                },
                child: const Text(
                  "Open SnackBar - 🔴 Failure ",
                  style: TextStyle(color: textColor), // Use the imported color constant
                ),
              ),

              /// Help
              MaterialButton(
                color: helpButtonColor, // Use the imported color constant
                onPressed: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(MySnackBars.helpSnackBar);
                },
                child: const Text(
                  "Open SnackBar - ❔ Help ",
                  style: TextStyle(color: textColor), // Use the imported color constant
                ),
              ),

              /// Success
              MaterialButton(
                color: successButtonColor, // Use the imported color constant
                onPressed: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(MySnackBars.successSnackBar);
                },
                child: const Text(
                  "Open SnackBar - ✅ Success ",
                  style: TextStyle(color: textColor), // Use the imported color constant
                ),
              ),

              /// Warning
              MaterialButton(
                color: warningButtonColor, // Use the imported color constant
                onPressed: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(MySnackBars.warningSnackBar);
                },
                child: const Text(
                  "Open SnackBar - ⚠ Warning",
                  style: TextStyle(color: textColor), // Use the imported color constant
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}