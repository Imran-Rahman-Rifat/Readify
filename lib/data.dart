import 'package:flutter/material.dart';
class Book{
  String title;
  String description;
  String score;
  String image;
  String pdf;
  Book(this.title,this.description,this.score,this.image,this.pdf);
}

List<Book> getBookList(){
  return <Book>[


    Book(
      " Before the coffee gets cold",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ",

      "4.14",
      "assets/Books/Before.jpg",
      "Before.pdf",
    ),
    Book(
      " The Alchemist",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ",

      "4.14",
      "assets/Books/Alchemist.jpg",
      "Alchemist.pdf",
    ),
    Book(
      " Opekkha",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ",

      "4.14",
      "assets/Books/Opekkha.png",
      "Opekkha.pdf",
    ),

    Book(
      " The Water Cure",
      " Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ",

        " 4.14",
        "assets/Books/the_water_cure_by_sophie_mackintosh.jpg",
      ".pdf",
    ),
    Book(
      " The Lost Night",
      " If you couldn't get enough of TBS's Search Party,or more A Hello, World! program is generally a simple computer program which outputs (or displays) to the screen (often the console) a message similar to Hello, World! while ignoring any user input. A small piece of code in most general-purpose programming languages, this program is used to illustrate a language's basic syntax. A Hello, World! program is often the first written by a student of a new programming language,[1] but such a program can also be used as a sanity check to ensure that the computer software intended to compile or run source code is correctly installed, and that its operator understands how to use it.",
      " 4.14",
      "assets/Books/the_lost_night_by_andrea_bartz.jpg",
      ".pdf"
    ),
  ];
}