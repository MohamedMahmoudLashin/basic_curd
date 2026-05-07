import 'package:basic_curd/core/responsive/responsive_extension.dart';
import 'package:basic_curd/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class AppBarHome extends StatelessWidget implements PreferredSizeWidget {
  const AppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top:15.h),
      child: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: AppColor.kWhite,
        actionsPadding: EdgeInsetsGeometry.symmetric(horizontal: 25.sp),
        leadingWidth: 130.sp,
        leading: SvgPicture.asset("assets/logo_icon.svg",),
        actions: [
          InkWell(onTap: (){
            Navigator.of(context).pushNamed("profile");
          },child: Padding(
            padding:  EdgeInsets.symmetric(horizontal:10.sp),
            child: SvgPicture.asset("assets/Vector.svg",width: 30.w,),
          ))
        ],
      ),
    );
  }

  @override
  Size get preferredSize =>  Size.fromHeight(80.h);
}