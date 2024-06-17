import 'package:flutter/material.dart';

class CurrencyConverterPage extends StatefulWidget {
  const CurrencyConverterPage ({super.key});
  @override
  State<CurrencyConverterPage> createState()=>_CurrencyConverterMaterialPage();
}

class _CurrencyConverterMaterialPage extends State<CurrencyConverterPage>{
  double result = 0;
   final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context){
    print("Build fn");
    
     
    return Scaffold(
     backgroundColor: const Color.fromRGBO(218, 136, 235, 0.969),
        body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("Currency Converter App",
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          ),
          Text(
            'Dollars ${result.toStringAsPrecision(4)}', 
            style: const TextStyle(
            fontSize: 40,
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              controller: textEditingController,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold
                
              ),
              decoration: InputDecoration(
               hintText: 'Enter amount in KSH',
               hintStyle: TextStyle(color: Colors.black),
               
                prefixIcon: Icon(Icons.monetization_on),
                prefixIconColor: Colors.black,
                filled: true,
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    style: BorderStyle.none
                  ),
                borderRadius: BorderRadius.all(Radius.circular(50)),
            
              )
              ),
            
              keyboardType: TextInputType.numberWithOptions(decimal: true),
            
            ),
          ),

          TextButton(
          onPressed: () {
              
              setState(() {
                result = double.parse(textEditingController.text)/140;
              });
            },
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.black),
            foregroundColor: MaterialStatePropertyAll(Colors.white),
            fixedSize: MaterialStatePropertyAll(Size(200, 50))
          ),
          child: const Text('Convert'),
          ),

        ],
        )
        
        ) 
      );
  }
}

// class CurrencyConverterPagee extends StatelessWidget{
//   const CurrencyConverterPagee ({super.key});

  

//   @override
//   Widget build(BuildContext context){
//       double result = 0;
//       final TextEditingController textEditingController = TextEditingController();
//     return Scaffold(
//      backgroundColor: const Color.fromRGBO(218, 136, 235, 0.969),
//         body: Center(
//         child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           const Text("Currency Converter App",
//           style: TextStyle(
//             fontSize: 30,
//             color: Colors.black,
//             fontWeight: FontWeight.bold
//           ),
//           ),
//           Text(
//             result.toString(), 
//             style: const TextStyle(
//             fontSize: 40,
//             color: Colors.white,
//             fontWeight: FontWeight.bold
//           ),
//           ),
//           Padding(
//             padding: EdgeInsets.all(10.0),
//             child: TextField(
//               controller: textEditingController,
//               style: TextStyle(
//                 color: Colors.black,
//                 fontWeight: FontWeight.bold
                
//               ),
//               decoration: InputDecoration(
//                hintText: 'Enter amount in KSH',
//                hintStyle: TextStyle(color: Colors.black),
               
//                 prefixIcon: Icon(Icons.monetization_on),
//                 prefixIconColor: Colors.black,
//                 filled: true,
//                 fillColor: Colors.white,
//                 focusedBorder: OutlineInputBorder(
//                   borderSide: BorderSide(
//                     style: BorderStyle.none
//                   ),
//                 borderRadius: BorderRadius.all(Radius.circular(50)),
            
//               )
//               ),
            
//               keyboardType: TextInputType.numberWithOptions(decimal: true),
            
//             ),
//           ),

//           TextButton(
//           onPressed: () {
//               result = double.parse(textEditingController.text)/140;
//             },
//           style: const ButtonStyle(
//             backgroundColor: MaterialStatePropertyAll(Colors.black),
//             foregroundColor: MaterialStatePropertyAll(Colors.white),
//             fixedSize: MaterialStatePropertyAll(Size(200, 50))
//           ),
//           child: const Text('Convert'),
//           ),

//         ],
//         )
        
//         ) 
//       );
//   }
// }