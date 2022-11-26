import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:artikel/app/domain/entity/word.dart';

class GameSession {
  String? documentId;
  int? id;
  List<Word>? words;
  int dogruSayisi;

  GameSession({
    this.documentId,
    this.id,
    this.words,
    this.dogruSayisi = 0,
  });

  GameSession copyWith({
    String? documentId,
    int? id,
    List<Word>? words,
    int? dogruSayisi,
  }) {
    return GameSession(
      documentId: documentId ?? this.documentId,
      id: id ?? this.id,
      words: words ?? this.words,
      dogruSayisi: dogruSayisi ?? this.dogruSayisi,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'documentId': documentId,
      'id': id,
      'words': words?.map((x) => x?.toMap())?.toList(),
      'dogruSayisi': dogruSayisi,
    };
  }

  factory GameSession.fromMap(Map<String, dynamic> map) {
    return GameSession(
      documentId: map['documentId'],
      id: map['id']?.toInt(),
      words: map['words'] != null
          ? List<Word>.from(map['words']?.map((x) => Word.fromMap(x)))
          : null,
      dogruSayisi: map['dogruSayisi']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory GameSession.fromJson(String source) =>
      GameSession.fromMap(json.decode(source));

  @override
  String toString() {
    return 'GameSession(documentId: $documentId, id: $id, words: $words, dogruSayisi: $dogruSayisi)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GameSession &&
        other.documentId == documentId &&
        other.id == id &&
        listEquals(other.words, words) &&
        other.dogruSayisi == dogruSayisi;
  }

  @override
  int get hashCode {
    return documentId.hashCode ^
        id.hashCode ^
        words.hashCode ^
        dogruSayisi.hashCode;
  }

  increment() {
    dogruSayisi++;
  }
}
