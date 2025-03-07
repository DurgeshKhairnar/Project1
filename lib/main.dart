import 'package:flutter/material.dart';
import 'package:flutter_application_3/page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return const MaterialApp(
      debugShowCheckedModeBanner:false,
      home: MyApp());
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 120),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Good morning",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                width: 370,
                height: 170,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: const Color.fromARGB(255, 227, 219, 219),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Attendance Statistics",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 247, 190, 209),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 6,
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.calendar_month, size: 15),
                                  Text(
                                    "Today",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Based on Mar7,2025",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 3, // Thin vertical line
                                height: 25, // Adjust height as needed
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(10),
                                ), // Light grey color
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  "staff",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                width: 3, // Thin vertical line
                                height: 25, // Adjust height as needed
                                decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  borderRadius: BorderRadius.circular(10),
                                ), // Light grey color
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  "0",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  "staff",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                width: 3, // Thin vertical line
                                height: 25, // Adjust height as needed
                                decoration: BoxDecoration(
                                  color: Colors.purple,
                                  borderRadius: BorderRadius.circular(10),
                                ), // Light grey color
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  "-",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(width: 50),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Head Count",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 60),
                          Text(
                            "Absence",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 60),
                          Text(
                            "Leave",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 10),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    alignment:Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal:15,vertical:5),
                      child: Text(
                        "All",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width:5),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 228, 225, 225),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    alignment:Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal:20,vertical:5),
                      child: Text(
                        "Development",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width:5),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 228, 225, 225),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    alignment:Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal:20,vertical:5),
                      child: Text(
                        "Marketing",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width:5),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 228, 225, 225),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    alignment:Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal:20,vertical:5),
                      child: Text(
                        "+",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(padding: EdgeInsets.symmetric(horizontal:10),
            child:Text("Employees",
            style:TextStyle(
              fontSize:20,
              fontWeight:FontWeight.bold
            )
            )
            ),
             Padding(padding: EdgeInsets.symmetric(horizontal:10),
            child:Text("Current Company staff",
            style:TextStyle(
              color:Colors.grey,
              fontSize:13,
              fontWeight:FontWeight.bold
            )
            )
            ),
            SizedBox(height:10),
            Row(
              mainAxisAlignment:MainAxisAlignment.start,
              children: [
                Icon(Icons.account_circle_rounded,size:70,color:const Color.fromARGB(255, 213, 209, 209),),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                  Text(
                        "Avinash",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                  Text(
                        "Employee",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                ],),
                SizedBox(width: 160),
                 Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 240, 238, 238),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    alignment:Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal:20,vertical:5),
                      child: Text(
                        "Holiday",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
            ],)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
  onPressed: () {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => NextPage()),
    );
  },
  backgroundColor: Colors.orange,
  child: Icon(Icons.add, size: 30, color: Colors.white), // Better icon
));
  }
}
