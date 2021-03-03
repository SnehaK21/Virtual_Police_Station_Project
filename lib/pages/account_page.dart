import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StepperDemo extends StatefulWidget {
  @override
  _StepperDemoState createState() => _StepperDemoState();
}

class _StepperDemoState extends State<StepperDemo> {
  int _currentStep = 0;
  StepperType stepperType = StepperType.vertical;

  // Declare this variable
  int selectedRadio;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

// Changes the selected value on 'onChanged' click on each radio button
  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('File Complaint'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Stepper(
                type: stepperType,
                physics: ScrollPhysics(),
                currentStep: _currentStep,
                onStepTapped: (step) => tapped(step),
                onStepContinue: continued,
                onStepCancel: cancel,
                steps: <Step>[
                  //-------------------------------- STEP 1 ------------------------------------------------------ //
                  Step(
                    title: new Text('Personal Details'),
                    subtitle: new Text('subtitle blah blah '),
                    content: Column(
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: TextFormField(
                                decoration: InputDecoration(
                              labelText: 'Full Name',
                              hintText: 'Firstname   Middlename   Lastname',
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide:
                                    BorderSide(color: Colors.indigo[900]),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide:
                                    BorderSide(color: Colors.blue, width: 3),
                              ),
                            ))),
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Phone Number',
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide:
                                      BorderSide(color: Colors.indigo[900]),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide:
                                      BorderSide(color: Colors.blue, width: 3),
                                ),
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Additional Phone /Landline Number',
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide:
                                      BorderSide(color: Colors.indigo[900]),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide:
                                      BorderSide(color: Colors.blue, width: 3),
                                ),
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Email id ',
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide:
                                      BorderSide(color: Colors.indigo[900]),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide:
                                      BorderSide(color: Colors.blue, width: 3),
                                ),
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Phone Number',
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide:
                                      BorderSide(color: Colors.indigo[900]),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide:
                                      BorderSide(color: Colors.blue, width: 3),
                                ),
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: TextFormField(
                                decoration: InputDecoration(
                                    labelText: 'Date of Birth',
                                    border:
                                        OutlineInputBorder() // add datepicker //
                                    ))),
                      ],
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 0
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  // -------------------------------------  STEP 2 ------------------------------------------- //
                  Step(
                    title: new Text('Enter Address'),
                    content: Column(
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'House/flat no',
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide:
                                      BorderSide(color: Colors.indigo[900]),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide:
                                      BorderSide(color: Colors.blue, width: 3),
                                ),
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Street Name',
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide:
                                      BorderSide(color: Colors.indigo[900]),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide:
                                      BorderSide(color: Colors.blue, width: 3),
                                ),
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Locality/Area Name',
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide:
                                      BorderSide(color: Colors.indigo[900]),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide:
                                      BorderSide(color: Colors.blue, width: 3),
                                ),
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Village/Town/City Name',
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide:
                                      BorderSide(color: Colors.indigo[900]),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide:
                                      BorderSide(color: Colors.blue, width: 3),
                                ),
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'District',
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide:
                                      BorderSide(color: Colors.indigo[900]),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide:
                                      BorderSide(color: Colors.blue, width: 3),
                                ),
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'State',
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide:
                                      BorderSide(color: Colors.indigo[900]),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide:
                                      BorderSide(color: Colors.blue, width: 3),
                                ),
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Pincode',
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide:
                                      BorderSide(color: Colors.indigo[900]),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide:
                                      BorderSide(color: Colors.blue, width: 3),
                                ),
                              ),
                            )),
                        new Text(
                            'Is your Temporary Address same as Permanent Address ?'),
                        Row(
                          children: [
                            new Text('Yes'),
                            Radio(
                              value: 1,
                              groupValue: selectedRadio,
                              activeColor: Colors.blue,
                              onChanged: (val) {
                                //print("Radio $val");
                                setSelectedRadio(val);
                              },
                            ),
                            new Text('No'),
                            Radio(
                              value: 2,
                              groupValue: selectedRadio,
                              activeColor: Colors.blue,
                              onChanged: (val) {
                                //print("Radio $val");
                                setSelectedRadio(val);
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 1
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  //-------------------------- STEP 3 --------------------------------------------//
                  Step(
                    title: new Text('Incident Details'),
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Place of Incident',
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide:
                                      BorderSide(color: Colors.indigo[900]),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide:
                                      BorderSide(color: Colors.blue, width: 3),
                                ),
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Type of Incident',
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide:
                                      BorderSide(color: Colors.indigo[900]),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide:
                                      BorderSide(color: Colors.blue, width: 3),
                                ),
                              ),
                            )),
                        new Text('Is Date/Time of incident known to you ?'),
                        Row(
                          children: [
                            new Text('Yes'),
                            Radio(
                              value: 1,
                              groupValue: selectedRadio,
                              activeColor: Colors.blue,
                              onChanged: (val) {
                                //print("Radio $val");
                                setSelectedRadio(val);
                              },
                            ),
                            new Text('No'),
                            Radio(
                              value: 2,
                              groupValue: selectedRadio,
                              activeColor: Colors.blue,
                              onChanged: (val) {
                                //print("Radio $val");
                                setSelectedRadio(val);
                              },
                            ),
                          ],
                        ),
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Date of Incident',
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide:
                                      BorderSide(color: Colors.indigo[900]),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide:
                                      BorderSide(color: Colors.blue, width: 3),
                                ),
                              ), // add datepicker code //
                            )),
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Time of Incident',
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide:
                                      BorderSide(color: Colors.indigo[900]),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide:
                                      BorderSide(color: Colors.blue, width: 3),
                                ),
                              ), // add time code //
                            )),
                      ],
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 2
                        ? StepState.complete
                        : StepState.disabled,
                  ),
//----------------------------------------- STEP 4 -------------------------------------------- //
                  Step(
                    title: new Text('Your Complaint'),
                    content: Column(
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Date of Complaint',
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide:
                                      BorderSide(color: Colors.indigo[900]),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide:
                                      BorderSide(color: Colors.blue, width: 3),
                                ),
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: TextFormField(
                                minLines: 4,
                                maxLines: 6,
                                //controller: myController,
                                decoration: InputDecoration(
                                  labelText: 'Complaint Description',
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide:
                                        BorderSide(color: Colors.indigo[900]),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: BorderSide(
                                        color: Colors.blue, width: 3),
                                  ),
                                ),
                                maxLength: 8000,
                                maxLengthEnforced: true)),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Remarks',
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide:
                                    BorderSide(color: Colors.indigo[900]),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide:
                                    BorderSide(color: Colors.blue, width: 3),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 3
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  tapped(int step) {
    setState(() => _currentStep = step);
  }

  continued() {
    _currentStep < 3 ? setState(() => _currentStep += 1) : null;
  }

  cancel() {
    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  }
}
