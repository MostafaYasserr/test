import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import '../button_clicked_color_cubit/button_clicked_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ButtonClickedCubit(),
      child: BlocConsumer<ButtonClickedCubit,ButtonClickedState>(
        listener: (context, state) {
          if (state is ButtonClicked) {
            print('Button Clicked');
          }
        },
        builder:(context, state) {
          return Scaffold(
            body:  Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 1,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        // InkWell(
                        //   onTap: () {
                        //     ButtonClickedCubit.get(context).changeColor();
                        //   },
                        //   child:Container(
                        //                         decoration: BoxDecoration(
                        //                           borderRadius: BorderRadius.circular(15),
                        //                           color: ButtonClickedCubit.get(context).boxColor,
                        //                           boxShadow: [
                        //                             BoxShadow(
                        //                               color: Colors.black,
                        //                               blurRadius: 2,
                        //                               spreadRadius: 0.3,
                        //                               offset: Offset(0.7, 0.7),
                        //                             )
                        //                           ],
                        //                         ),
                        //                         width: 80,
                        //                         height: 80,
                        //                       ),
                        // ),
                        GestureDetector(
                          onTap: () {
                            ButtonClickedCubit.get(context).changeColor();
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: ButtonClickedCubit.get(context).boxColor,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 2,
                                  spreadRadius: 0.3,
                                  offset: Offset(0.7, 0.7),
                                )
                              ],
                            ),
                            width: 80,
                            height: 80,
                          ),
                        ),
                        SvgPicture.network(
                          'https://res.cloudinary.com/dtg2y1wzq/image/upload/v1713400891/services-images/jcbdvuc3bt0wzucilj7s.svg',
                          width: 45,
                          height: 45,
                          color: ButtonClickedCubit.get(context).iconColor,
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      'categoryModel.name',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
}
}
