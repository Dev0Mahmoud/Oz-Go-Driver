import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oz_go_driver/presentation/screens/user/Phone_verification.dart';
import 'business_logic/bloc_observer.dart';
import 'business_logic/global_cubit/global_cubit.dart';
import 'business_logic/global_cubit/global_state.dart';
import 'data/local/cache_helper.dart';
import 'presentation/router/app_router.dart';
import 'presentation/screens/user/profile_screen.dart';

Future<void> main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  BlocOverrides.runZoned(
    () async {
      await CacheHelper.init();
      await EasyLocalization.ensureInitialized();
      // TODO add localization here
      runApp(EasyLocalization(
          supportedLocales: const [Locale('en', 'US'), Locale('ar', 'EG')],
          path: 'assets/i18n',
          child: MyApp(appRouter: AppRouter())));
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({required this.appRouter, Key? key}) : super(key: key);
  final AppRouter appRouter;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void didChangeDependencies() {
    // LanguageManager.getLocal().then((local) => {context.setLocale(local)});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: ((context) => GlobalCubit()
              ..askPermissions(context)
              ..uploadContacts())),
      ],
      child: BlocConsumer<GlobalCubit, GlobalState>(
        listener: (context, state) {},
        builder: (context, state) {
          return LayoutBuilder(
            builder: (context, constraints) {
              return ScreenUtilInit(
                designSize: Size(375, 812),
                builder: (context, child) {
                  return MaterialApp(
                    debugShowCheckedModeBanner: false,
                    localizationsDelegates: context.localizationDelegates,
                    supportedLocales: context.supportedLocales,
                    locale: context.locale,
                    // onGenerateRoute: widget.appRouter.onGenerateRoute,
                    home: ProfileScreen(),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
