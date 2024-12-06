import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:test_app/features/home/data/models/i_mainfacade.dart';
import 'package:test_app/features/home/data/models/user_model.dart';
import 'package:test_app/general/failures/failures.dart';
import 'package:test_app/general/utils/firebasecollection.dart';

@LazySingleton(as: IMainfacade)
class IMainImpl implements IMainfacade{
  final FirebaseFirestore firestore;
  IMainImpl(this.firestore);
  

  
  @override
  Future<Either<MainFailures, String>> addData({required Usermodel usermodel}) async {
    
try{
  final userRef = firestore.collection(Firebasecollection.userDatas);
  final userId = userRef.doc().id;
  final user = usermodel.copyWith(id:userId);
  
  
  await userRef.doc(userId).set(user.toMap());
  return right("Data added");
} catch (e){
return left(MainFailures.serverFailures(errormsg: e.toString()));
}

  }



@override
  Future<Either<MainFailures, String>> fetchData({
       required void Function() onSuccess,
  required void Function(String errorMessage) errors,
    DocumentSnapshot<Object?>? lastDoc,
 
  })async {
  try {
    // Define the Firebase collection
    final dataCollection = FirebaseFirestore.instance.collection(Firebasecollection.userDatas);

    // Start the fetch process (you can add pagination here if needed)
    final snapshot = await dataCollection.limit(10).get();

    // Check if data exists
    if (snapshot.docs.isNotEmpty) {
      // Convert the documents to Usermodel
      final userData = snapshot.docs
          .map((doc) => Usermodel.fromMap(doc.data() as Map<String, dynamic>))
          .toList();

      // Add the fetched data to your alldata list
      alldata.addAll(userData);

      // Call the onSuccess callback if data is fetched successfully
      onSuccess();
    } else {
      // No data fetched, handle accordingly
      errors("No data found");

    }
    return right()
  } catch (e) {
    // If there's an error, call the errors callback
   return MainFailures.serverFailures(errormsg: errors(e.toString()));
  }
}

}