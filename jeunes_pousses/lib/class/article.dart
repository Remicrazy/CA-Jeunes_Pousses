class Article {
  final String author;
  final String texte;
  final String title;

  Article({this.title, this.author, this.texte});

  Map<String, dynamic> toMap() {
    return {
      'author': author,
      'texte': texte,
      'title': title,
    };
  }

  @override
  String toString() {
    return 'Article{ author: $author, texte: $texte, title: $title}';
  }

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
        author: json['author'], texte: json['texte'], title: json['title']);
  }
}
