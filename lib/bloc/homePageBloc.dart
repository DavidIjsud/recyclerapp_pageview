import 'dart:async';

class HomePageBloc {

     static final HomePageBloc _singleton = new HomePageBloc._internal();

     final StreamController<int> _pageControllerOutput = StreamController<int>.broadcast();
     final StreamController<int> _pageControllerInput = StreamController<int>();

    Stream<int> get pageStream => _pageControllerOutput.stream;
    StreamSink<int> get pageSink => _pageControllerInput.sink;

     factory HomePageBloc() {
        return _singleton;
     }

     HomePageBloc._internal(){
        _pageControllerInput.stream.listen(event);
     }


    void event(event){
        _pageControllerOutput.sink.add(event);
    } 

    dispose(){
        _pageControllerOutput.close();
        _pageControllerInput.close();
    }

    


}