import 'package:books/Features/home/presentation/manager/featured_book_cubit/featured_books_cubit.dart';
import 'package:books/Features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Features/home/data/repos/home_repo_implementation.dart';
import 'constants.dart';
import 'core/services/service_locator.dart';
import 'core/utils/app_router.dart';

void main() {
  setupServiceLocator();
  runApp(const BooksApp());
}

class BooksApp extends StatelessWidget {
  const BooksApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => FeaturedBookCubit(getIt.get<HomeRepoImplementation>())..fetchFeaturedBooks()
          ,),
        BlocProvider(
          create: (context) => NewestBooksCubit(getIt.get<HomeRepoImplementation>())..fetchNewestBooks(),
        ),

      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)
        ),
      ),
    );
  }
}

