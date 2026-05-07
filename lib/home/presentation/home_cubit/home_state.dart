








// part of 'home_cubit.dart';
//
// @immutable
// sealed class HomeState {}
//
// /// ================= INITIAL =================
// final class HomeInitial extends HomeState {}
//
// /// ================= GET TODOS =================
// final class HomeGetTodoLoading extends HomeState {}
//
// final class HomeGetTodoSuccess extends HomeState {
//   final List<TodoModel> todos;
//
//   HomeGetTodoSuccess(this.todos);
// }
//
// final class HomeGetTodoFailure extends HomeState {
//   final String message;
//
//   HomeGetTodoFailure(this.message);
// }
//
// /// ================= CREATE TODO =================
// final class HomeCreateTodoLoading extends HomeState {}
//
// final class HomeCreateTodoSuccess extends HomeState {}
//
// final class HomeCreateTodoFailure extends HomeState {
//   final String message;
//
//   HomeCreateTodoFailure(this.message);
// }
//
// /// ================= DELETE TODO =================
// final class HomeDeleteTodoLoading extends HomeState {}
//
// final class HomeDeleteTodoSuccess extends HomeState {}
//
// final class HomeDeleteTodoFailure extends HomeState {
//   final String message;
//
//   HomeDeleteTodoFailure(this.message);
// }
//
// /// ================= EDIT TODO =================
// final class HomeEditTodoLoading extends HomeState {}
//
// final class HomeEditTodoSuccess extends HomeState {}
//
// final class HomeEditTodoFailure extends HomeState {
//   final String message;
//
//   HomeEditTodoFailure(this.message);
// }