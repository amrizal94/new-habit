import 'package:flutter/material.dart';
import 'package:new_habbit/model/activity.dart';

class HabbitScreenList extends StatelessWidget {
  const HabbitScreenList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MediaQuery.of(context).size.width >= 800
                  ? Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: OutlinedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'Back',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )),
                    )
                  : CircleAvatar(
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_ios),
                      ),
                    ),
              const Text(
                'Choose what you would like to make your habit',
                style: TextStyle(
                  fontSize: 34,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const CardActivityList(),
            ],
          ),
        ),
      ),
    );
  }
}

class CardActivityList extends StatefulWidget {
  const CardActivityList({super.key});

  @override
  State<CardActivityList> createState() => _CardActivityListState();
}

class _CardActivityListState extends State<CardActivityList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          final Activity activity = activityList[index];

          return InkWell(
            onTap: () {
              setState(() {
                activity.isChecked = !activity.isChecked;
              });
            },
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Card(
                  color: activity.backgroundColor,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                activity.name,
                                style: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                activity.description,
                                textAlign: TextAlign.left,
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: SizedBox(
                            height: 80,
                            child: Image.asset(
                              activity.imageAsset,
                            )),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    right: 10,
                  ),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 5,
                      color: Colors.black,
                    ),
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
                activity.isChecked
                    ? Icon(
                        Icons.check,
                        size: 50,
                        color: activity.backgroundColor,
                      )
                    : Container(),
              ],
            ),
          );
        },
        itemCount: activityList.length,
      ),
    );
  }
}
