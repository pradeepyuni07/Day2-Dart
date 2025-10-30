import 'package:bloc_project/logic/notifications/notification_event.dart';
import 'package:bloc_project/logic/notifications/notification_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../core/constants/string_constants.dart';

class NotificationBloc extends Bloc<NotificationEvent,NotificationState>{
  NotificationBloc():super(NotificationState()){
   on<NotificationsLoading>((event,emit){
     emit(NotificationState(
       notificationList: [
         {
           'title': StringConstants.orderConfirmedTitle.tr,
           'message': StringConstants.orderConfirmedMsg.tr,
           'date': StringConstants.twoDaysAgo.tr,
         },
         {
           'title': StringConstants.orderCancelledTitle.tr,
           'message': StringConstants.orderCancelledMsg.tr,
           'date': StringConstants.threeDaysAgo.tr,
         },
         {
           'title': StringConstants.orderConfirmedTitle.tr,
           'message': StringConstants.orderConfirmedMsg.tr,
           'date': StringConstants.fourDaysAgo.tr,
         },
         {
           'title': StringConstants.orderCancelledTitle.tr,
           'message': StringConstants.orderCancelledMsg.tr,
           'date': StringConstants.fiveDaysAgo.tr,
         },
       ],

     ));
   });
  }
}