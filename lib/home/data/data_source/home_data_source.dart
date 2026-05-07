import 'package:basic_curd/home/data/models/todo_param.dart';
import 'package:dart_either/dart_either.dart';
import '../models/todo_model.dart';

abstract class HomeRemoteDataSource {
  Future<String> createTodo(TodoParam todo);
  Future<Either<String, List<TodoModel>>> getTodo();
  Future<String>deleteTodo(String todoId);
  Future<String> editTodo(String todoId,TodoParam todo) ;
}