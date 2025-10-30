import 'package:bloc_project/core/colors/colors.dart';
import 'package:bloc_project/core/constants/icons_constant.dart';
import 'package:bloc_project/core/constants/length.dart';
import 'package:bloc_project/core/constants/string_constants.dart';
import 'package:bloc_project/core/themes/app_text_style.dart';
import 'package:bloc_project/core/widgets/common_widgets.dart';
import 'package:bloc_project/data/models/get_product_model.dart';
import 'package:bloc_project/data/models/my_order_model.dart';
import 'package:bloc_project/logic/cart/cart_bloc.dart';
import 'package:bloc_project/logic/cart/cart_event.dart';
import 'package:bloc_project/logic/cart/cart_state.dart';
import 'package:bloc_project/logic/myorder/myorder_bloc.dart';
import 'package:bloc_project/logic/myorder/myorder_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<CartBloc, CartState>(
      listener: (context, state) {},
      child: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColors.backGroundColor,
            appBar: CommonWidgets.appBar(
              title: StringConstants.myShoppingCart.tr,
              wantBackButton: false,
            ),
            body: state.cartItems.isNotEmpty
                ? Column(
                    children: [
                      Container(
                        height: AppLength.screenHeightPart(2.5),
                        child: ListView.builder(
                          itemCount: state.cartItems.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            Product item = state.cartItems[index];
                            return Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 20.w,
                                    vertical: 10.h,
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 90.h,
                                        width: 100.w,
                                        padding: EdgeInsets.all(15.h),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            20.r,
                                          ),
                                          color: Color(0xFF4C5770),
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
                                            bottom: 10.h,
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    item.title.tr,
                                                    style: AppTextStyle
                                                        .titleStyle16bw,
                                                  ),
                                                  GestureDetector(
                                                    onTap: () {
                                                      context
                                                          .read<CartBloc>()
                                                          .add(
                                                            RemoveProductFromCart(
                                                              item.id,
                                                            ),
                                                          );
                                                    },
                                                    child: Icon(
                                                      Icons.delete_forever,
                                                      size: 25.h,
                                                      color:
                                                          AppColors.errorColor,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    '\$ ${item.price}',
                                                    style: AppTextStyle
                                                        .titleStyle14gr,
                                                  ),
                                                  Row(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () {
                                                          context
                                                              .read<CartBloc>()
                                                              .add(
                                                                IncreaseQuantity(
                                                                  item.id,
                                                                ),
                                                              );
                                                        },
                                                        child: Container(
                                                          height: 24.h,
                                                          width: 24.h,
                                                          margin:
                                                              EdgeInsets.symmetric(
                                                                horizontal:
                                                                    10.w,
                                                              ),
                                                          child:
                                                              CommonWidgets.appIcons(
                                                                assetName:
                                                                    IconConstants
                                                                        .icPlus,
                                                                height: 24.h,
                                                                width: 24.h,
                                                              ),
                                                        ),
                                                      ),
                                                      Text(
                                                        item.quantity
                                                            .toString(),
                                                        style: AppTextStyle
                                                            .titleStyle16bw,
                                                      ),
                                                      GestureDetector(
                                                        onTap: () {
                                                          context
                                                              .read<CartBloc>()
                                                              .add(
                                                                DecreaseQuantity(
                                                                  item.id,
                                                                ),
                                                              );
                                                        },
                                                        child: Container(
                                                          height: 24.h,
                                                          width: 24.h,
                                                          margin:
                                                              EdgeInsets.symmetric(
                                                                horizontal:
                                                                    10.w,
                                                              ),
                                                          child:
                                                              CommonWidgets.appIcons(
                                                                assetName:
                                                                    IconConstants
                                                                        .icMinus,
                                                                height: 24.h,
                                                                width: 24.h,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
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
                                  color: AppColors.lightWhite,
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonWidgets.commonTextField(
                              hintText: StringConstants.promoCode.tr,
                              labelText: StringConstants.promoCode.tr,
                              horizontalPadding: 3.w,
                              suffixIcon: CommonWidgets.customBackgroundFrame(
                                onPressed: () {},
                                context: context,
                                height: 44.h,
                                width: 110.w,
                                child: Text(
                                  StringConstants.apply.tr,
                                  style: AppTextStyle.titleStyle18bw,
                                ),
                              ),
                            ),
                            CommonWidgets.verticalSpace(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '${StringConstants.subtotal.tr}:',
                                  style: AppTextStyle.titleStyle16bw,
                                ),
                                Text(
                                  '\$ ${state.totalPrice.toStringAsFixed(2)}',
                                  style: AppTextStyle.titleStyle16w,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '${StringConstants.deliveryFee.tr}:',
                                  style: AppTextStyle.titleStyle16bw,
                                ),
                                Text(
                                  '\$ 0.0',
                                  style: AppTextStyle.titleStyle16w,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '${StringConstants.total.tr}:',
                                  style: AppTextStyle.titleStyle16bw,
                                ),
                                Text(
                                  '\$ ${state.totalPrice.toStringAsFixed(2)}',
                                  style: AppTextStyle.titleStyle16w,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: state.cartItems.isNotEmpty
                            ? () {
                                final updatedItems = List.from(
                                  context.read<CartBloc>().state.cartItems,
                                );

                                // List<MyOrderModel> modelList = [];
                                //
                                // modelList = updatedItems.map((item) {
                                //   return MyOrderModel(
                                //     id: item.id,
                                //     title: item.title,
                                //     image: item.image,
                                //     price: item.price,
                                //     dateTime: DateTime.now(),
                                //   );
                                // }).toList();
                                // print("************************************************************************************************************************************");
                                // print(modelList[0].dateTime);

                                context.read<MyOrderBloc>().add(
                                  MyOrderData(orders: updatedItems),
                                );
                                context.read<CartBloc>().add(ClearCart());
                              }
                            : null,

                        child: Container(
                          height: 44.h,
                          width: 185.w,
                          margin: EdgeInsets.only(bottom: 20.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: AppColors.backGroundColor,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 8.r,
                                color: Color(0xFF2B3545),
                                offset: Offset(-2, -2),
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              CommonWidgets.customBackgroundFrame(
                                onPressed: () {},
                                context: context,
                                child: Icon(
                                  Icons.arrow_forward_ios_sharp,
                                  size: 30.h,
                                  color: AppColors.white,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.w),
                                child: Text(
                                  StringConstants.checkout.tr,
                                  style: AppTextStyle.titleStyle20bw,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                : Center(
                    child: Text(
                      StringConstants.productNotFound.tr,
                      style: AppTextStyle.titleStyle16bw,
                    ),
                  ),
          );
        },
      ),
    );
  }
}
