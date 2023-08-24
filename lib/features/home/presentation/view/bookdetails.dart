import 'package:bookly_application/features/home/presentation/manger/similerbooks/similer_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/model/book_model_items.dart';
import 'widgets/bookdetilsviewbody.dart';

class BookDetails extends StatefulWidget {
  const BookDetails({super.key, required this.book});
  final BookModelItem book;

  @override
  State<BookDetails> createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {
  @override
  void initState() {
    BlocProvider.of<SimilerBooksCubit>(context)
        .featuresimilerbooks(category: widget.book.VolumeInfo!.categories![0]);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: BookDetilsViewBody(book: widget.book,)),
    );
  }
}
