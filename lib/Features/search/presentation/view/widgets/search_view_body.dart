import 'package:books/Features/home/presentation/view/widgets/best_seller_list_view.dart';
import 'package:books/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 20),
      child: Column(
        children: const [
          CustomTextField(),
          SizedBox(height: 20,),
          Expanded(child: CustomNewestBooksListView())
        ],
      ),
    );
  }
}
