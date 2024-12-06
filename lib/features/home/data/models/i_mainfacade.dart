import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:test_app/features/home/data/models/user_model.dart';
import 'package:test_app/general/failures/failures.dart';

abstract class IMainfacade {
  Future<Either<MainFailures, String>> addData({required Usermodel usermodel}) {
    throw UnimplementedError("no implementation");
  }

  Future<Either<MainFailures, String>> fetchData({
     required bool isLoading,
    required bool noMoreData,
    DocumentSnapshot<Object?>? lastDoc,
 
  }) {
    throw UnimplementedError("no implementation");
  }
}
