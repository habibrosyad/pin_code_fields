part of pin_code_fields;

class DialogConfig {
  /// title of the [AlertDialog] while pasting the code. Default to null as user might don't want to include title.
  final String? dialogTitle;

  /// content of the [AlertDialog] while pasting the code. Default to ["Do you want to paste this code "]
  final String? dialogContent;

  /// Affirmative action text for the [AlertDialog]. Default to "Paste"
  final String? affirmativeText;

  /// Affirmative action text color for the [AlertDialog]. Default to null, fallback to system default.
  final Color? affirmativeTextColor;

  /// Affirmative action text style for the [AlertDialog]. Default to null, fallback to system default.
  final TextStyle? affirmativeTextStyle;

  /// Negative action text for the [AlertDialog]. Default to "Cancel"
  final String? negativeText;

  /// Negative action text color for the [AlertDialog]. Default to null, fallback to system default.
  final Color? negativeTextColor;

  /// Affirmative action text style for the [AlertDialog]. Default to null, fallback to system default.
  final TextStyle? negativeTextStyle;

  /// The default dialog theme, should it be iOS or other(including web and Android)
  final Platform platform;
  DialogConfig._internal({
    this.dialogContent,
    this.dialogTitle,
    this.affirmativeText,
    this.affirmativeTextColor,
    this.affirmativeTextStyle,
    this.negativeText,
    this.negativeTextColor,
    this.negativeTextStyle,
    this.platform = Platform.other,
  });

  factory DialogConfig(
      {String? affirmativeText,
      Color? affirmativeTextColor,
      TextStyle? affirmativeTextStyle,
      String? dialogContent,
      String? dialogTitle,
      String? negativeText,
      Color? negativeTextColor,
      TextStyle? negativeTextStyle,
      Platform? platform}) {
    return DialogConfig._internal(
      affirmativeText: affirmativeText == null ? "Paste" : affirmativeText,
      affirmativeTextColor: affirmativeTextColor,
      affirmativeTextStyle: affirmativeTextStyle,
      dialogContent: dialogContent == null
          ? "Do you want to paste this code "
          : dialogContent,
      dialogTitle: dialogTitle,
      negativeText: negativeText == null ? "Cancel" : negativeText,
      negativeTextColor: negativeTextColor,
      negativeTextStyle: negativeTextStyle,
      platform: platform == null ? Platform.other : platform,
    );
  }
}
