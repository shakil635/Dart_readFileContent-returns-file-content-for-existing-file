/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

import 'dart:io';

export 'src/dart_safe_fle_reading_base.dart';

// TODO: Export any libraries intended for clients of this package.

Future<String> readFileContent(String filename) async {
  try {
    return await File(filename).readAsString();
  } on FileSystemException {
    return 'File not found';
  } catch (e) {
    rethrow;
  }
}
/*
Practice Question 1: Safe File Reading
Question:

Write a function readFileContent(String filename) 
that attempts to read content from a file with the given filename.
Handle the FileSystemException if the file is not found, 
and return a default message “File not found”.
If any other exception occurs, 
rethrow it. (i.e. try to access the 
index of an array which is higher than the array length)
 */