import 'package:bloc_project/core/constants/string_constants.dart';
import 'package:bloc_project/logic/setting/setting_event.dart';
import 'package:bloc_project/logic/setting/setting_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class SettingBloc extends  Bloc<SettingEvent,SettingState>{
  int _refreshCount=1;
  SettingBloc():super(SettingState()){
    on<SettingLoading>((event,emit){
      emit(SettingState(
        settingList: [
          {
            'title':StringConstants.appUpdate.tr,
            'status':false,
          },
          {
            'title':StringConstants.offerUpdate.tr,
            'status':false,
          },
          {
            'title':StringConstants.sound.tr,
            'status':false,
          },
          {
            'title':StringConstants.vibration.tr,
            'status':false,
          }
        ]
      ));
    });
    on<SettingToggle>((event,emit){
      _refreshCount++;
      List<Map<String, dynamic>> updatedList = List<Map<String, dynamic>>.from(state.settingList);
      updatedList[event.index] = Map<String, dynamic>.from(updatedList[event.index]);
      updatedList[event.index]['status'] = !(updatedList[event.index]['status']);

      emit(SettingState(settingList: updatedList, refreshing: _refreshCount));

    });
  }
}