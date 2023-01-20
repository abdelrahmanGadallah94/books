import 'package:books/Features/home/data/models/books_model/book_model.dart';
import 'package:books/Features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:books/Features/home/presentation/view/book_details_view.dart';
import 'package:books/Features/home/presentation/view/home_view.dart';
import 'package:books/Features/search/presentation/view/search_view.dart';
import 'package:books/Features/splash/presentation/views/splash_view.dart';
import 'package:books/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../Features/home/data/repos/home_repo_implementation.dart';
import '../services/service_locator.dart';

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
        builder: (context, state) =>  BlocProvider(
            create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImplementation>()),
          child:  BookDetailsView(
            booksModel: state.extra as BooksModel,
          ),
        ),
      ),
    ],
  );
}
