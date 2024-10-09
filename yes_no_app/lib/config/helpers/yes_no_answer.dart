
import 'package:dio/dio.dart';
import 'package:yes_no_app/domain/message.dart';
import 'package:yes_no_app/infraestructure/yes_no_model.dart';

class GetYesNoAnswer{
  
final dio = Dio();

Future <Message> getAnswer() async{
  
  final response =await dio.get('http://yesno.wtf/api');
  /*final response = {
    "answer": "no",
    "forced": false,
    "image": "https://yesno.wtf/assets/no/12-dafd576be23d3768641340f76658ddfe.gif"
};*/

 
  final yesNoModel=YesNoModel.fromJson( response.data); 
  return yesNoModel.toMessageEntity();
  

  //throw UnimplementedError();
}

}