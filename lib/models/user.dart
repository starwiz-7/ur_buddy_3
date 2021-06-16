import 'package:ur_buddy_3/models/classified.dart';

class User {
  final String id;
  final String name;
  final String email;
  final String hostelAddress;
  final String phoneNumber;
  final List<Classified> onSaleProducts;

  User({
    this.id,
    this.name,
    this.email,
    this.hostelAddress,
    this.phoneNumber,
    this.onSaleProducts,
  });
}
