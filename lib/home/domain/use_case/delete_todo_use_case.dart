import 'package:basic_curd/home/domain/repo/base_home_repo.dart';

class DeleteTodoUseCase{
  DeleteTodoUseCase(this.baseHomeRepo);
  BaseHomeRepo baseHomeRepo ;
  Future<String> deleteTodo(String todoId){
    return baseHomeRepo.deleteTodo(todoId);
  }
}