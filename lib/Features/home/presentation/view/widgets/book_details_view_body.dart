import 'package:flutter/material.dart';
import 'book_details_section2.dart';
import 'book_details_view_section1.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
            hasScrollBody: false,
            child:
                    Padding(
                      padding: const EdgeInsets.only( bottom: 30),
                      child: Column(
                        children: const [
                          BookDetailsSection1(),
                          Expanded(child: SizedBox(height: 30,)),
                          BookDetailsSection2(),
                          // Expanded(child: SizedBox(height: 30,)),
                        ],
                      ),
                    ),



            ),
      ],
    );
  }
}
