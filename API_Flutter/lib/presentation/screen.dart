import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_api/business/cubit/post_cubit.dart';
import 'package:my_api/business/cubit/post_state.dart';
import 'package:my_api/data/post_model.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {

  @override
  void initState() {
    super.initState();
    PostModel post=PostModel(content: "h", id: "h" ,title: "h");
    BlocProvider.of<PostCubit>(context).getAllPosts();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Posts")),
      body: BlocBuilder<PostCubit, PostState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (message) => Center(child: Text("Error: $message")),
            success: (data) {
              if (data is List) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        final post = data[index];
        return ListTile(
          leading: CircleAvatar(child: Text("${post.id}")),
          title: Text(post.title),
          subtitle: Text(post.content),
        );
      },
    );
  } else {
    return ListTile(
      leading: CircleAvatar(child: Text("${data.id}")),
      title: Text(data.title),
      subtitle: Text(data.content),
    );
  }
            },
          );
        },
      ),
    );
  }
}