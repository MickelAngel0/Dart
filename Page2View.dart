import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'Page2ViewModel.dart';
import 'Services.dart';

class Page2View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<Page2ViewModel>.reactive(
      viewModelBuilder: () => Page2ViewModel(),
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            elevation: 0.0,
            title: Text('Page 2',
                style: TextStyle(fontSize: 26, color: Colors.black)),
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: Icon(Icons.keyboard_arrow_left,
                  color: Colors.black, size: 30),
              onPressed: () {},
            ),
          ),
          body: model.isBusy
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: model.timeTableDataService.timetableMap.length,
                  itemBuilder: (context, index) {
                    print('Built Page 2  $index');
                    Subject data = model
                        .timeTableDataService.timetableMap[index.toString()];
                    return ListTile(
                      title: Text(data.subjectName.toString()),
                      leading: Text(index.toString()),
                      dense: true,
                    );
                  },
                ),
          floatingActionButton:
              FloatingActionButton(onPressed: () => model.add()),
        );
      },
    );
  }
}
