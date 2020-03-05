import 'package:date_format/date_format.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';
import 'package:flutter/material.dart';

class DatePickerPage extends StatefulWidget {
  DatePickerPage({Key key}) : super(key: key);
  @override
  _DatePickerPageState createState() => _DatePickerPageState();
}

class _DatePickerPageState extends State<DatePickerPage> {
  DateTime currentDate;
  TimeOfDay currentTime;
  DateTime datePickerTime;

  @override
  void initState() {
    super.initState();
    currentDate = DateTime.now();
    currentTime = TimeOfDay(hour: 14, minute: 25);
    datePickerTime = DateTime.parse("2020-02-25");
  }

  _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: this.currentDate,
      firstDate: DateTime(1970, 1, 1),
      lastDate: DateTime(2080, 12, 31),
    ).then((date) {
      setState(() {
        this.currentDate = date ?? this.currentDate;
      });
    });
  }

  _showTimePicker() async {
    var result = await showTimePicker(
      context: context,
      initialTime: this.currentTime,
    );
    setState(() {
      this.currentTime = result ?? this.currentTime;
    });
  }

  _showCupertinoDatePicker() {
    DatePicker.showDatePicker(
      context,
      pickerTheme: DateTimePickerTheme(
        // showTitle: true,
        // title: Text("${formatDate(this.datePickerTime, [yyyy, "-", mm, "-", dd])}"),
        confirm: Text('确定', style: TextStyle(color: Colors.blue)),
        cancel: Text('取消', style: TextStyle(color: Colors.red)),
      ),
      minDateTime: DateTime.parse("2000-05-12"),
      maxDateTime: DateTime.parse("2021-11-25"),
      initialDateTime: this.datePickerTime,
      dateFormat: "yyyy-MMMM-dd",
      locale: DateTimePickerLocale.zh_cn,
      onClose: () => print("----- 已关闭 -----"),
      onCancel: () => print('已取消'),
      onChange: (dateTime, List<int> index) {
        setState(() {
          this.datePickerTime = dateTime;
        });
      },
      onConfirm: (dateTime, List<int> index) {
        setState(() {
          this.datePickerTime = dateTime;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("日期时间组件"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.date_range,
                      color: Colors.lightBlue,
                      size: 30.0,
                    ),
                    Text(formatDate(this.currentDate, [yyyy, "年", mm, "月", dd, "日"])),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
                onTap: _showDatePicker),
            SizedBox(height: 20.0),
            InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.watch_later),
                  Text("${currentTime.format(context)}"),
                  Icon(Icons.arrow_drop_down)
                ],
              ),
              onTap: _showTimePicker,
            ),
            SizedBox(height: 20.0),
            InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.calendar_today),
                  Text("第三方苹果风格的日期选择组件${formatDate(this.datePickerTime, [yyyy, "-", mm, "-", dd])}"),
                  Icon(Icons.arrow_drop_down)
                ],
              ),
              onTap: _showCupertinoDatePicker,
            )
          ],
        ));
  }
}
