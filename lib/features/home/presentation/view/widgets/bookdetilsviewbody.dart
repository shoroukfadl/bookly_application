import '../../../data/model/book_model.dart';
import '../../../data/model/book_model_items.dart';
import 'bookdetilssection.dart';
import 'package:flutter/material.dart';
import 'bookdetailsviewbodyappbar.dart';
import 'simillerbookssectionview.dart';

class BookDetilsViewBody extends StatelessWidget {
  const BookDetilsViewBody({super.key, required this.book});
  final BookModelItem book;
  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          child: Column(
            children: [
              const BookDetilsViewBodyAppBar(),
               BookDetilesSection(book: book),
               const Expanded(
                child: SizedBox(
                  height: 50,
                ),
              ),
              const SimillerBooksSection()
            ],
          ),
        )
      ],
    );
  }
}
