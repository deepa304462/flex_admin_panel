import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../constants/colors.dart';
import '../constants/styles.dart';

class SwipeMenuItems extends StatefulWidget {
  const SwipeMenuItems({super.key});

  @override
  State<SwipeMenuItems> createState() => _SwipeMenuItemsState();
}

class _SwipeMenuItemsState extends State<SwipeMenuItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade200, width: 1),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection('events')
                        .snapshots(),
                    builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                      if (!snapshot.hasData) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      return DataTable(
                        columns: [
                          DataColumn(
                              label: Text(
                                "Players",
                                style: Styles.textWith9with600(
                                    ColorConstant.gray500),
                              )),
                          DataColumn(
                              label: Text("Events name",style: Styles.textWith14with600(
                                  ColorConstant.gray500))),
                          DataColumn(
                              label: Text("Category",style: Styles.textWith14with600(
                                  ColorConstant.gray500))),
                          DataColumn(
                              label: Text("Status",style: Styles.textWith14with600(
                                  ColorConstant.gray500))),
                          DataColumn(
                              label: Text("Created by",style: Styles.textWith14with600(
                                  ColorConstant.gray500))),
                          DataColumn(
                              label: Text("CHOOSE OUTCOME",style: Styles.textWith14with600(
                                  ColorConstant.gray500))),
                          DataColumn(
                              label: Text("PAYOUT TO WINNERS",style: Styles.textWith14with600(
                                  ColorConstant.gray500))),
                        ],
                        rows: snapshot.data!.docs.map<DataRow>((doc) {
                          var peopleBettingList = doc['peopleBetting'];
                          var peopleBettingCount =
                              peopleBettingList.length.toString();
                          return DataRow(
                            cells: [
                              DataCell(Text(peopleBettingCount,style: Styles.textWith14with600(ColorConstant.gray500),)),
                              DataCell(Text(doc['title'],style: Styles.textWith16with600(ColorConstant.gray700),)),
                              DataCell(Text(doc['categories'],style: Styles.textWith14with600(ColorConstant.gray700),)),
                              DataCell(Container(
                                  decoration: BoxDecoration(
                                      color: ColorConstant.liveColor,
                                      borderRadius: BorderRadius.circular(4)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Live",
                                        style: Styles.textWith14with600(
                                            Colors.white)),
                                  ))),
                              DataCell(Text(doc["_updatedBy"]["displayName"],
                                  style: Styles.textWith14with600(
                                      ColorConstant.Blue400))),
                              DataCell(Row(
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          color: ColorConstant.liveColor,
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text("YES",
                                            style: Styles.textWith14with900(
                                                Colors.white)),
                                      )),
                                  const SizedBox(width: 16),
                                  Container(
                                      decoration: BoxDecoration(
                                          color: ColorConstant.gray3,
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text("NO",
                                            style: Styles.textWith14with900(
                                                Colors.white)),
                                      )),
                                ],
                              )),
                              DataCell(Container(
                                  decoration: BoxDecoration(
                                      color: ColorConstant.releaseButtonColor,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("RELEASE PAYMENT",
                                        style: Styles.textWith14with600(
                                            Colors.white)),
                                  ))),
                            ],
                          );
                        }).toList(),
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

  Widget buildTableHeader(String text) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Text(
          text,
          style: Styles.textWith14with600(ColorConstant.gray500),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
