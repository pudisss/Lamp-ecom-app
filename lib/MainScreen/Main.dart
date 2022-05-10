import "package:flutter/material.dart";
import "package:animations/animations.dart";
import "../data.dart";
import "page.dart";
import "package:simple_animations/simple_animations.dart";

class Main extends StatefulWidget {
  const Main({ Key? key }) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  Color heartcolor = Colors.black.withOpacity(0.5);
  bool heartpress = false;

  double openwidth = 241.35;
  double openheight = 348.52;
  double borderRadius = 20;

  

  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Container(
        
        color: Colors.white,
        child: Column(
          children: [
             
           
              Container(
              margin: EdgeInsets.only(top: 50, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text('Discover', style: TextStyle(fontFamily: "Poppins", fontSize: 25, fontWeight: FontWeight.w700, color: Colors.black))
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Image.asset("assets/images/profile.png")
                  )
                ]
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 40, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 307.93,
                    height: 60,
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Color.fromRGBO(251, 251, 251, 1),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "Search...",
                        hintStyle: TextStyle(fontFamily: "Poppins", fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400)

                      )
                    )
                  ),
                  Container(
                    
                    child: GestureDetector(
                      child: Container(
                        width: 46.87,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(252, 166, 82, 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Image.asset('assets/images/slide.png')
                        )

                      )
                    )
                  )
                ]
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 30, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text("New product", style: TextStyle(fontFamily: "Poppins", fontSize: 25, color: Colors.black, fontWeight: FontWeight.w500))
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: GestureDetector(
                      child: Text("See all", style: TextStyle(fontFamily: "Poppins", fontSize: 16, color: Color.fromRGBO(252, 166, 82, 1), fontWeight: FontWeight.w400))
                    )
                  )

                ]
              )
            ),
            Container(
              height: 348.52,
              margin: EdgeInsets.only(top: 40),
              child: ListView.builder(
                clipBehavior: Clip.none,
                
                scrollDirection: Axis.horizontal,
                itemCount: filepath.length,
                itemBuilder: (context, i) {
                  return (
                    
                     OpenContainer(
                    openBuilder: (context, action) => Pages(filepath[i], title[i], price[i]),
                    transitionType: ContainerTransitionType.fadeThrough,
                    closedBuilder: (context, action) =>  Container(
                    height: openheight,
                    width: openwidth,
                    margin: EdgeInsets.only(left: 40),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(borderRadius),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 120,
                          spreadRadius: 1,
                          color: Color.fromRGBO(202, 124, 47, 0.37),
                          offset: Offset(20, 20),
                      

                        )
                      ]
                    ),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              child: Image.asset(filepath[i])
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              margin: EdgeInsets.all(10),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (heartpress == true) {
                                      heartcolor = Colors.red;
                                    } else if (heartpress == false) {
                                      heartcolor = Colors.black.withOpacity(0.5);
                                    }

                                    heartpress = !heartpress;
                                  });
                                },
                                child: Image.asset("assets/images/heartlistview.png", color: heartcolor)
                              )
                            )
                          ]
                        ),
                        Container(
                          width: 191.55,
                          height: 52,
                          child: Text(title[i], style: TextStyle(fontFamily: "Poppins", fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500))
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(top: 20, left: 20),

                          child: Text("Price", style: TextStyle(fontFamily: "Poppins", fontSize: 10, color: Color.fromRGBO(252, 166, 82, 1), fontWeight: FontWeight.w500))
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20),
                         
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: r"$",
                                      style: TextStyle(fontFamily: "Poppins", fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500)
                                    ),
                                    TextSpan(
                                      text: price[i],
                                      style: TextStyle(fontFamily: "Poppins", fontSize: 25, color: Colors.black, fontWeight: FontWeight.w700)
                                    )
                                  ]
                                )
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 20),
                                child: Image.asset('assets/images/buy.png')
                              )
                            ]
                          )
                        )
                      ]
                    )
                  )));
                }
              )
            ),
            Container(

              margin: EdgeInsets.only(left: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text("Popular Light", style: TextStyle(fontFamily: "Poppins", fontSize: 25, color: Colors.black, fontWeight: FontWeight.w500))
                  )

                ]
              )
            ),
            Container(
              height: 189.55,
              margin: EdgeInsets.only(top: 30, left: 25),

              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.none,
                itemCount: popularfilepath.length,
                itemBuilder: (context, i) {
                  return OpenContainer(
                    openBuilder: (context, action) => Pages(popularfilepath[i], populartitle[i], "2550"),
                    closedBuilder: (context, action) =>  Container(
                    width: 148.78,
                    height: 189.55,
                    margin: EdgeInsets.only(left: 30),



                    decoration: BoxDecoration(
                      color: Color.fromRGBO(252, 252, 252, 1),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 40,
                          color: Color.fromRGBO(202, 124, 47, 0.37),
                          offset: Offset(20, 20)

                        )
                      ]
                    ),
                    child: Column(
                      children: [
                        Container(
                          child: Image.asset(popularfilepath[i])
                        ),
                        Container(
                          width: 108.62,
                          height: 44,
                          margin: EdgeInsets.only(top: 20),
                          child: Text(populartitle[i], style: TextStyle(fontFamily: "Poppins", fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black))
                        )
                      ]

                    )
                  ));
                }
              )
            )
          ]
        )
      )
    ));
  }
}