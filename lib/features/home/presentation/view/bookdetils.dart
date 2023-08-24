import 'package:flutter/material.dart';
import '../../data/model/book_model_items.dart';
import 'widgets/bookdetilsviewbody.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({super.key, required this.book});
  final BookModelItem book;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: BookDetilsViewBody(book: book,)),
    );
  }
}
