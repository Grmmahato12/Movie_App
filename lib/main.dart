import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_apps/view/home_page.dart';

import 'api.dart';


Future<String> delaySome() async{
  return Future.delayed(Duration(seconds: 5), (){
    return 'hello world';
  });
}


// MovieState newState = MovieState(err: '', isLoad: false, movies: []);
//
// void m(){
//  newState =  newState.copyWith( err: 'hello', movieState: newState);
// }

void main() async{
  await Future.delayed(Duration(milliseconds: 500));
  // print(newState.err);
  // m();
  // print(newState.isLoad);
  //  print('hello world');
  // final m = await delaySome();
  // print(m);


  // final response = await MovieService.getMovieByCategory(apiPath: Api.popularMovie, page: 1);
  //   response.fold((l) => print(l), (r) => print(r));
  runApp(ProviderScope(
      child: Home()
  )
  );
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(

      )
  );
}



class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home:  HomePage(),
    );
  }
}