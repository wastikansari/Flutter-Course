import 'package:flutter/material.dart';

class SICalculater extends StatefulWidget {
  @override
  _SICalculaterState createState() => _SICalculaterState();
}

class _SICalculaterState extends State<SICalculater> {
  var _formKey = GlobalKey<FormState>();

  final _minimumPadding = 5.0;
  var _CurrencyCal = ['Rupees', 'Dollars', 'Pounds'];

  var _currentItemSelected = 'Rupees';

  TextEditingController principalCal = TextEditingController();
  TextEditingController rateCal = TextEditingController();
  TextEditingController termCal = TextEditingController();

  var DisplayResult = '';

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;

    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Simpal Interest Calculater"),
      ),
      body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                ImageAssets(),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: TextFormField(
                    controller: principalCal,
                    keyboardType: TextInputType.number,
                    style: textStyle,
                    validator: (String value) {
                      if (value.isEmpty) {
                        return 'Please enter principal amount';
                      }
                    },
                    decoration: InputDecoration(
                        labelText: "Principal",
                        hintText: 'Enter Principal e.g 1500',
                        labelStyle: textStyle,
                        errorStyle: TextStyle(
                            color: Colors.yellowAccent, fontSize: 15.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: TextFormField(
                    controller: rateCal,
                    keyboardType: TextInputType.number,
                    style: textStyle,
                    validator: (String value) {
                      if (value.isEmpty) {
                        return 'Please enter rate of interest';
                      }
                    },
                    decoration: InputDecoration(
                        labelText: "Rate of Interest",
                        hintText: 'In percent',
                        labelStyle: textStyle,
                        errorStyle: TextStyle(
                            color: Colors.yellowAccent, fontSize: 15.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: termCal,
                          keyboardType: TextInputType.number,
                          style: textStyle,
                          validator: (String value) {
                            if (value.isEmpty) {
                              return 'Please enter time';
                            }
                          },
                          decoration: InputDecoration(
                              labelText: "Term",
                              hintText: 'Time in Years',
                              labelStyle: textStyle,
                              errorStyle: TextStyle(
                                  color: Colors.yellowAccent, fontSize: 15.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0))),
                        ),
                      ),
                      Container(width: _minimumPadding * 5),
                      Expanded(
                        child: DropdownButton<String>(
                          items: _CurrencyCal.map((String dropDownStringItem) {
                            return DropdownMenuItem<String>(
                              value: dropDownStringItem,
                              child: Text(dropDownStringItem),
                            );
                          }).toList(),
                          onChanged: (String newValueSelected) {
                            //your code execute, when a menu item is selected from drop down
                            setState(() {
                              this._currentItemSelected = newValueSelected;
                            });
                          },
                          value: _currentItemSelected,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: RaisedButton(
                          color: Theme.of(context).accentColor,
                          textColor: Theme.of(context).primaryColorDark,
                          child: Text('Calculater', textScaleFactor: 1.5),
                          onPressed: () {
                            setState(() {
                              if (_formKey.currentState.validate()) {
                                this.DisplayResult = _CalculateTotalReturns();
                              }
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: RaisedButton(
                          color: Theme.of(context).primaryColorDark,
                          textColor: Theme.of(context).primaryColorLight,
                          child: Text('Reset', textScaleFactor: 1.5),
                          onPressed: () {
                            setState(() {
                              reset();
                            });
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      this.DisplayResult,
                      style: textStyle,
                    ))
              ],
            ),
          )),
    );
  }

  Widget ImageAssets() {
    AssetImage assetImage = AssetImage('Assets/cal.png');
    Image image = Image(
      image: assetImage,
      width: 160.9,
      height: 160.9,
    );
    return Container(
      child: image,
      margin: EdgeInsets.all(_minimumPadding * 10),
    );
  }

  String _CalculateTotalReturns() {
    double principal = double.parse(principalCal.text);
    double rate = double.parse(rateCal.text);
    double term = double.parse(termCal.text);

    double totalAmount = principal + (principal * rate * term) / 100;

    String result =
        'After $term years, your investment will be worth $totalAmount $_currentItemSelected';

    return result;
  }

  void reset() {
    principalCal.text = '';
    rateCal.text = '';
    termCal.text = '';
    _currentItemSelected = _CurrencyCal[0];
  }
}
