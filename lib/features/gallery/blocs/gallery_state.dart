part of 'gallery_bloc.dart';

abstract class GalleryState {}

class GalleryInitialState extends GalleryState {
  GalleryInitialState();
}

class GalleryLoadingState extends GalleryState {}

class GalleryLoadedState extends GalleryState {
  GalleryLoadedState(this.mediaList);

  // Media can be either a photo or a video
  final List<Media> mediaList;
}

class GalleryErrorState extends GalleryState {
  GalleryErrorState(this.message);

  final String message;
}

