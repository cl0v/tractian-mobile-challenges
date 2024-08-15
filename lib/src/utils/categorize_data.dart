enum ContentType { asset, component }

enum ContentParent { asset, component, location }

class ContentCategory {
  ContentParent parent;
  ContentType type;

  ContentCategory(this.parent, this.type);
}

ContentCategory categorize(Map<String, String?> data) {
  if (data.containsKey("sensorType") && data["sensorType"] != null) {
    return ContentCategory( ContentType.component);
  }
}
