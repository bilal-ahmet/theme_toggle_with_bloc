
import 'package:bloc/bloc.dart';
import 'package:theme_toggle_bloc_myself/bloc/theme_event.dart';
import 'package:theme_toggle_bloc_myself/bloc/theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeLightState()) {
    on<ThemeEvent>((event, emit) {
      if(state is ThemeLightState){
        emit(ThemeDarkState());
        
      }
      else if(state is ThemeDarkState){
        emit(ThemeLightState());
      }
    });
  }
}
