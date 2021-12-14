import 'package:flutter/material.dart';
import 'package:influence_me/utils/app_colors.dart';

class ShowDialWidget extends StatelessWidget {
  const ShowDialWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          InkWell(
            onTap: () {
              showDialog(
                  useSafeArea: true,
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      elevation: 0,
                      title: Column(
                        children: [
                          Text(
                            "You Need to Upgrade your Profile to view",
                            style: TextStyle(fontSize: 14),
                          ),
                          Text("messages and offers",
                              style: TextStyle(fontSize: 14)),
                        ],
                      ),
                      // ignore: deprecated_member_use
                      content: FlatButton(
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 5),
                            decoration: BoxDecoration(
                                color: AppColors.redColor,
                                borderRadius: BorderRadius.circular(20)),
                            child: Text("Upgrade",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16))),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    );
                  });
            },
          ),
        ],
      ),
    );
  }
}
