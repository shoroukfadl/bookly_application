import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custombutton.dart';
import '../../../../../core/widgets/url_lancher.dart';
import '../../../data/model/book_model.dart';
import '../../../data/model/book_model_items.dart';



class BookActionButton extends StatelessWidget {
  const BookActionButton({super.key, required this.book});
  final BookModelItem book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              onPressed: () {

              },
              text: "Free",
              backgroundcolor: Colors.white,
              textstyle: Styles.textStyle18.copyWith(color: Colors.black),
              borderredise: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12)),
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed:  ()=>customlaunchurl(book.VolumeInfo!.previewLink!),
              text: "Preview",
              backgroundcolor: const Color(0xffEF8262),
              textstyle: Styles.textStyle16
                  .copyWith(color: Colors.white, fontWeight: FontWeight.w900),
              borderredise: const BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12)),
            ),
          )
        ],
      ),
    );
  }
}
