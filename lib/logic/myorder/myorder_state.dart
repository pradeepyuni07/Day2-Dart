import 'package:bloc_project/data/models/my_order_model.dart';
import 'package:equatable/equatable.dart';

class MyOrderState extends Equatable {
  final List<dynamic> orders;

  const MyOrderState({this.orders = const []});

  MyOrderState copyWith({List<dynamic>? orders}) {
    return MyOrderState(orders: orders ?? this.orders);
  }
  @override
  List<Object?> get props => [orders];
}

class MyOrderInitial extends MyOrderState {
  const MyOrderInitial() : super(orders: const []);
}
