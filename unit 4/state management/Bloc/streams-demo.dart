import 'dart:async';

void main(List<String> args) {
  // Stream.periodic(const Duration(seconds: 1), (x) => x).listen((event) {
  //   print(event);
  // });

  // creating a stream source using stream controller
  final StreamController streamController = StreamController<int>.broadcast();

  var value = 0;

  // // controller can manipulate the stream data
  Timer.periodic(const Duration(seconds: 1), (timer) {
    streamController.add(
        value++); // add a new value to the stream, and the value is incremented by 1
  });

  // // print the values and give to the subscriber
  StreamSubscription subscription =  streamController.stream.listen((event) {
    print(event);
  });

   StreamSubscription subscription2 =  streamController.stream.listen((event) {
    print(event);
  });

  // streamsubscription won't stop listening to the stream until you cancel it

  Timer.periodic(const Duration(seconds: 1), (timer) {
    if (value == 5) {
      timer.cancel();
      streamController.close();
      subscription.cancel();
    }else{
      streamController.add(
        value++);
    }
  });
}
