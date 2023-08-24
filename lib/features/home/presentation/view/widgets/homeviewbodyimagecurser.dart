import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/routers.dart';
import '../../../../../core/widgets/customerrorimage.dart';
import '../../../../../core/widgets/customloadingimage.dart';
import '../../manger/featurebooks/featurebooks_cubit.dart';
import '../../manger/featurebooks/featurebooks_state.dart';
import 'customimagebuilder.dart';

class HomeViewBodyImageCurser extends StatelessWidget {
  const HomeViewBodyImageCurser({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubit, FeaturedbooksStates>(
      builder: (context, state) {
        if (state is FeaturebooksSuccessState) {
          return SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const ClampingScrollPhysics(),
              itemCount: state.books.items!.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                      GoRouter.of(context).push(AppRouter.kBookDetailsPath,
                          extra: state.books.items![index]);

                  },
                  child: CustomImageBuilder(
                      imageurl:
                          state.books.items![index].VolumeInfo!.imageLinks?.thumbnail??""),
                );
              },
            ),
          );
        } else if (state is FeaturebooksErrorState) {
          return CustomErrorImage(errormesage: state.errormessage);
        } else {
          return const CustomLoadingImage();
        }
      },
    );
  }
}
