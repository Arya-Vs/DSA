// import 'dart:convert';

// import 'package:http/http.dart' as http;

// Future<dynamic>apicall(String url)async{
//   try{
//     http.Response response;
//     response=await http.get(Uri.parse(url));
//     if(response.statusCode==200){
//       Map<String,dynamic>data=jsonDecode(response.body) as Map<String,dynamic>;
//       TMDBApiResponseModel tmdbApiResponse=TMDBApiResponseModel.fromJson(data);
//       return tmdbApiResponse;
//     }else{
//       throw 'not found ${response.statusCode}';
//     }
//   }catch(error){
//     throw 'null $error';
//   }
// }