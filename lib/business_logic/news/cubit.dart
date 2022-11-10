import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workshop/business_logic/news/states.dart';

import '../../data/data_provider/remote/dio_helper.dart';



class NewsCubit extends Cubit<NewsStates>
{
  NewsCubit() : super(NewsInitialStates());
  static NewsCubit get(context) => BlocProvider.of(context);
  List<dynamic>news=[];

void getNews()
{
  DioHelper.getdata(
      url: 'v2/top-headlines',
      query:
      {
        'country':'eg',
        'category':'health',
        'apiKey':'a079a31564c249a29f936b434d4a50d0',

      }).then((value){
    print(value.data.toString());
    news = value.data['articles'];
 //   print(news[0]['title']);
    emit(getNewsState());

  }).catchError((error){
    print(error.toString());
    emit(getNewsError(error.toString()));
  });

}

}
  
