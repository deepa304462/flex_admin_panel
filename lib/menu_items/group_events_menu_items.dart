
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/styles.dart';


class GroupMenuItems extends StatefulWidget {
  const GroupMenuItems({super.key});

  @override
  State<GroupMenuItems> createState() => _GroupMenuItemsState();
}

class _GroupMenuItemsState extends State<GroupMenuItems> {
  final List<Map<String, String>> items = [
    {
      'number': '20',
      'title': 'Chelea will beat monutd',
      'category': 'Sports',
      'status': 'Live',
      'user': 'ADMIN',
      'option1': 'YES',
      'option2': 'NO',
      'action': 'RELEASE PAYMENT',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   Padding(
        padding: const EdgeInsets.all(24.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            border:
            Border.all(color: Colors.grey.shade200, width: 1),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 48,
                decoration: BoxDecoration(
                    color: ColorConstant.gray2,
                    border: Border.all(color: Colors.grey.shade400, width: 1)
                ),
                child: Padding(
                  padding:
                  const EdgeInsets.only(left: 8,right: 8),
                  child: Row(
                    children: [
                      Text(
                        "Players",
                        style: Styles.textWith9with600(
                            ColorConstant.gray500),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Events name",
                        style: Styles.textWith14with600(
                            ColorConstant.gray500),
                      ),
                      const SizedBox(
                        width: 200,
                      ),
                      Text(
                        "Category",
                        style: Styles.textWith14with600(
                            ColorConstant.gray500),
                      ),
                      const SizedBox(
                        width: 60,
                      ),
                      Text(
                        "Status",
                        style: Styles.textWith14with600(
                            ColorConstant.gray500),
                      ),
                      const SizedBox(
                        width: 60,
                      ),
                      Text(
                        "Group Owner",
                        style: Styles.textWith14with600(
                            ColorConstant.gray500),
                      ),
                      const SizedBox(
                        width: 60,
                      ),
                      Text(
                        "CHOOSE OUTCOME",
                        style: Styles.textWith14with600(
                            ColorConstant.gray500),
                      ),
                      const SizedBox(
                        width: 60,
                      ),
                      Text(
                        "PAYOUT TO WINNERS",
                        style: Styles.textWith14with600(
                            ColorConstant.gray500),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context,index){
                      return Row(
                        children: [
                          Container(
                            height: 80,
                            width: 50,
                            color: ColorConstant.gray2,
                            child: Center(child: Text("20",style: Styles.textWith10with600(ColorConstant.gray500),)),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Center(child: Text("Chelea will beat monutd",style: Styles.textWith16with600(ColorConstant.gray700),)),
                          const SizedBox(
                            width: 90,
                          ),
                          Center(child: Text("Sports",style: Styles.textWith16with600(ColorConstant.gray700),)),
                          const SizedBox(
                            width: 70,
                          ),
                          Container(
                              decoration: BoxDecoration(
                                  color: ColorConstant.liveColor,
                                  borderRadius: BorderRadius.circular(4)
                              ),
                              child: Center(child: Padding(
                                padding: const EdgeInsets.only(left: 8.0,right: 8,top: 8,bottom: 8),
                                child: Text("Live",style: Styles.textWith14with600(Colors.white)),
                              ))),
                          const SizedBox(
                            width: 70,
                          ),
                          Center(child: Text("ADMIN",style: Styles.textWith14with600(ColorConstant.Blue400))),
                          const SizedBox(
                            width: 80,
                          ),
                          Row(
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                      color: ColorConstant.liveColor,
                                      borderRadius: BorderRadius.circular(4)
                                  ),
                                  child: Center(child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0,right: 8,top: 8,bottom: 8),
                                    child: Text("YES",style: Styles.textWith14with900(Colors.white)),
                                  ))),
                              const SizedBox(
                                width: 16,
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                      color:ColorConstant.gray3,
                                      borderRadius: BorderRadius.circular(4)
                                  ),
                                  child: Center(child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0,right: 8,top: 8,bottom: 8),
                                    child: Text("NO",style: Styles.textWith14with900(Colors.white)),
                                  ))),
                            ],
                          ),
                          const SizedBox(
                            width: 100,
                          ),
                          Container(
                              decoration: BoxDecoration(
                                  color:ColorConstant.releaseButtonColor,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Center(child: Padding(
                                padding: const EdgeInsets.only(left: 12.0,right: 12,top: 8,bottom: 8),
                                child: Text("RELEASE PAYMENT",style: Styles.textWith14with600(Colors.white)),
                              ))),
                
                        ],
                      );
                    },
                
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
