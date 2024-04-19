import 'dart:async';

class CounterBloc {
  int initial = 1;
  late int counter;
  // step 1 --> creating a state stream controller - state pipes

  // create sink and stream for state stream controller - state pipe
  StreamController<int> _stateCounterController = StreamController();
  // sink object --> input side
  StreamSink<int> get counterSink => _stateCounterController.sink;
  // stream object --> output side
  Stream<int> get counterStream => _stateCounterController.stream;

  // (optional) step 2: creating a event stream controller - event pipes
  // create sink and stream for event stream controller - event pipe
  StreamController<int> _eventCounterController = StreamController();
  // sink object --> input side
  StreamSink<int> get eventSink => _eventCounterController.sink;
  // stream object --> output side
  Stream<int> get eventStream => _eventCounterController.stream;

  CounterBloc() {
    counter = 0;
    eventStream.listen((event) {
      counter += event;
      counterSink.add(counter);
    });
  }

  // close the stream controller
  void dispose() {
    _eventCounterController.close();
    _stateCounterController.close();
  }
}
