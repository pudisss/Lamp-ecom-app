import "package:flutter/material.dart";

class Pages extends StatefulWidget {
  final filepath;
  final title;
  final price;

  Pages(this.filepath, this.title, this.price);

  @override
  State<Pages> createState() => _PagesState(this.filepath, this.title, this.price);
}

class _PagesState extends State<Pages> {
  final filepath;
  final title;
  final price;

  _PagesState(
    this.filepath, this.title, this.price,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios, color: Colors.black)
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          GestureDetector(
            child: Image.asset("assets/images/shop.png")
          )
        ]

      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              
              child: Image.asset(filepath),
            ),
            Container(
              margin: EdgeInsets.only(top :50, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 312.78,
                    height: 76,
                    child: Text(title, style: TextStyle(fontFamily: "Poppins", fontSize: 25, fontWeight: FontWeight.w700))
                  ),
                  Container(
                    
                    child: GestureDetector(
                      child: Container(
                        width: 40.6,
                        height: 40.6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color.fromRGBO(252, 166, 82, 1),

                        ),
                        child: Center(
                          child: Image.asset("assets/images/heartlistview.png", color: Colors.white,)
                        )
                      )

                    )
                  )

                ]
              )
            ),
            Container(
              width: 227.33,
              height: 48,
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 20, right: 100),

              child: RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Material:",
                      style: TextStyle(fontFamily: "Poppins", fontSize: 16, color: Colors.black.withOpacity(0.5), fontWeight: FontWeight.w500)
                    ),
                    TextSpan(
                      text: " Handcrafted from cardboard",
                      style: TextStyle(fontFamily:"Poppins", fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500)
                    )

                  ]
                )
              )
            ),
            Container(
              width: 331.7,
              height: 121.62,
              margin: EdgeInsets.only(top: 30),
              child: Text("Graypants’ flagship Scraplights provide warm, intimate, and functional lighting for any occasion or space. Each is precision cut with a laser and assembled by hand...", style: TextStyle(fontFamily: "Poppins", fontSize: 16, color: Colors.black.withOpacity(0.5), fontWeight: FontWeight.w400))
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 50, left: 20),
              child: Text("Price", style: TextStyle(fontFamily: "Poppins", fontSize: 12, fontWeight: FontWeight.w500, color: Color.fromRGBO(252, 166, 82, 1)))
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Text(price, style: TextStyle(fontFamily: "Poppins", fontSize: 25, color: Colors.black, fontWeight: FontWeight.w900))
                  ),
                  Container(
                    width: 196.43,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(252, 166, 82, 1),
                    ),
                    child: Center(
                      child: Text("Add To Cart", style: TextStyle(fontFamily: "Poppins", fontSize: 16, color: Colors.white, fontWeight: FontWeight.w500))
                    )
                  )

                ]
              )
            )

          ]
        )
      )
    );
  }
}