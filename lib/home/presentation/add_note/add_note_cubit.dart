import 'package:basic_curd/home/data/models/todo_model.dart';
import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  Future<void> addNote(TodoModel note)async{
    try{
      emit(AddNoteLoading());
      Box<TodoModel> todos=Hive.box <TodoModel>("todos");
      await todos.add(note);
      emit(AddNoteSuccess());
    }catch(e){
      emit(AddNoteFaliure(e.toString()));
    }

  }
}
