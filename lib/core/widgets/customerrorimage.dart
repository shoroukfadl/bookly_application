import 'package:flutter/material.dart';

import '../utils/styles.dart';


class CustomErrorImage extends StatelessWidget {
  const CustomErrorImage({super.key,required this.errormesage});
  final String errormesage;
  @override
  Widget build(BuildContext context) {
    return Text(errormesage,style: Styles.textStyle18,);
  }
}
