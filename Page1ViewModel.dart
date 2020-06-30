import 'package:being_engineer/App/Locator.dart';
import 'package:being_engineer/App/Router.gr.dart';
// import 'package:being_engineer/Services/HiveAdaptors.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'Services.dart';

class Page1ViewModel extends ReactiveViewModel {
  final _navigationService = locator<NavigationService>();
  final timeTableDataService = locator<InfoServices>();

  navigateToNextPage() async =>
      await _navigationService.navigateTo(Routes.page2view);

  @override
  List<ReactiveServiceMixin> get reactiveServices => [];
}

//
//

//

//

//

//
// TestControl testControl;
// ListX<Reminder> get reminderList => testControl.reminderList;

// @override
// Future<bool> futureToRun() async {
//   testControl = Get.put<TestControl>(TestControl());

//   // await Future.delayed(Duration(seconds: 1));

//   return true;
// }

// String headerData(DateTime datetime) {
//   int differneceBtwDate = datetime.compareTo(DateTime.now());

//   if (differneceBtwDate < 0) {
//     return 'Time passed';
//   }

//   Duration remainingDate = datetime.difference(DateTime.now());
//   return remainingDate.inDays == 0
//       ? '${remainingDate.inHours}Hrs : ${remainingDate.inMinutes.remainder(60)}mins Remaining'
//       : '${remainingDate.inDays} Days and ${remainingDate.inHours.remainder(24)}Hrs Remaining';
// }

// Color headerColor(DateTime datetime) {
//   int differneceBtwDate = datetime.compareTo(DateTime.now());

//   if (differneceBtwDate < 0) {
//     return Colors.grey[350];
//   }
//   Duration remainingDate = datetime.difference(DateTime.now());

//   if (remainingDate.inDays < 2)
//     return Color(0x40FF0000);
//   else if (remainingDate.inDays < 7)
//     return Colors.blueAccent[100];
//   else
//     return Colors.greenAccent[100];
// }

// deleteByDismiss(int key, int index) async {
//   print('Delete Called');
//   print(key);

//   reminderList.removeAt(index);

//   // await reminderBox.delete(key);
//   notifyListeners();
// }
