import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:test_app/features/home/data/models/i_mainfacade.dart';
import 'package:test_app/features/home/data/models/user_model.dart';
import 'package:test_app/general/failures/failures.dart';

import 'package:test_app/general/utils/firebasecollection.dart';

class MainProvider extends ChangeNotifier{
  final IMainfacade iMainfacade;
  MainProvider(
    this.iMainfacade,
  ); 

 TextEditingController nameController = TextEditingController();
  TextEditingController amountController = TextEditingController();

final dataCollection =FirebaseFirestore.instance.collection(Firebasecollection.userDatas);
  bool isLoading = false;
  bool noMoreData = false;
  DocumentSnapshot? lastDoc;
  // List<Usermodel>allData;

  List<Usermodel> alldata = [];


Future<void> addData({
  required void Function() onSuccess,
  required void Function(String errorMessage) errors,
}) async {
  Usermodel usermodel = Usermodel(
    name: nameController.text,
    amount: int.parse(amountController.text),
    id: dataCollection.doc().id,
  );

  final result = await iMainfacade.addData(usermodel: usermodel);

  result.fold(
    (failure) {
      errors(failure.errormsg);
    },
    (success) {
      alldata.add(usermodel);
      onSuccess();
    },
  );
}


Future<void>addShowDialog(BuildContext context)async {
   return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (
        context,
      ) {
        return const PopScope(
          canPop: false,
          child: AlertDialog(
            content: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircularProgressIndicator(),
                SizedBox(height: 16),
                Text("Adding Data"),
              ],
            ),
          ),
        );
      },
    );
}
 



 

 

  /// Fetch data from Firestore
  Future<void> fetchData({
    required void Function() onSuccess,
    required void Function(String errorMessage) onError,
  }) async {
    // Prevent duplicate fetch calls
    if (isLoading||noMoreData) {
      return;
    }

    isLoading = true;
    notifyListeners(); // Notify listeners that loading has started

    final fetchResult = await iMainfacade.fetchData(
      isLoading: isLoading,
      noMoreData: noMoreData,
      lastDoc: lastDoc,
     );

    fetchResult.fold(
      (failure) {
        isLoading = false; // Stop loading on failure
        notifyListeners(); // Notify listeners about the state change
        onError(failure.errormsg); // Handle error callback
      },
      (success) {
        isLoading = false; // Stop loading on success
        notifyListeners(); // Notify listeners about the updated data
        onSuccess(); // Handle success callback
      },
    );
  }




}