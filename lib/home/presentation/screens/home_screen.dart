import 'package:basic_curd/core/responsive/responsive_extension.dart';
import 'package:basic_curd/core/theme/app_color.dart';
import 'package:basic_curd/details/ui_screens/detail_todo.dart';
import 'package:basic_curd/home/presentation/add_note/add_note_cubit.dart';
import 'package:basic_curd/home/presentation/widgets/appbar_home.dart';
import 'package:basic_curd/home/presentation/widgets/custom_add_container_modal_sheet.dart';
import 'package:basic_curd/home/presentation/widgets/custom_container_showing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final TextEditingController titleController = TextEditingController();
  final TextEditingController desController = TextEditingController();
  final TextEditingController deadLineController = TextEditingController();
  final TextEditingController imageController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    titleController.dispose();
    desController.dispose();
    deadLineController.dispose();
    imageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarHome(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 30.h),
        child: ListView.separated(
          itemCount: 3,
          separatorBuilder: (context, index) => SizedBox(height: 15.h,),
          itemBuilder: (context, index) {
            return CustomContainerShowing(
                isPrimary: index == 0,
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => DetailTodo())
                  );
                });
          },),
      ),

      //Center(child: Lottie.asset('assets/animations/History.json')),

      floatingActionButton:
      FloatingActionButton(
        heroTag: "addTask",
        backgroundColor: AppColor.kPurple,
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (bottomSheetContext) {
              return BlocProvider.value(
                value: context.read<AddNoteCubit>(),
                child: BlocConsumer<AddNoteCubit, AddNoteState>(
                  listener: (context, state) {
                    print(state);
                    if (state is AddNoteFaliure) {
                      debugPrint("Failure");
                      print(state.message);
                    }

                    if (state is AddNoteSuccess) {
                      debugPrint("Success");
                      Navigator.pop(context);
                    }
                  },
                  builder: (context, state) {
                    return CustomAddContainerModalSheet(
                      titleController: titleController,
                      descriptionController: desController,
                      deadLineController: deadLineController,
                      addImageController: imageController,
                    );
                  },
                ),
              );
            },
          ).then((value) {
            titleController.clear();
            desController.clear();
            deadLineController.clear();
            imageController.clear();
          });
        },
        child: Icon(Icons.add, size: 32.h, color: AppColor.kWhite,),
      ),
    );
  }
}
