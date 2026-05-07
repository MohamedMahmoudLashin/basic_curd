import 'package:basic_curd/core/theme/app_color.dart';
import 'package:basic_curd/details/widgets/appbar_details_delete.dart';
import 'package:basic_curd/details/widgets/custom_text_details.dart';
import 'package:basic_curd/details/widgets/custom_title_text_details.dart';
import 'package:basic_curd/home/data/models/todo_model.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../core/responsive/responsive_extension.dart';


class DetailTodo extends StatefulWidget {
  const DetailTodo({super.key, });
  //final TodoModel todo;

  @override
  State<DetailTodo> createState() => _DetailTodoState();
}

class _DetailTodoState extends State<DetailTodo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
              backgroundColor: AppColor.kWhite,
              appBar: AppbarDetailsDelete(
               // todo: widget.todo,
              ),
              body: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical:27.h,horizontal: 27.w),
                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CustomTextTitleDetails(title:"مححح"),
                      SizedBox(height: 19.h,),
                      CustomTextDetails(title: "نتنتن")
                    ],
                  ),
                ),
              ),
              bottomNavigationBar: Container(
                child: Row(
                  mainAxisAlignment:MainAxisAlignment .center,
                  children: [
                    Padding(
                        padding:  EdgeInsets.only(bottom:40.h),
                        child: CustomTextDetails(title: "${"createdat".tr()} "
                            // "${widget.todo.deadline}"
                        )
                    ),
                  ],
                ),
              ),
            );

          }
  }
