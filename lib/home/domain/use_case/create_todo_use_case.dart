import 'package:basic_curd/home/data/models/todo_param.dart';
import 'package:basic_curd/home/domain/repo/base_home_repo.dart';

class CreateTodoUseCase {
  CreateTodoUseCase(this.baseHomeRepo);
  BaseHomeRepo baseHomeRepo ;
  Future<String> createTodo(TodoParam todo){
    return baseHomeRepo.createTodo(todo);
  }
}