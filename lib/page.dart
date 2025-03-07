import "package:flutter/material.dart";

class NextPage extends StatefulWidget {
  const NextPage({super.key});
  @override
  State createState() => _NextPage();
}

class _NextPage extends State {
  final _formKey = GlobalKey<FormState>();

  // Form Variables
  String? selectedMonth;
  String? selectedGender;
  String? selectedRole;
  DateTime? selectedDate;

  // Dropdown Options
  List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];

  List<String> genders = ['Male', 'Female', 'Other'];
  List<String> roles = ['Admin', 'User', 'Manager', 'Employee'];

  Future<void> _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Widget buildTextField(String label, TextInputType keyboardType) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey),
      ),
      child: TextFormField(
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: label,
          border: InputBorder.none, // Remove default border
        ),
        validator: (value) => value!.isEmpty ? "Enter $label" : null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.orange, Colors.orangeAccent, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 0.2, 0.4],
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 50),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.close),
                          Text(
                            "Add New Staff Member",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17),
                              color:const Color.fromARGB(255, 193, 190, 190),
                            ),
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                "Save",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        width: 150,
                        height: 150,
                        child: Stack(
                          clipBehavior:
                              Clip.none, // Allow the camera icon to overflow if needed
                          children: [
                            Icon(
                              Icons.account_circle_rounded,
                              size: 150,
                              color: const Color.fromARGB(255, 193, 190, 190),
                            ),

                            Positioned(
                              bottom: 17,
                              right: 20,
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.camera_alt_outlined,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            // Name Field
                            Row(
                              children: [
                                Expanded(
                                  child: buildTextField(
                                    "First Name",
                                    TextInputType.text,
                                  ),
                                ),
                                SizedBox(width: 10), // Space between fields
                                Expanded(
                                  child: buildTextField(
                                    "Last Name",
                                    TextInputType.text,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            buildTextField(
                              "Phone Number",
                              TextInputType.number,
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                // Month Dropdown
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: Colors.grey,
                                        width: 1.5,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 10,
                                      ),
                                      child: DropdownButtonFormField<String>(
                                        decoration: InputDecoration(
                                          labelText: "Month",
                                          labelStyle: TextStyle(
                                            fontSize: 16,
                                            color:
                                                Colors
                                                    .black, // Customize label color
                                          ),
                                          border:
                                              InputBorder
                                                  .none, // ✅ Disables default border
                                        ),
                                        value: selectedMonth,
                                        items:
                                            months.map((month) {
                                              return DropdownMenuItem(
                                                value: month,
                                                child: Text(month),
                                              );
                                            }).toList(),
                                        onChanged:
                                            (value) => setState(
                                              () => selectedMonth = value,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),

                                SizedBox(
                                  width: 10,
                                ), // ✅ Adds spacing between fields
                                // Monthly Salary Text Field
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 10,
                                      ),
                                      child: TextFormField(
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                          labelText: "Monthly Salary",
                                          labelStyle: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black,
                                          ),
                                          border:
                                              InputBorder
                                                  .none, // ✅ Disables default border
                                        ),
                                        validator:
                                            (value) =>
                                                value!.isEmpty
                                                    ? "Enter Salary"
                                                    : null,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text(
                                  "Date of joining",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            GestureDetector(
                              onTap: () => _selectDate(context),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 15,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      selectedDate == null
                                          ? "Pick a Date"
                                          : "${selectedDate!.day}-${selectedDate!.month}-${selectedDate!.year}",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Icon(
                                      Icons.calendar_today,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: Colors.grey,
                                        width: 1.5,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 10,
                                      ),
                                      child: DropdownButtonFormField<String>(
                                        decoration: InputDecoration(
                                          labelText: "Gender",
                                          labelStyle: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black,
                                          ),
                                          border: InputBorder.none,
                                        ),
                                        value: selectedGender,
                                        items:
                                            genders.map((gender) {
                                              return DropdownMenuItem(
                                                value: gender,
                                                child: Text(gender),
                                              );
                                            }).toList(),
                                        onChanged:
                                            (value) => setState(
                                              () => selectedGender = value,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),

                                SizedBox(width: 10),

                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: Colors.grey,
                                        width: 1.5,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 10,
                                      ),
                                      child: DropdownButtonFormField<String>(
                                        decoration: InputDecoration(
                                          labelText: "Role",
                                          labelStyle: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black,
                                          ),
                                          border:
                                              InputBorder
                                                  .none, // Remove default border
                                        ),
                                        value: selectedRole,
                                        items:
                                            roles.map((role) {
                                              return DropdownMenuItem(
                                                value: role,
                                                child: Text(role),
                                              );
                                            }).toList(),
                                        onChanged:
                                            (value) => setState(
                                              () => selectedRole = value,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
