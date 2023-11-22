import 'package:flutter/material.dart';

import '../../../data/utils/colors.dart';

class BillingInformation extends StatefulWidget {
  const BillingInformation({super.key});

  @override
  State<BillingInformation> createState() => _BillingInformationState();
}

class _BillingInformationState extends State<BillingInformation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(14, 10, 14, 10),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Billing Address'),
                Text(
                  'Change'.toUpperCase(),
                  style:
                  TextStyle(color: CustomColors().headingTextColor),
                ),
              ],
            ),
          ),
          Container(
            child: ListTile(
              title: Text('Ibrahim Khalil'),
              subtitle: Text('No address provided'),
              trailing: InkWell(
                onTap: () {},
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.grey.withOpacity(0.2)),
                  child: Icon(
                    Icons.edit,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(14, 10, 14, 10),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Contact Number'),
                Text(''),
              ],
            ),
          ),
          Container(
            child: ListTile(
              title: Text('+237 758 754 637'),
              trailing: InkWell(
                onTap: () {},
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.grey.withOpacity(0.2)),
                  child: Icon(
                    Icons.edit,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(14, 10, 14, 10),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Products'),
                Text(''),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
