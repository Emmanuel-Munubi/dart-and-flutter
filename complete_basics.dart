import 'dart:convert';
// import 'dart:html';

void main() {
  // NOTE: Be sure to use double quotes ("),
// not single quotes ('), inside the JSON string.
// This string is JSON, not Dart.
  var jsonString = '''
  [
    {"score": 40},
    {"score": 80}
  ]
''';

  var scores = jsonDecode(jsonString);
  scores.add({'score': 100});

  

  print(scores);
}
