import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';
import 'core/utils/bloc_observer.dart';
import 'core/utils/routers.dart';
import 'features/home/data/repos/homereposimplement.dart';
import 'features/home/presentation/manger/featurebooks/featurebooks_cubit.dart';
import 'features/home/presentation/manger/newstbooks/newsetbooks_cubit.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeatureBooksCubit(HomeRepoImplementation())
            ..featchfuturebooks(),
        ),
        BlocProvider(
            create: (context) => NewsetbooksCubit(HomeRepoImplementation())..featchnewestbooks())
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
            GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}
