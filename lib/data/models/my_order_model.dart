import 'package:bloc_project/core/constants/string_constants.dart';

class MyOrderModel {
  final int id;
  final String title;
  final String image;
  final double price;
  final bool isFavorite;
  final int quantity;
  final String status;
  final DateTime dateTime;

   MyOrderModel({
    required this.id,
    required this.title,
    required this.image,
    required this.price,
    this.isFavorite = false,
    this.quantity = 1,
    this.status = StringConstants.status,
    DateTime? dateTime,
  }) : dateTime = dateTime ?? DateTime.now();

  MyOrderModel copyWith({
    int? id,
    String? title,
    String? image,
    double? price,
    bool? isFavorite,
    int? quantity,
    String? status,
    DateTime? dateTime,
  }) {
    return MyOrderModel(
      id: id ?? this.id,
      title: title ?? this.title,
      image: image ?? this.image,
      price: price ?? this.price,
      isFavorite: isFavorite ?? this.isFavorite,
      quantity: quantity ?? this.quantity,
      status: status ?? this.status,
      dateTime: dateTime ?? this.dateTime,
    );
  }


}
