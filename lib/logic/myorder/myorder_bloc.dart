import 'package:bloc/bloc.dart';
import 'package:bloc_project/logic/myorder/myorder_event.dart';
import 'package:bloc_project/logic/myorder/myorder_state.dart';

import '../../data/models/my_order_model.dart';

class MyOrderBloc extends Bloc<MyOrderEvent, MyOrderState> {
  MyOrderBloc() : super(const MyOrderInitial()) {
    on<MyOrderData>((event, emit) {
      final updatedOrders = List<MyOrderModel>.from(state.orders)
        ..addAll(event.orders);
      emit(state.copyWith(orders: updatedOrders));
    });
  }
}
