import 'package:bloc/bloc.dart';
import 'package:bloc_project/logic/myorder/myorder_event.dart';
import 'package:bloc_project/logic/myorder/myorder_state.dart';
import 'package:http/http.dart' as context;

import '../../data/models/my_order_model.dart';
import '../cart/cart_bloc.dart';

class MyOrderBloc extends Bloc<MyOrderEvent, MyOrderState> {
  MyOrderBloc() : super(const MyOrderInitial()) {
    on<MyOrderData>(_myOrderData);
  }

  void _myOrderData(MyOrderData event,Emitter emit){

    List<MyOrderModel> modelList = [];

    modelList = event.orders.map((item) {
      return MyOrderModel(
        id: item.id,
        title: item.title,
        image: item.image,
        price: item.price,
        dateTime: DateTime.now(),
      );
    }).toList();

    final updatedOrders = List<dynamic>.from(state.orders)
      ..addAll(modelList);
    emit(state.copyWith(orders: updatedOrders));
  }


}
