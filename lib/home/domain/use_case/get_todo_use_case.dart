import 'package:basic_curd/home/domain/repo/base_home_repo.dart';
import 'package:dart_either/dart_either.dart';
import '../../data/models/todo_model.dart';

class GetTodoUseCase {
  GetTodoUseCase(this.baseHomeRepo);
  final BaseHomeRepo baseHomeRepo;
  Future<Either<String, List<TodoModel>>> getTodo(){
    return baseHomeRepo.getTodo();
  }
}