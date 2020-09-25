// import 'package:flutter/material.dart';

// class Des extends StatelessWidget {
  
//     CustomScrollView _buildCustomScroolView(AsyncSnapshot snapshot){
//       return CustomScrollView(
//           slivers: [
//             SliverGrid(
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//                 childAspectRatio: 1.0,
//               ),
//               delegate: SliverChildBuilderDelegate((context,int){
//                 return InkWell(
//                   onTap: () {
//                     showPage(
//                       context,
//                       snapshot.data[index].prix,
//                       snapshot.data[index].nom,
//                       //snapshot.data[index].id,

//                       snapshot.data[index].description,
//                       snapshot.data[index].images,
//                       snapshot.data[index].id_styliste,
//                       widget.email,
//                     );
//                   },
//                   child: Card(
//                     child: Stack(
//                       //fit: StackFit.expand,
//                       children: <Widget>[
//                         Image.network(
//                           "http://mestps.tech/upload/categories/${snapshot.data[index].images}",
//                           //"${snapshot.data[index].images}",
//                           fit: BoxFit.cover,
//                         ),

//                         //Text("${snapshot.data[index].id}")
//                         Positioned(
//                           right: 0.0,
//                           bottom: 0.0,
//                           child: Container(
//                             height: 30.0,
//                             color: Colors.red,
//                             child: Padding(
//                               padding: const EdgeInsets.all(12.0),
//                               child: Text(
//                                 "\$${snapshot.data[index].prix}",
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                     //return Text("${snapshot.data[index].id}");
//                   ),
//                 );
//               }, childCount: snapshot.data.length),
//               ),
//           ],
//         );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//               builder: (context, AsyncSnapshot snapshot)=>_buildCustomScroolView(snapshot)
               
//       ),
//     );
// }

// }