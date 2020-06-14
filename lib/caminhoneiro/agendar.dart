import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart' show CalendarCarousel;
import 'package:player/sucesso.dart';

class Agendar extends StatefulWidget {
  @override
  _AgendarState createState() => _AgendarState();
}

class _AgendarState extends State<Agendar> {
  DateTime _currentDate;
  DateTime _markedDateMap;
  String dropdownValue = 'Selecione um estado';
  String dropdownValue2 = 'Selecione uma clínica';
  String dropdownValue3 = 'Selecione um especialista';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: Container(
        child: Stack(  
              children: <Widget>[
                  Positioned(
                  child: Container(
                  alignment: Alignment.center,
                 /* decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0, 0.5],
                      colors: [
                        Color(0xFFdfa409),
                        Color(0XFF963521),
                      ],
                    )
                  ),*/
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      
                      Container(
                        width: double.infinity,
                        child: Image.asset('assets/background.png'),
                      ),
                     
                      Container(
                        width: double.infinity,
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(40.0),
                            topRight: const Radius.circular(40.0),
                          )
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        color: Colors.white,
                        child: Column(
                          children: <Widget>[
                           Container(
                                margin: EdgeInsets.only(left: 16,right: 16),
                                child: CalendarCarousel<Event>(
                                  onDayPressed: (DateTime date, List<Event> events) {
                                    this.setState(() => _currentDate = date);
                                  },
                                  headerTextStyle:TextStyle(fontSize: 20.0, color: Color(0XFF963521)),
                                  iconColor: Color(0XFF963521),
                                  todayButtonColor: Color(0XFFbe7214),
                                  todayBorderColor:  Color(0XFFbe7214),
                                  selectedDayBorderColor: Color(0XFF963521),
                                  selectedDayButtonColor: Color(0XFF963521),
                                  weekendTextStyle: TextStyle(
                                    color: Colors.red,
                                  ),
                                  thisMonthDayBorderColor: Colors.grey,
                                  customDayBuilder: (
                                    bool isSelectable,
                                    int index,
                                    bool isSelectedDay,
                                    bool isToday,
                                    bool isPrevMonthDay,
                                    TextStyle textStyle,
                                    bool isNextMonthDay,
                                    bool isThisMonthDay,
                                    DateTime day,
                                  ) {
                                  },
                                  weekFormat: false,
                                  height: 420.0,
                                  selectedDateTime: _currentDate,
                                  daysHaveCircularBorder: false, /// null for not rendering any border, true for circular border, false for rectangular border
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20,right: 20,bottom: 20),
                                child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0XFF963521),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.all(const Radius.circular(5.0))
                                    ),
                                  child:Padding(
                                    padding: EdgeInsets.all(5),
                                    child: DropdownButton<String>(
                                      value: dropdownValue,
                                      elevation: 16,
                                      isExpanded: true,
                                      style: TextStyle(color: Colors.black,fontSize: 20),
                                      onChanged: (String newValue) {
                                        setState(() {
                                          dropdownValue = newValue;
                                        });
                                      },
                                      items: <String>['Selecione um estado', 'Two', 'Free', 'Four']
                                          .map<DropdownMenuItem<String>>((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20,right: 20,bottom: 20),
                                child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0XFF963521),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.all(const Radius.circular(5.0))
                                    ),
                                  child:Padding(
                                    padding: EdgeInsets.all(5),
                                    child: DropdownButton<String>(
                                      value: dropdownValue2,
                                      elevation: 16,
                                      isExpanded: true,
                                      style: TextStyle(color: Colors.black,fontSize: 20),
                                      onChanged: (String newValue) {
                                        setState(() {
                                          dropdownValue2 = newValue;
                                        });
                                      },
                                      items: <String>['Selecione uma clínica', 'Two', 'Free', 'Four']
                                          .map<DropdownMenuItem<String>>((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20,right: 20,bottom: 20),
                                child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0XFF963521),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.all(const Radius.circular(5.0))
                                    ),
                                  child:Padding(
                                    padding: EdgeInsets.all(5),
                                    child: DropdownButton<String>(
                                      value: dropdownValue3,
                                      elevation: 16,
                                      isExpanded: true,
                                      style: TextStyle(color: Colors.black,fontSize: 20),
                                      onChanged: (String newValue) {
                                        setState(() {
                                          dropdownValue3 = newValue;
                                        });
                                      },
                                      items: <String>['Selecione um especialista', 'Two', 'Free', 'Four']
                                          .map<DropdownMenuItem<String>>((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Sucesso("Tudo ok, sua consulta está em analise!!"))
                                      );
                                },
                                child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Container(
                                  width: 200,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Color(0XFF963521),
                                    border: Border.all(
                                      color: Color(0XFF963521),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.all(const Radius.circular(5.0))
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                    Text("Agendar",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)
                                  ],)
                                ),
                              ),
                              )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ),
              Positioned(
                top: 70,
                left: -10,
                right: -10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('assets/Ellipse.png')
                  ],
                ),
              ),

               Positioned(
                  child:  Padding(
                    padding: EdgeInsets.only(top:20),
                    child:Container(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        iconSize: 40,
                        icon: Icon(Icons.arrow_back_ios),
                        color: Colors.white,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    )
                  ),
                ),
                
              ],
            ),
          ),
      ),
    );
  }
}