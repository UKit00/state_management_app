import 'package:flutter_bloc/flutter_bloc.dart';

enum CountEvent { INCREMENT, DECREMENT }

class CounterBloc extends Bloc<CountEvent, int> {
  CounterBloc() : super(0) {
    on<CountEvent>((event, emit) {
      switch (event) {
        case CountEvent.DECREMENT:
          if (state > 0) {
            emit(state - 1);
          }
          break;
        case CountEvent.INCREMENT:
          if (state < 10) {
            emit(state + 1);
          }
          break;
      }
    });
  }

  // @override
  // Stream<int> mapEventToState(CountEvent event) async* {
  //   switch (event) {
  //     case CountEvent.DECREMENT:
  //       yield state - 1;
  //       break;
  //     case CountEvent.INCREMENT:
  //       yield state + 1;
  //       break;
  //   }
  // }
}
