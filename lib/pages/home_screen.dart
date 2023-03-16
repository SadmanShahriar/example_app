import 'package:flutter/material.dart';

class Home extends StatelessWidget {

List<String> Categories = ['Food', 'Electronics', 'Grocerices', 'Dress', 'Tech'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(
          left: 20,
          top: 30,
        ),
        
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello Sadman.",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),
              Text(
                "Let's gets something?",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 30,
              ),
        
        
              SizedBox(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      height: 120,
                      width: 240,
                      decoration: BoxDecoration(
                          color: Color(0xFFF46D38),
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "40% off During \nCovid 19",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Image.network(
                                'https://www.transparentpng.com/thumb/vegetable/mw4OSK-vegetables-basket-png.png',
                                height: 55,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 120,
                      width: 240,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "40% off During \nCovid 19",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Image.network(
                                'https://www.transparentpng.com/thumb/vegetable/mw4OSK-vegetables-basket-png.png',
                                height: 55,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
               Text(
                "Top Categories",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Text(
                  "View All",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600,color:Colors.red),
                ),
              ),
                  ]
              ),
              SizedBox(
              height: 5,
            ),
               SizedBox(
                 height: 30,
                child: ListView.builder(
               scrollDirection: Axis.horizontal,
               itemCount: Categories.length,
               itemBuilder: (_,index){
                 return Padding(
                   padding: const EdgeInsets.only(right: 10),
                   child: Container(
                 
                     decoration: BoxDecoration(
                     color: Colors.grey,
                     borderRadius: BorderRadius.circular(10)
                     ),
                 
                 
                     child: Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                       child: Text(Categories[index]),
                     )),
                 );
               }),
                        
               ),
               
           SizedBox(height: 30,),
               Stack(
                clipBehavior: Clip.none,
                 children: [
                   Container(
                    height: 200,
                    width: 200,
                    color: Colors.amber,
                   ),
                      Container(
                    height: 150,
                    width: 150,
                    color: Colors.red,
                   ),
                      
                      Positioned(
                        bottom: -50,
                        right: -50,
                        child: Container(
                                          height: 100,
                                          width: 100,
                                          color: Colors.green,
                                         ),
                      ),
                 ],
               )
              
              
              
                
               
              
            
            
            ],
          ),
        ),
      )),
    );
  }
}
