// import 'package:flutter/material.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(
//             "Stateful Widgets Flutter",
//             style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//           ),
//           centerTitle: true,
//           backgroundColor: Colors.blue,
//         ),
//         body: CTStatefulClass(),
//       ),
//     );
//   }
// }
//
// class CTStatefulClass extends StatefulWidget {
//   const CTStatefulClass({super.key});
//
//   @override
//   State<CTStatefulClass> createState() => _CTStatefulClassState();
// }
//
// class _CTStatefulClassState extends State<CTStatefulClass> {
//   bool liked = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: [
//         ListTile(
//           title: Text("Nike Shoes"),
//           trailing: IconButton(
//             onPressed: () {
//               setState(
//                 () {
//                   liked = !liked;
//                 },
//               );
//             },
//             icon: liked ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
//           ),
//         ),
//       ],
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:stateful_widgets/form.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Push Pop',
      theme: ThemeData.light(),
      home: MyForm(),
    );
  }
}

