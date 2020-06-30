import 'package:being_engineer/App/Locator.dart';
// import 'package:being_engineer/App/Router.gr.dart';
import 'package:stacked/stacked.dart';
// import 'package:stacked_services/stacked_services.dart';
import 'Services.dart';

class Page2ViewModel extends ReactiveViewModel {
  final timeTableDataService = locator<InfoServices>();

  int count;

  Page2ViewModel() {
    count = 8;
  }

  @override
  List<ReactiveServiceMixin> get reactiveServices => [];

  add() {
    ++count;
    timeTableDataService.add(
        count.toString(), Subject(subjectName: 'Subjects $count'));
    // notifyListeners();
  }
}
