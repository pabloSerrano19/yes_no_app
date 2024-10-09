
import 'package:yes_no_app/domain/message.dart';

class YesNoModel {
    final String answer;
    final bool forced;
    final String image;

    YesNoModel({
        required this.answer,
        required this.forced,
        required this.image,
    });

    factory YesNoModel.fromJson(Map<String, dynamic> json) => YesNoModel(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
    );

    Message toMessageEntity()=> Message(text: answer == "yes" ? "Sí" : "No", 
    fromWho: FromWho.hers,
    imageUrl: image);
}