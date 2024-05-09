part of 'gallery_bloc.dart';

sealed class GalleryEvent {}

class FetchGalleryEvent extends GalleryEvent {} 

final class MediaDisplayed extends GalleryEvent {
  MediaDisplayed(this.media);

  final Media media;
}
