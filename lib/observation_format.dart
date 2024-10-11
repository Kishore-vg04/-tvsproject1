import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class observation_format extends StatefulWidget {
  const observation_format({super.key});

  @override
  State<observation_format> createState() => _observation_formatState();
}

class _observation_formatState extends State<observation_format> {
  TextEditingController datePicker = TextEditingController();
  TextEditingController datePicker2 = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String? selectedStd;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 20.0,
        backgroundColor: const Color.fromARGB(255, 3, 63, 113),
        title: const Text(
          'OBSERVATION FORMAT',
          style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Form(
          child: Padding(
            padding: const EdgeInsets.only(right: 20.0,left: 20.0),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 20.0),
                TextFormField(
                  controller: datePicker,
                  decoration: const InputDecoration(
                    labelText: 'Date',
                    labelStyle: TextStyle(
                      fontSize: 19,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(),
                  ),
                  onTap: () async {
                    DateTime? datetime = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime.now(),
                    );
                    if (datetime != null) {
                      String formattedDate = DateFormat('yyyy-MM-dd').format(datetime);
                      setState(() {
                        datePicker.text = formattedDate;
                      });
                    }
                  },
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Name of the Teacher Mr/Ms',
                    labelStyle: TextStyle(
                      fontSize: 19.0,
                      color: Colors.black
                    ),
                    border: OutlineInputBorder()
                  ),
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Department/Subject',
                      labelStyle: TextStyle(
                          fontSize: 19.0,
                          color: Colors.black
                      ),
                      border: OutlineInputBorder()
                  ),
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Strength',
                      labelStyle: TextStyle(
                          fontSize: 19.0,
                          color: Colors.black
                      ),
                      border: OutlineInputBorder()
                  ),
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Areas To Improve',
                      labelStyle: TextStyle(
                          fontSize: 19.0,
                          color: Colors.black
                      ),
                      border: OutlineInputBorder()
                  ),
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Hands On Holding(Support/Action Taken By As When Improvement is Mentioned',
                      labelStyle: TextStyle(
                          fontSize: 19.0,
                          color: Colors.black
                      ),
                      border: OutlineInputBorder()
                  ),
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  controller: datePicker2,
                  decoration: const InputDecoration(
                    labelText: 'Observed Date',
                    labelStyle: TextStyle(
                      fontSize: 19,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(),
                  ),
                  onTap: () async {
                    DateTime? datetime = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime.now(),
                    );
                    if (datetime != null) {
                      String formattedDate = DateFormat('yyyy-MM-dd').format(datetime);
                      setState(() {
                        datePicker2.text = formattedDate;
                      });
                    }
                  },
                ),
                const SizedBox(height: 20.0),
                DropdownButtonFormField<String>(
                  value: selectedStd,
                  decoration: InputDecoration(
                    labelText: 'Std',
                    border: OutlineInputBorder(),
                  ),
                  hint: Text('Select Std'),
                  items: [
                    'LKG',
                    'UKG',
                    'I',
                    'II',
                    'III',
                    'IV',
                    'V',
                    'VI',
                    'VII',
                    'VIII',
                    'IX',
                    'X',
                    'XI',
                    'XII'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedStd = newValue;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select the class';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Remarks(if any)',
                    labelStyle: TextStyle(
                      fontSize: 19.0,
                      color: Colors.black
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Save as Draft Logic
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Form saved as draft')),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  child: const Text(
                    'Save as Draft',
                    style:
                    TextStyle(color: Colors.black), // Text color set to black
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Form Submitted')),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  child: const Text(
                    'Submit',
                    style: TextStyle(color: Colors.black), // Text color set to black
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
