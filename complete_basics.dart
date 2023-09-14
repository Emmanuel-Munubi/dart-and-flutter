import 'dart:convert';
import 'dart:io';
// import 'dart:html';

// void main() {

// }

// lets do some asynchroneous programming
// we will use the dart:io library to read a file
// we will use the dart:convert library to convert the file contents to a string
// we will use the dart:html library to write the string to a file

// we will use the async and await keywords to make our code more readable

// Future<void> main() async {
//   var file = File('./fle');
//   var contents = await file.readAsString();
//   print(contents);
// }

// read the file as a stream of lines

Future<void> main() async {
  var file = File('./fle');
  Stream<String> lines = file
      .openRead()
      .transform(utf8.decoder)
      .transform(LineSplitter()); // LineSplitter is a transformer
  List<String> linesList = [];
  try {
  await for (var line in lines) {
    linesList.add(line);
  }
  } catch (e) {
    print(e.toString());
  }
  print(linesList);
}
