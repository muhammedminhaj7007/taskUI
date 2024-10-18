import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/theme/themeData.dart';

import 'main.dart';

class Messanger_page extends StatefulWidget {
  const Messanger_page({super.key});

  @override
  State<Messanger_page> createState() => _Messanger_pageState();
}

class _Messanger_pageState extends State<Messanger_page> {
  List A = [
    {"Icons": Icon(Icons.person), "text": "Find People"},
    {"Icons": Icon(Icons.email), "text": "Invite Friends "},
    {"Icons": Icon(Icons.group), "text": "Joint Group"}
  ];
  List B = [
    {
      "list1":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOeZjZWEr4oFmJhILQQgTy7-WUX9BmRrAAFw&s",
      "list2": "Silke Herz",
      "list3": "Hey! Are you free to work later",
      "list4": "12:32",
      "list5": "2"
    },
    {
      "list1":
          "https://media.istockphoto.com/id/1444177531/photo/portrait-of-a-mature-man-on-a-gray-background.jpg?s=612x612&w=0&k=20&c=ivXOr2aZOs40BTGJHis3Xo6u9m32dT5i1b30blhlVqE=",
      "list2": "Robert Mauer",
      "list3": "Hey! Are you free to work later",
      "list4": "11:30"
    },
    {
      "list1":
          "https://media.istockphoto.com/id/1082483460/photo/beautiful-black-man.jpg?s=612x612&w=0&k=20&c=MmNFcZf6z2WLY7jMBAmtLxo6YNItudiRuzn-z7V3tZk=",
      "list2": "Silke Herz",
      "list3": "Hey! Are you free to work later",
      "list4": "09:22"
    },
    {
      "list1":
          "https://media.istockphoto.com/id/1371301832/photo/excited-young-man-wearing-denim-shirt.jpg?s=612x612&w=0&k=20&c=AtgXnYVh2GpkMGlLwjIYDAwQ6fFvr0ii591bsEaJyLk=",
      "list2": "Dirk Ziegler",
      "list3": "Hey! Are you free to work later",
      "list4": "12:02",
      "list5": "6"
    },
    {
      "list1":
          "https://media.istockphoto.com/id/152157762/photo/the-rich-girl-in-her-car.jpg?s=612x612&w=0&k=20&c=1qHiZ_-4gvt50XITBLdp7Ek_bz-YQZUOVwKZ8Ov2sso=",
      "list2": "Rooby",
      "list3": "Hey! Are you free to work later",
      "list4": "10:08"
    },
    {
      "list1":
          "https://st4.depositphotos.com/1429992/21940/i/450/depositphotos_219400976-stock-photo-beautiful-young-lady-summer-dress.jpg",
      "list2": "Kristina",
      "list3": "Hey! Are you free to work later",
      "list4": "05:22"
    },
    {
      "list1":
          "https://st.depositphotos.com/1065022/2890/i/450/depositphotos_28906239-stock-photo-beautiful-girl-with-bouquet-of.jpg",
      "list2": "Mariya",
      "list3": "Hey! Are you free to work later",
      "list4": "04:20"
    },
    {
      "list1":
          "https://media.istockphoto.com/id/1090113184/photo/giving-it-some-thought.jpg?s=612x612&w=0&k=20&c=dHnkYIuw-e6u0YcpQbYmQVERA7WlPLTX_GdqV75_dxQ=",
      "list2": "Krish",
      "list3": "Hey! Are you free to work later",
      "list4": "11:30",
      "list5": "2"
    },
    {
      "list1": "https://photosvibe.in/wp-content/uploads/cute-girl-pic11.jpg",
      "list2": "loomi",
      "list3": "Hey! Are you free to work later",
      "list4": "04:25"
    },
    {
      "list1":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTjgiM2E0Gpj1qVyoUdXqIK6mICG5dewSjGQ&s",
      "list2": "Arun",
      "list3": "Hey! Are you free to work later",
      "list4": "10:30"
    },
  ];

  bool toggele = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Welcome Back !"),
        actions: [
          CupertinoSwitch(
            value: Provider.of<ThemeProvider>(context, listen: false)
                .isDarkMode, // Boolean value indicating the current state of the switch
            onChanged: (bool value) {
              setState(() {});
              Provider.of<ThemeProvider>(context, listen: false)
                  .toggleTheme();
            },
            activeColor: CupertinoColors
                .activeGreen, // Color when the switch is ON
          ),
          Icon(Icons.search_rounded),
          SizedBox(
            width: w * 0.02,
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(w * 0.04),
            child: Container(
              height: h * 0.18,
              width: w * 09,
              child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      height: h * 0.02,
                      width: w * 0.42,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(w * 0.03),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: w * 0.03,
                              ),
                              A[index]["Icons"],
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: w * 0.03,
                              ),
                              Text(A[index]["text"]),
                            ],
                          ),
                          SizedBox(
                            height: h * 0.03,
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: w * 0.03,
                    );
                  },
                  itemCount: A.length),
            ),
          ),
          Expanded(
            child: ListView.separated(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          B[index]["list2"],
                          style: TextStyle(
                              fontSize: w * 0.04, fontWeight: FontWeight.w800),
                        ),
                        Text(B[index]["list4"])
                      ],
                    ),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(B[index]["list3"],
                            style: TextStyle(
                                fontSize: w * 0.03,
                                fontWeight: FontWeight.w300)),
                        B[index]["list5"] == null
                            ? SizedBox()
                            : CircleAvatar(
                                radius: w * 0.025,
                                backgroundColor: Colors.orange,
                                child: Text(B[index]["list5"]),
                                // child: Text(B[index]["list5"]),
                              )
                      ],
                    ),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(B[index]["list1"]),
                      radius: w * 0.08,
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox();
                },
                itemCount: B.length),
          )
        ],
      ),
    );
  }
}
