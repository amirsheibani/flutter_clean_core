extension ListExtension on Iterable? {
  String toReadableString() {
    return toString().replaceAll('[', '').replaceAll(']', '').replaceAll('(', '').replaceAll(')', '');
  }

  bool get isNullOrEmpty {
    if (this != null) {
      if (this!.isNotEmpty) return false;
    }
    return true;
  }
}
