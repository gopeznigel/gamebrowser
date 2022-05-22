class GameDescriptionFormatter {
  static String htmlToText(String desc) {
    String formattedText = desc;

    // Remove paragraph tag/s
    formattedText = formattedText.replaceAll('<p>', '').replaceAll('</p>', '');

    // Remove line break tag/s
    formattedText = formattedText.replaceAll('<br />', '\n');

    return formattedText;
  }
}
