import 'package:flutter/material.dart';
import 'package:warehouse_managmenet/core/resourse/app_color.dart';
import 'package:warehouse_managmenet/core/resourse/app_string.dart';

class CustomerView extends StatelessWidget {
  const CustomerView({super.key});

  @override
  Widget build(BuildContext context) {
    // Color green=LinearGradient(begin: );
    return Scaffold(
      backgroundColor: AppColor.white,
      body: Column(
        //  mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppString.Customer,
            style: TextStyle(
                color: AppColor.purple4,
                fontSize: 25,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    childAspectRatio: 20,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    mainAxisExtent: 230,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              topRight: Radius.circular(60),
                              bottomLeft: Radius.circular(60)),
                          border:
                              Border.all(color: AppColor.purple3, width: 1.6),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [AppColor.purple2, AppColor.purple1])),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // Icon(Icons.delete),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Customer :',
                              style: TextStyle(
                                  color: AppColor.purple4,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Center(
                            child: CircleAvatar(
                                maxRadius: 50,
                                backgroundColor:
                                    const Color.fromARGB(0, 202, 239, 208),
                                child: Icon(
                                  Icons.person,
                                  size: 80,
                                  color: AppColor.white,
                                )),
                          ),

                          Center(
                            child: Text(
                              'Masa Alayobi',
                              style: TextStyle(
                                  color: AppColor.purple4,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          Center(
                            child: Text(
                              'Free \$ ',
                              style: TextStyle(
                                  color: AppColor.purple4,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Center(
                            child: Text(
                              '2024/5/2',
                              style: TextStyle(
                                  color: AppColor.purple4,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            AppString.Complaint,
            style: TextStyle(
                color: AppColor.purple4,
                fontSize: 25,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 8, 100, 8),
                child: ListView.builder(
                  // physics: BouncingScrollPhysics(),
                  // shrinkWrap: true,
                  // physics: NeverScrollableScrollPhysics(),
                  // scrollDirection: ,
                  itemCount: 12,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10)),
                              border: Border.all(
                                  color: AppColor.purple3, width: 1.6),
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [AppColor.white, AppColor.white])),
                          child: ExpansionTile(
                            onExpansionChanged: (value) {},
                            leading: CircleAvatar(
                                maxRadius: 50,
                                backgroundColor: AppColor.purple2,
                                child: Icon(
                                  Icons.person,
                                  size: 40,
                                  color: AppColor.white,
                                )),
                            title: Text(
                              AppString.Complaint,
                              style: TextStyle(
                                  color: AppColor.purple4,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            ),
                            collapsedShape: ContinuousRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            shape: ContinuousRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            subtitle: Text(
                              AppString.Customer,
                              style: TextStyle(
                                  color: AppColor.grey1,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700),
                            ),
                            children: [
                              Column(
                                children: [
                                  SingleChildScrollView(
                                    child: Container(
                                      height: 100,
                                      // width: 100,
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            60, 8, 8, 8),
                                        child: Text(
                                          'hfdvblszfhdjbvlhsjkfdbv hjsdfbv hdfbhjvbdffrjddfjffhnftyfkytfktykytdrdrtyhgvfjyfiytdfytcghytdttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttjhvbjdfhbvhfbdhvbfhdvbdhfbvhdbvhjfdbvhjdfbhvbfdhbvfdhbvhfdbhsfdbhvdffhdvbfhdjvbhjdfbvhfdbvhfdbvhdfbvfhjdvbdfhjvjdfffffffffdjfhdjfhdjfhdjhfdjfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffvsvsgjfdvbsfdjhvsfdjhvbfdhjvbfdhjbvhjfdbvhjdfbvhfdjbvhdfjbv ffffffffffffffffffffffffffffffffffdddddddddddddddddddjskbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbvfbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbdddddddddddddddddddddddddddddddddddddddjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjssssssssssssssssssssssssssslllllllllllllllllllllllllllllll',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                              color: AppColor.purple4),
                                          maxLines: 10,
                                          overflow: TextOverflow.visible,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )),
                    );
                  },
                )),
          ),
        ],
      ),
    );
  }
}
