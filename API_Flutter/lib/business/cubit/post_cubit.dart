import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:my_api/business/cubit/post_state.dart';
import 'package:my_api/data/error_model.dart';
import 'package:my_api/data/post_model.dart';
import 'package:my_api/data/post_repo.dart';

class PostCubit extends Cubit<PostState> {
  final PostRepo postRepo;
  PostCubit(this.postRepo) : super(PostState.initial());

  void getAllPosts() async {
    emit(PostState.loading());
    try {
      List<PostModel> result = await postRepo.getAllPosts();
      emit(PostState.success(result));
    } catch (e) {
      emit(PostState.error(e));
    }
  }

  void getPostById(String id) async {
    emit(PostState.loading());
    try {
      PostModel result = await postRepo.getPostByID(id);
      emit(PostState.success(result));
    } catch (e) {
      emit(PostState.error(e));
    }
  }

  void createPost(PostModel newPost, String token) async {
    emit(PostState.loading());
    try {
      PostModel result = await postRepo.createPost(newPost, token);
      emit(PostState.success(result));
    } catch (e) {
      emit(PostState.error(e));
    }
  }

  void deletePost(String id) async {
    emit(PostState.loading());
    try {
      PostModel result = await postRepo.deletePost(id);
      emit(PostState.success(result));
    } on DioError  catch (e) {
      emit(PostState.error(ErrorModel(e.response!.data).message));
    }
  }
}
