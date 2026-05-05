import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_state.freezed.dart';

@freezed
class PostState<T> with _$PostState<T> {
  const factory PostState.initial() = _Initial;

  const factory PostState.loading() = Loading<T>;

  const factory PostState.success(T data) = Success<T>;

  const factory PostState.error(T data) = Error<T>;
}
