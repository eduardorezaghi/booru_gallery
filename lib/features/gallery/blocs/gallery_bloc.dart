import 'package:booru_gallery/features/gallery/models/media.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'gallery_event.dart';
part 'gallery_state.dart';

class GalleryBloc extends Bloc<GalleryEvent, GalleryState> {
  GalleryBloc() : super(GalleryLoadingState()) {
    on<FetchGalleryEvent>((event, emit) async {
      emit(GalleryLoadingState());
      try {
        List<Media> mediaList = await _fetchMedia();
        emit(GalleryLoadedState(mediaList));
      } catch (e) {
        emit(GalleryErrorState(
          "Failed to fetch media: ${e.toString()}",
        ));
      }
    });
  }

  Future<List<Media>> _fetchMedia() async {
    // ... fetch media from booru APIs
  }
}
