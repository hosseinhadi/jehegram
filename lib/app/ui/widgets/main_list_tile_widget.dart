import 'package:flutter/material.dart';
import 'package:jehegram/app/data/models/Channel_model.dart';
import 'package:jehegram/app/data/models/group_model.dart';
import 'package:jehegram/app/data/models/person_model.dart';
import 'package:jehegram/app/data/models/message_model.dart';

class MainListTileWidget extends StatelessWidget {
  MainListTileWidget(
      {super.key,
      this.title,
      this.nameOfLastSender,
      this.lastMessageText,
      this.dateTime});

  String? title;
  String? nameOfLastSender;
  String? lastMessageText;
  String? dateTime;

  @override
  Widget build(BuildContext context) {
    return Stack(
      // alignment: Alignment.bottomRight,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Container(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(minRadius: 30),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        // textBaseline: TextBaseline.alphabetic,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title ?? "No Name",
                            // overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          Icon(Icons.volume_mute),
                          Expanded(
                            flex: 1,
                            child: SizedBox(),
                          ),
                          Text(
                            "Fri", // overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ],
                      ),
                      if (nameOfLastSender != null)
                        Text(
                          nameOfLastSender!,
                        ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              lastMessageText ?? "",
                              maxLines: nameOfLastSender != null ? 1 : 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(
                            width: 35,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: CircleAvatar(
            child: Text("2"),
            maxRadius: 15,
          ),
        ),
      ],
    );
  }
}
