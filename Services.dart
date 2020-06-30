import 'package:stacked/stacked.dart';

class InfoServices with ReactiveServiceMixin {
  Map<String, Subject> _timetableMap = Map<String, Subject>();
  Map<String, Subject> get timetableMap => _timetableMap;

  InfoServices() {
    print('Initialised');
    listenToReactiveValues([_timetableMap]);

    _timetableMap['0'] = Subject(subjectName: 'Subject 0');
    _timetableMap['1'] = Subject(subjectName: 'Subject 1');
    _timetableMap['2'] = Subject(subjectName: 'Subject 2');
    _timetableMap['3'] = Subject(subjectName: 'Subject 3');
    _timetableMap['4'] = Subject(subjectName: 'Subject 4');
    _timetableMap['5'] = Subject(subjectName: 'Subject 5');
    _timetableMap['6'] = Subject(subjectName: 'Subject 6');
    _timetableMap['7'] = Subject(subjectName: 'Subject 7');
    _timetableMap['8'] = Subject(subjectName: 'Subject 8');
    print('Done');
  }

  void add(String index, Subject data) {
    print('Got Data');
    _timetableMap[index] = data;
    // reload = true;
    print(data.subjectName);
    print('Changed');
    notifyListeners();
    print('Changed1');
  }
}

class Subject {
  String subjectName;
  String begin;
  String end;

  Subject({this.subjectName, this.begin, this.end});
}
