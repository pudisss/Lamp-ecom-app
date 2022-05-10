import "package:flutter/material.dart";
import "Main.dart";



class Mainscreen extends StatefulWidget {
  const Mainscreen({ Key? key }) : super(key: key);

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Image.asset("assets/images/lambwelcome.png"),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text("Tilt White", style: TextStyle(fontFamily: "Poppins", fontSize: 51, fontWeight: FontWeight.w700, color: Colors.black))
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    
                    child: Text("Table Lamp", style: TextStyle(fontFamily: "Poppins", fontSize: 51, color: Colors.black, fontWeight: FontWeight.w700))
                  )
                ]
              )
            ),
            Container(
              alignment: Alignment.centerLeft,
              
              width: 301,
              height: 69,
              child: Text("Welcome to the small shop with the large assortment! We are a centrally located store that sells lighting for home. ", style: TextStyle(fontFamily: "Poppins", fontSize: 14, color: Color.fromRGBO(17, 16, 16, 0.81), fontWeight: FontWeight.w400))
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Main(),
                  )
                );
              },
              child: Stack(
              children: [
                Positioned(
                  
                  child: Text("Exploring", style: TextStyle(fontFamily: "Poppins", fontSize: 20, fontWeight: FontWeight.w500))
                ),
                AnimatedPositioned(
                  width: 301,
                  
                  
                  duration: Duration(milliseconds: 600),
                  child: Container(
                    width: 50.18,
                    height: 50.18,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(252, 166, 82, 1),
                    )

                  )
                )
              ]
            )

        )]
        )
      )
    );
  }
}