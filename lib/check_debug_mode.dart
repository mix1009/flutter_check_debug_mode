class CheckDebugMode {
  static bool _isDebugMode = false;
  static bool _checked = false;

  static get isDebugMode {
    if (!_checked) {
      assert(() {
        _isDebugMode = true;
        return true;
      }());
      _checked = true;
    }

    return _isDebugMode;
  }
}
