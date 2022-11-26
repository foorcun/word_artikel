import 'dart:convert';

class Word {
  String? documentId;
  int? id;
  String? word;
  String? artikel;
  Word({
    this.documentId,
    this.id,
    this.word,
    this.artikel,
  });

  Word copyWith({
    String? documentId,
    int? id,
    String? word,
    String? artikel,
  }) {
    return Word(
      documentId: documentId ?? this.documentId,
      id: id ?? this.id,
      word: word ?? this.word,
      artikel: artikel ?? this.artikel,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'documentId': documentId,
      'id': id,
      'word': word,
      'artikel': artikel,
    };
  }

  factory Word.fromMap(Map<String, dynamic> map) {
    return Word(
      documentId: map['documentId'],
      id: map['id']?.toInt(),
      word: map['word'],
      artikel: map['artikel'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Word.fromJson(String source) => Word.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Word(documentId: $documentId, id: $id, word: $word, artikel: $artikel)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Word &&
        other.documentId == documentId &&
        other.id == id &&
        other.word == word &&
        other.artikel == artikel;
  }

  @override
  int get hashCode {
    return documentId.hashCode ^ id.hashCode ^ word.hashCode ^ artikel.hashCode;
  }
}
