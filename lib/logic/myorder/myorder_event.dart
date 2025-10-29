import 'package:equatable/equatable.dart';
import 'package:bloc_project/data/models/my_order_model.dart';

abstract class MyOrderEvent extends Equatable {
  const MyOrderEvent();

  @override
  List<Object?> get props => [];
}

class MyOrderData extends MyOrderEvent {
  final List<MyOrderModel> orders;

  const MyOrderData({required this.orders});

  @override
  List<Object?> get props => [orders];
}
