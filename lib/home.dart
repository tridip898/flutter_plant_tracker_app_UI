import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add,size: 30,),backgroundColor: Colors.pinkAccent,),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.purpleAccent.shade100,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10.0,left: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.home_filled,size: 40,color: Colors.grey.shade700,)),
                IconButton(onPressed: (){}, icon: Icon(Icons.settings,size: 40,color: Colors.grey.shade700,)),
                IconButton(onPressed: (){}, icon: Icon(Icons.search_sharp,size: 40,color: Colors.grey.shade700,)),
                IconButton(onPressed: (){}, icon: Icon(Icons.person,size: 40,color: Colors.grey.shade700,)),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.grey.shade200,
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                  child: Image.asset("lib/icons/plantation.jpg"),
              ),
            ),
            Positioned(
                top: 290,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Your Plant",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.settings,
                        color: Colors.grey.shade600,
                      )
                    ],
                  ),
                )),
            Positioned(
              top: 330,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  padding: EdgeInsets.all(15),
                  height: 120,
                  decoration: BoxDecoration(
                      color: Colors.green.shade900,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            height: 90,
                            child: Image.asset("lib/icons/sunflower.png"),
                            decoration: BoxDecoration(
                                color: Colors.green.shade200,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Sunflower",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.grey.shade100,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "12 weeks old",
                                style: TextStyle(
                                    color: Colors.grey.shade400, fontSize: 18),
                              )
                            ],
                          ),
                        ],
                      ),
                      CircularPercentIndicator(
                        radius: 35,
                        lineWidth: 10,
                        percent: 0.72,
                        progressColor: Colors.lightGreen.shade700,
                        backgroundColor: Colors.grey.shade200,
                        circularStrokeCap: CircularStrokeCap.round,
                        center: Text(
                          "72%",
                          style: TextStyle(
                              fontSize: 20, color: Colors.grey.shade100),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 500,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  padding: EdgeInsets.all(15),
                  height: 170,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      image: DecorationImage(
                          image: AssetImage("lib/icons/cloud-sun.jpg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                size: 30,
                                color: Colors.green.shade900,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Sukabumi, Indonesia",
                                style: TextStyle(
                                    fontSize: 23, color: Colors.green.shade900),
                              )
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            child: Icon(Icons.arrow_forward_ios),
                            decoration: BoxDecoration(
                                color: Colors.green.shade900,
                                borderRadius: BorderRadius.circular(20)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            "18",
                            style: TextStyle(
                                fontSize: 52,
                                fontWeight: FontWeight.bold,
                                color: Colors.green.shade900),
                          ),
                          Text(
                            "°C",
                            style: TextStyle(
                                fontSize: 48, color: Colors.green.shade900),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "- mostly clear",
                        style: TextStyle(
                            fontSize: 19, color: Colors.green.shade900),
                      )
                    ],
                  ),
                ),
              ),
            ),

            Positioned(
              top: 20,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        child: Icon(Icons.menu_sharp,size: 30,color: Colors.grey.shade700,),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      padding: EdgeInsets.all(5),
                    ),
                    SizedBox(height: 20,),
                    Text("Hi, Tridip",style: TextStyle(fontSize: 50,color: Colors.grey.shade900,fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),

                    Container(
                      width: 170,
                      child: Row(
                        children: [
                          Icon(Icons.add,color: Colors.grey.shade100,),
                          SizedBox(width: 5,),
                          Text("Add a plant",style: TextStyle(fontSize: 20,color: Colors.grey.shade100),)
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.pinkAccent.shade200,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      padding: EdgeInsets.all(15),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
