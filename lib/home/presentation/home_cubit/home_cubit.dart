















// import 'package:basic_curd/home/data/models/todo_model.dart';
// import 'package:bloc/bloc.dart';
// import 'package:meta/meta.dart';
//
// import '../../data/models/todo_param.dart';
// import '../../domain/use_case/create_todo_use_case.dart';
// import '../../domain/use_case/delete_todo_use_case.dart';
// import '../../domain/use_case/edit_todo_use_case.dart';
// import '../../domain/use_case/get_todo_use_case.dart';
//
// part 'home_state.dart';
//
// class HomeCubit extends Cubit<HomeState> {
//   HomeCubit(
//       this.createTodoUseCase,
//       this.getTodoUseCase,
//       this.deleteTodoUseCase,
//       this.editTodoUseCase,
//       ) : super(HomeInitial());
//
//   final CreateTodoUseCase createTodoUseCase;
//   final GetTodoUseCase getTodoUseCase;
//   final DeleteTodoUseCase deleteTodoUseCase;
//   final EditTodoUseCase editTodoUseCase;
//
//   // ✅ GET TODOS
//   Future<void> getTodo() async {
//     emit(HomeGetTodoLoading());
//
//     final res = await getTodoUseCase.getTodo();
//
//     res.fold(
//           (failure) => emit(HomeGetTodoFailure(failure)),
//           (todos) => emit(HomeGetTodoSuccess(todos)),
//     );
//   }
//
//   // ✅ CREATE TODO
//   Future<void> createTodo(TodoParam todo) async {
//     emit(HomeCreateTodoLoading());
//
//     final res = await createTodoUseCase.createTodo(todo);
//
//     if (res == "200") {
//       emit(HomeCreateTodoSuccess());
//       await getTodo(); // 🔥 refresh list
//     } else {
//       emit(HomeCreateTodoFailure(res));
//     }
//   }
//
//   // ✅ DELETE TODO
//   Future<void> deleteTodo(String todoId) async {
//     emit(HomeDeleteTodoLoading());
//
//     final res = await deleteTodoUseCase.deleteTodo(todoId);
//
//     if (res == "200") {
//       emit(HomeDeleteTodoSuccess());
//       await getTodo(); // 🔥 refresh list
//     } else {
//       emit(HomeDeleteTodoFailure(res));
//     }
//   }
//
//   // ✅ EDIT TODO
//   Future<void> editTodo(String todoId, TodoParam todo) async {
//     emit(HomeEditTodoLoading());
//
//     final res = await editTodoUseCase.editTodo(todoId, todo);
//
//     if (res == "200") {
//       emit(HomeEditTodoSuccess());
//       await getTodo(); // 🔥 refresh list
//     } else {
//       emit(HomeEditTodoFailure(res));
//     }
//   }
// }