import 'package:books/Features/home/presentation/view/book_details_view.dart';
import 'package:books/Features/home/presentation/view/home_view.dart';
import 'package:books/Features/search/presentation/view/search_view.dart';
import 'package:books/Features/splash/presentation/views/splash_view.dart';
import 'package:books/constants.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomePageRoute,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kSearchPageRoute,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: kBookDetailsPageRoute,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
