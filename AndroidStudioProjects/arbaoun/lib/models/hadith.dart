class Hadith{
  String key,nameHadith,textHadith,explanationHadith,translateNarrator,audioHadith;

  Hadith({required this.key, required this.nameHadith,required this.textHadith,required this.explanationHadith,
     required this.translateNarrator,required this.audioHadith});



  Map<String, dynamic> toJson() {
    return {
      "key": this.key,
      "nameHadith": this.nameHadith,
      "textHadith": this.textHadith,
      "explanationHadith": this.explanationHadith,
      "translateNarrator": this.translateNarrator,
      "audioHadith": this.audioHadith,
    };
  }


}