import 'package:bloc_project/core/localization/translation.dart';
import 'package:bloc_project/logic/bottom_nav/bottom_nav_bloc.dart';
import 'package:bloc_project/logic/delivery_address/delivery_address_bloc.dart';
import 'package:bloc_project/logic/language/language_bloc.dart';
import 'package:bloc_project/logic/myorder/myorder_bloc.dart';
import 'package:bloc_project/logic/person/person_bloc.dart';
import 'package:bloc_project/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/navigation/navigation_service.dart';
import 'core/themes/app_theme.dart';
import 'logic/cart/cart_bloc.dart';
import 'logic/favorite/favorite_bloc.dart';
import 'logic/splash/splash_bloc.dart';
import 'package:get/get.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // BlocProvider<SplashBloc>(
        //   create: (_) => SplashBloc(),
        // ),
        BlocProvider<BottomNavBloc>(
          create: (_) => BottomNavBloc(),
        ),
        BlocProvider(create: (_)=> MyOrderBloc()),
        BlocProvider(create: (_)=> LanguageBloc()),

        BlocProvider(create: (_) => CartBloc()),
        BlocProvider(create: (_) => PersonBloc()),
        BlocProvider(create: (_) => FavoriteBloc()),
        BlocProvider(create: (_) => DeliveryAddressBloc()),
        BlocProvider(create: (_) =>MyOrderBloc() ),

        // Add other global blocs here
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 812), // iPhone 11 as design reference
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context,child){
          return GetMaterialApp (
            translations: AppLanguage(),
            locale: Locale("en","US"),
            fallbackLocale: Locale('en', 'US'),

            title: 'Bloc Project',
            navigatorKey: NavigationService.navigatorKey,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: ThemeMode.dark,
            initialRoute: '/bottom_nav',//     /bottom_nav
            onGenerateRoute: AppRoutes.onGenerateRoute,
            debugShowCheckedModeBanner: false,
          );
        },
      )
    );
  }
}

