import 'package:flutter/material.dart';
import 'package:hieuductran/model/user.dart';
import 'package:hieuductran/screens/home/home_show_info/widgets/home_show_info_text.dart';
class HomeShowInfoStyle extends StatelessWidget {
  const HomeShowInfoStyle({super.key, required this.user});
  final User user ;

  @override
  Widget build(BuildContext context) {
    

    return Container(
      color: const Color.fromARGB(255, 135, 207, 248),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 170),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 60),
            decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 7,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(25))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                HomeShowInfoText(
                  title: user.name,
                  fsize: 22,
                  fweight: FontWeight.bold,
                  color: Colors.red,
                ),
                HomeShowInfoText(
                    title: 'id : ${user.id}}'),
                HomeShowInfoText(title: 'Address : ${user.address}'),
                // HomeShowInfoText(
                //     title: '${'show_address'.tr()} ${dataName['address']}'),
              ],
            ),
          ),
          Positioned(
            top: 120,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 4,
                  color: Colors.blue,
                ),
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage(user.img),
                radius: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
