
// TODO: How to create a more generic model for media?
// Example: media can be an image, video, GIF, audio, etc.
// How to handle different types of media in the same model?
class Media {
  final String url; 

  Media({required this.url});

  factory Media.fromJson(Map<String, dynamic> json) {
    return Media(url: json['url']);
  }
}