import 'package:basic_curd/home/data/models/todo_model.dart';
import 'package:basic_curd/home/data/models/todo_param.dart';
import 'package:basic_curd/home/domain/repo/base_home_repo.dart';
import 'package:dart_either/dart_either.dart';
import '../data_source/home_data_source.dart';

class HomeRepoImpl extends BaseHomeRepo {
  final HomeRemoteDataSource dataSource;

  HomeRepoImpl(this.dataSource);

  @override
  Future<String> createTodo(TodoParam todo) {
    return dataSource.createTodo(todo);
  }

  @override
  Future<Either<String, List<TodoModel>>> getTodo() {
    return dataSource.getTodo();
  }

  @override
  Future<String> deleteTodo(String todoId) {
    return dataSource.deleteTodo(todoId);
  }

  @override
  Future<String> editTodo(String todoId, TodoParam todo) {
    return dataSource.editTodo(todoId, todo);
  }
}