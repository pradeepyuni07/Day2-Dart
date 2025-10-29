import 'package:bloc_project/data/models/my_order_model.dart';
import 'package:bloc_project/logic/myorder/myorder_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../core/colors/colors.dart';
import '../../core/constants/string_constants.dart';
import '../../core/themes/app_text_style.dart';
import '../../core/widgets/common_widgets.dart';
import '../../logic/myorder/myorder_bloc.dart';
import '../../logic/myorder/myorder_state.dart';

class MyOrderScreen extends StatefulWidget {
  const MyOrderScreen({super.key});

  @override
  State<MyOrderScreen> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<MyOrderBloc, MyOrderState>(
      listener: (context, state) {
      },
      child: BlocBuilder<MyOrderBloc, MyOrderState>(
        builder: (context, state) {
          // print(state.orders.isNotEmpty);
          return Scaffold(
            backgroundColor: AppColors.backGroundColor,
            appBar: CommonWidgets.appBar(title: StringConstants.myOrder),
            body: state.orders.isNotEmpty
                ? Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: state.orders.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final item = state.orders[index];
                      return Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.w, vertical: 10.h),
                            child: Row(
                              children: [
                                Container(
                                  height: 90.h,
                                  width: 100.w,
                                  padding: EdgeInsets.all(15.h),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.circular(20.r),
                                    color: const Color(0xFF4C5770),
                                  ),
                                  child: CommonWidgets.appIcons(
                                    assetName: item.image,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    height: 90.h,
                                    padding: EdgeInsets.only(
                                        left: 10.w,
                                        top: 10.h,
                                        bottom: 10.h),
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(item.title,
                                            style: AppTextStyle
                                                .titleStyle16bw),
                                        Text(item.status,
                                            style: AppTextStyle
                                                .titleStyle14gr),
                                        Text(
                                          DateFormat('dd MMM yyyy, hh:mm:ss a').format(item.dateTime),
                                          style: AppTextStyle.titleStyle14bw,
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                              thickness: 1.h,
                              color: AppColors.lightWhite),
                        ],
                      );
                    },
                  ),
                ),
              ],
            )
                : Center(
              child: Text(
                StringConstants.productNotFound,
                style: AppTextStyle.titleStyle16bw,
              ),
            ),
          );
        },
      ),
    );
  }
}
