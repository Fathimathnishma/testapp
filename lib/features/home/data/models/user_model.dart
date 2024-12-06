

class Usermodel {
  String name;
  int amount;
  String id;
  Usermodel({
    required this.name,
    required this.amount,
    required this.id
  });

  Usermodel copyWith({
    String? name,
    int? amount, required String id,
  }) {
    return Usermodel(
      name: name ?? this.name,
      amount: amount ?? this.amount,
       id: id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'amount': amount,
      "id":id
    };
  }

  factory Usermodel.fromMap(Map<String, dynamic> map) {
    return Usermodel(
      name: map['name'] as String,
      amount: map['amount'] as int,
       id: map["id"] as String,
    );
  }

  
}
