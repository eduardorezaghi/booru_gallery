import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GalleryScreen extends BlocConsumer {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),
      ),
      body: LayoutBuilder.builder(
        builder: (context, constraints) {
          return BlocBuilder<GalleryBloc, GalleryState>(
            builder: (context, state) {
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: constraints.maxWidth ~/ 200,
                ),
                itemCount: state.mediaList.length,
              );
            },
          );
        },
      ),
    );
  }
}
