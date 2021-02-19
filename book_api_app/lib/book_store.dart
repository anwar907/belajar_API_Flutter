/* 
 * Copyright (c) 2020 Razeware LLC
 * 
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * 
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 * 
 * Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
 * distribute, sublicense, create a derivative work, and/or sell copies of the
 * Software in any work that is designed, intended, or marketed for pedagogical or
 * instructional purposes related to programming, coding, application development,
 * or information technology.  Permission for such use, copying, modification,
 * merger, publication, distribution, sublicensing, creation of derivative works,
 * or sale is expressly withheld.
 * 
 * This project and source code may use libraries or frameworks that are
 * released under various Open-Source licenses. Use of those libraries and
 * frameworks are governed by their own individual licenses.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

class BookStore {

  factory BookStore(){
    return _instance;
  }

  BookStore._privateConstructor();
  static final BookStore _instance = BookStore._privateConstructor();

  final List<Map<String, dynamic>> _books = [
    Book(
        name: "To Kill a Mockingbird",
        author: "Harper Lee",
        description: "To Kill a Mockingbird was published in 1960 and became an immediate classic of literature. The novel examines racism in the American South through the innocent wide eyes of a clever young girl named Jean Louise (“Scout”) Finch.")
        .toMap(),
    Book(
        name: "The Great Gatsby",
        author: "F. Scott Fitzgerald",
        description: "The Great Gatsby provides an insider’s look into the Jazz Age of the 1920s in United States history while at the same time critiquing the idea of the American Dream.")
        .toMap(),
    Book(
        name: "One Hundred Years of Solitude",
        author: "Gabriel García Márquez",
        description: "The novel tells the story of seven generations of the Buendía family and follows the establishment of their town Macondo until its destruction along with the last of the family’s descendents.")
        .toMap(),
    Book(
        name: "A Passage to India",
        author: "E.M. Forster",
        description: "The novel tells the story of seven generations of the Buendía family and follows the establishment of their town Macondo until its destruction along with the last of the family’s descendents.")
        .toMap(),
    Book(
        name: "Invisible Man",
        author: "Ralph Ellison",
        description: "The novel tells the story of seven generations of the Buendía family and follows the establishment of their town Macondo until its destruction along with the last of the family’s descendents.")
        .toMap(),
    Book(
        name: "Neon In Daylight",
        author: "Hermione Hoby",
        description: "The debut novel from Guardian and New Yorker writer Hermione Hoby finds native Brit Kate in heatwave-struck New York where she meets two strangers, Bill and Inez, who she falls for in different ways and who pull her into the frantic rhythm of the city.")
        .toMap(),
    Book(
        name: "The Mermaid and Mrs Hancock",
        author: "Imogen Hermes Gower",
        description: "Gossip spreads through the docks of Georgian London when a merchant's ship is traded for a mermaid. But their new-found popularity leads to an encounter that will doom his dazzling prize.")
        .toMap(),
    Book(
        name: "Asymmetry",
        author: "Lisa Halliday",
        description: "Asymmetry draws together two improbably linked stories: a young woman who starts an affair with a famous writer in New York and an Iraqi-American who is detained at Heathrow airport.")
        .toMap(),
    Book(
        name: "Red Clocks",
        author: "Leni Zumas",
        description: "Set in an imagined future America were abortion is illegal, IVF is banned and new legislation grants rights to every new embryo, five women suffer the consequences of the new world order with one put on trial in a crazed witch-hunt.")
        .toMap(),

  ];

  List<Map<String, dynamic>> getBookList(){
    return _books;
  }

  bool deleteBookAtIndex(int index) {
    if(index >= 0 && index < _books.length){
      _books.removeAt(index);
      return true;
    }else{
      return false;
    }
  }
}

class Book {
  Book({this.name, this.author, this.description});

  String name;
  String author;
  String description;

  Map<String, dynamic> toMap() {
    return {"name": name, "author": author, "description": description};
  }
}
