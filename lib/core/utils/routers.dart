



import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/Splash/presentation/view/splashview.dart';
import '../../features/Splash/presentation/views/home_view.dart';
import '../../features/home/data/model/book_model_items.dart';
import '../../features/home/data/repos/homereposimplement.dart';
import '../../features/home/presentation/manger/similerbooks/similer_books_cubit.dart';
import '../../features/home/presentation/view/bookdetils.dart';

abstract class AppRouter {
  static String kHomePath = "/HomeView";
  static String kSearchPath = "/SearchView";
  static String kBookDetailsPath = "/BookDetails";
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: ( context, GoRouterState state) {
          return const SplashView();
        },
      ),
      // GoRoute(
      //   path: kSearchPath,
      //   builder: (BuildContext context, GoRouterState state) {
      //     return BlocProvider(
      //       create: (context) => SearchbookCubit(),
      //       child: const SearchView(),
      //     );
      //   },
      // ),
      GoRoute(
        path: kHomePath,
        builder: ( context, GoRouterState state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: kBookDetailsPath,
        builder: ( context, GoRouterState state) {
          return BlocProvider(
            create: (context) => SimilerBooksCubit(HomeRepoImplementation()),
            child: BookDetails(book: state.extra as BookModelItem),
          );
        },
      ),
    ],
  );
}
