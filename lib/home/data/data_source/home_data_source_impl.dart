import 'package:dart_either/dart_either.dart';
import 'package:hive/hive.dart';
import '../models/todo_model.dart';
import '../models/todo_param.dart';
import 'home_data_source.dart';

class HomeLocalDataSourceImpl extends HomeRemoteDataSource {

  final Box<TodoModel> box;

  HomeLocalDataSourceImpl(this.box);

  @override
  Future<String> createTodo(TodoParam todo) async {
    try {
      final newTodo = TodoModel(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        title: todo.title,
        des: todo.des,
        deadline: todo.deadline,
        image: todo.image?.path,
      );

      await box.put(newTodo.id, newTodo);

      return "200";
    } catch (e) {
      return e.toString();
    }
  }

  @override
  Future<Either<String, List<TodoModel>>> getTodo() async {
    try {
      final todos = box.values.toList();
      return Right(todos);
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<String> deleteTodo(String todoId) async {
    try {
      await box.delete(todoId);
      return "200";
    } catch (e) {
      return e.toString();
    }
  }

  @override
  Future<String> editTodo(String todoId, TodoParam todo) async {
    try {
      final oldTodo = box.get(todoId);

      if (oldTodo == null) return "Todo not found";

      final updatedTodo = TodoModel(
        id: todoId,
        title: todo.title,
        des: todo.des,
        deadline: todo.deadline,
        image: todo.image?.path ?? oldTodo.image,
      );

      await box.put(todoId, updatedTodo);

      return "200";
    } catch (e) {
      return e.toString();
    }
  }
}