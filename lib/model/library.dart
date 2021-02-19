//TODO: Add the data model class for the network response

import 'dart:convert';

class Book {
  final String name;
  final String author;
  final String description;

  Book({this.name, this.author, this.description});

  factory Book.fromJson(Map<String, dynamic> json) => Book(
        name: json['name'],
        author: json['author'],
        description: json['description'],
      );

  Map<String, dynamic> toJson() =>
      {"name": name, "author": author, "description": description};
}

class Library {
  final List<Book> books;

  Library({this.books});

  factory Library.fromRawJson(String str) => Library.fromJson(json.decode(str));

  factory Library.fromJson(Map<String, dynamic> json) => Library(
      books: List<Book>.from(json["bookList"].map((x) => Book.fromJson(x))));

  Map<String, dynamic> toJson() =>
      {"bookList": List<dynamic>.from(books.map((e) => e.toJson()))};
}
