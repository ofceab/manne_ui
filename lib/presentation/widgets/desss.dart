  
//   import 'dart:convert';

// List todosList=[
//    {
//       "data":[
//          {
//             "particular":"Rishit gave",
//             "credit":2600,
//             "debit":0,
//             "transaction":26-09-2020
//          },
//          {
//             "particular":"rishte room",
//             "credit":0,
//             "debit":2000,
//             "transaction":26-09-2020
//          }
//       ],
//       "content":"Rishit Jain"
//    },
//    {
//       "data":[
//          {
//             "particular":"xx",
//             "credit":5000,
//             "debit":0,
//             "transaction":26-09-2020
//          },
//          {
//             "particular":"xyh",
//             "credit":0,
//             "debit":6000,
//             "transaction":26-09-2020
//          },
//          {
//             "particular":"ghhvh",
//             "credit":2365,
//             "debit":0,
//             "transaction":26-09-2020
//          }
//       ],
//       "content":"rahul"
//    },
//    {
//       "data":[
//          {
//             "particular":"shifa",
//             "credit":230,
//             "debit":0,
//             "transaction":26-09-2020
//          }
//       ],
//       "content":"shifa"
//    },
//    {
//       "data":[
//          {
//             "particular":"jio",
//             "credit":5600,
//             "debit":0,
//             "transaction":26-09-2020
//          }
//       ],
//       "content":"Gravity"
//    },
//    {
//       "content":"Supriya"
//    },
//    {
//       "content":"sandeep"
//    }
// ];

//   //extrat data
//    todosList.forEach((todo)){
//      int userDebit=0;
//      int userCredit=0;
//      String username;
//      List<Map<String, dynamic>> formatData=todo['data'].forEach((dataContent){
//         userCredit=int.parse(dataContent['credit']);
//         userDebit=int.parse(dataContent['debit']);
//         username=dataContent['particular'];
//         return {
//           'username':username,
//           'credit':userCredit,
//           'debit':userDebit
//         };
//      });
//      print(formatData);
//    });
