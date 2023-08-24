
import '../../../../../core/utils/routers.dart';
import '../../../../../core/widgets/customerrorimage.dart';
import '../../../../../core/widgets/customloadingimage.dart';
import '../../manger/newstbooks/newsetbooks_cubit.dart';
import '../../manger/newstbooks/newsetbooks_state.dart';
import 'customimagebuilder.dart';
import 'homeviewbodylistviewtests.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'homeviewbodyrating.dart';

class HomeViewBodyListView extends StatelessWidget {
  const HomeViewBodyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetbooksCubit, NewsetbooksStates>(
      builder: (context, state) {
        if (state is NewsetbooksSuccessState) {
          return ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state.books.items!.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    GoRouter.of(context).push(
                      AppRouter.kBookDetailsPath,extra: state.books.items![index]
                    );
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, bottom: 20),
                        child: SizedBox(
                            height: 100,
                            child: CustomImageBuilder(
                                imageurl: state.books.items![index].VolumeInfo!.imageLinks!.thumbnail??"")),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BookTexts(auther: state.books.items![index].VolumeInfo!.authors,
                                title: state.books.items![index].VolumeInfo!.title.toString()),
                            const SizedBox(
                              height: 3,
                            ),
                            // HomeViewBodyRating(count: state.books.items![index].VolumeInfo!??0,rating: state.books[index].volumeInfo.rating ?? 0,)
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              });
        } else if (state is NewsetbooksErrorState) {
          return CustomErrorImage(errormesage: state.errormessage);
        } else {
          return const CustomLoadingImage();
        }
      },
    );
  }
}
