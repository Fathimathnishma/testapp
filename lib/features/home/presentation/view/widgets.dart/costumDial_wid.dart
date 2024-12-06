
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/features/home/presentation/provider/main_prvider.dart';
import 'package:test_app/general/utils/app_color.dart';
import 'package:test_app/main.dart';


class CustomDialogWid extends StatefulWidget {
  const CustomDialogWid({super.key});

  @override
  State<CustomDialogWid> createState() => _CustomDialogWidState();
}

class _CustomDialogWidState extends State<CustomDialogWid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconst.primaryColor.withOpacity(0.7),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Dialog(
            child: Consumer<MainProvider>(
              builder: (context, stateUserAdd, child) => Center(
                child: Container(
                  height: height * 0.3,
                  width: width * 1,
                  color: Colorconst.whiteColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text("New Data"),
                        TextFormField(
                          controller: stateUserAdd.nameController,
                          decoration: const InputDecoration(
                            hintText: "enter your name",
                          ),
                        ),
                        TextFormField(
                          // validator: ,
                          controller: stateUserAdd.amountController,
                          decoration: const InputDecoration(
                            hintText: "enter amount",
                          ),
                          keyboardType: TextInputType.number,
                        ),
                        InkWell(
                          onTap: () async {
                            if (stateUserAdd.nameController.text.isNotEmpty &&
                                stateUserAdd.amountController.text.isNotEmpty) {
                              
                                stateUserAdd.addData(onSuccess: () { 
                                  
                                  Navigator.pop(context);
                                 }, errors: (String errorMessage) {  }  
                                );
                               
                                 stateUserAdd.addShowDialog(context);
                               
                               stateUserAdd. nameController.clear();
                                stateUserAdd.amountController.clear();
                                Navigator.pop(context);
                              
                           
                            }
                          },
                          child: Container(
                              height: height * 0.05,
                              width: width * 0.2,
                              decoration: BoxDecoration(
                                  color: Colorconst.primaryColor,
                                  borderRadius:
                                      BorderRadius.circular(width * 0.02)),
                              child: const Center(
                                child: Text(
                                  "Create",
                                  style:
                                      TextStyle(color: Colorconst.whiteColor),
                                ),
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
