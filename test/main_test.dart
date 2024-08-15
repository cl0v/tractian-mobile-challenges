import 'package:flutter_test/flutter_test.dart';
import 'package:tractian/src/utils/sort_tree.dart';

void main() {
  test('Build the hierarchy', () {
    var data = [
      {
        "id": "656a07b3f2d4a1001e2144bf",
        "name": "CHARCOAL STORAGE SECTOR",
        "parentId": "65674204664c41001e91ecb4"
      },
      {
        "id": "65674204664c41001e91ecb4",
        "name": "PRODUCTION AREA - RAW MATERIAL",
        "parentId": null
      }
    ];

    final result = sortTree(data);

    expect(result, [
      {
        "id": "65674204664c41001e91ecb4",
        "name": "PRODUCTION AREA - RAW MATERIAL",
        "children": [
          {
            "id": "656a07b3f2d4a1001e2144bf",
            "name": "CHARCOAL STORAGE SECTOR",
            "children": [
              {
                "id": "656a07c3f2d4a1001e2144c5",
                "name": "MOTOR TC01 COAL UNLOADING AF02",
              }
            ]
          }
        ]
      }
    ]);
  });
}
