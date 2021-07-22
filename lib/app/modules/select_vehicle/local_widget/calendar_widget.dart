import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:some_calendar/some_calendar.dart';
import 'package:uber_test/app/modules/select_vehicle/select_vehicle_controller.dart';
import 'package:uber_test/app/theme/colors.dart';

class CalendarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SelectVehicleController>(
      builder: (_) => SomeCalendar(
        primaryColor: blue,
        mode: SomeMode.Single,
        labels: new Labels(
          dialogDone: 'Done',
          dialogCancel: 'Cancel',
          dialogRangeFirstDate: 'Tanggal Pertama',
          dialogRangeLastDate: 'Tanggal Terakhir',
        ),
        isWithoutDialog: false,
        selectedDate: _.selectedDate,
        startDate: new DateTime.now(),
        lastDate: DateTime(2090),
        done: _.onChangedDate,
      ),
    );
  }
}
