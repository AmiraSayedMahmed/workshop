
abstract class NewsStates{}

class NewsInitialStates extends NewsStates{}

class getNewsLoading extends NewsStates{}

class getNewsState extends NewsStates{}

class getNewsError extends NewsStates{
  final String error;
  getNewsError(this.error);
}