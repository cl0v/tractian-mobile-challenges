dynamic sortTree(List<Map<String, String?>> data) {
  List<Map<String, dynamic>> sortedData = [];

  for (var d in data) {
    if (d.containsKey("parentId")) {
      if (d["parentId"] == null) {
        sortedData.add(d);
      } else {
        _innerSorter(d, sortedData);
      }
    }
  }
  return data;
}

_innerSorter(
  Map<String, dynamic> data,
  List<Map<String, dynamic>> list,
) {
  list.
}


