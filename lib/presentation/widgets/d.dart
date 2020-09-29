// // // import 'package:flutter/material.dart';

// // // class De extends StatelessWidget {
// // //   const De({Key key}) : super(key: key);

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       body: CustomScrollView(
// // //         slivers: [
// // //           SliverToBoxAdapter(
// // //             child: Widget2(),
// // //           ),
// // //           SliverList(delegate: SliverChildListDelegate(
// // //             [
// // //               MyBody()
// // //             ]
// // //           ))
// // //         ],
// // //       ),
// // //     );
// // //   }
// // // }



// // void main(){


// //   for(var j=0; j<=inList.length -1; j++){
// //     //It's a good pratice you use the camelCase notation 
    
// //     final dataList=[]; //Create first a list 
    
// //     //Get your debit value and your credit value
// //     final dSum=inList[j]['debit']; 
// //     final cSum=inList[j]['credit']; 

// //     //Add them into the [dataList]
// //     dataList.add(dsum);
// //     dataList.add(csum);

// //     //Now add it to your big List
// //     cList.add(dataList);
// // }

// // }





// void main(){

//  ///This function is to fetch data from the server
//  Future get() async{

//    ///the [data] variable old the data return from the server
//    const todosList=await _todo.getCollection() as List;

//    //extrat data
//    todosList.map((todo) => {
//       int userCredit=0;
//       int userDebit=0;
//       String username;
//      List<Map<String, dynamic>> formatData=todo['data'].map((dataContent){
//         userCreditSum=int.parse(dataContent['credit']);
//         userDebitSum=int.parse(dataContent['debit']);
//         username=dataContent['particular'];
//         return {
//           'username':username,
//           'credit':userCredit,
//           'debit':userDebit
//         };
//      });
//    });
//  } 

// }