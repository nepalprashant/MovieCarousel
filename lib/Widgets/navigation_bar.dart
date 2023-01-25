import 'package:flutter/material.dart';

class HomeNavigationBar extends StatelessWidget {
  const HomeNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60.0,
        decoration: BoxDecoration(
          color: const Color(0XFF05103a),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.home_rounded,
                  size: 30.0,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.confirmation_num_rounded,
                  size: 30.0,
                  color: Color(0XFF82889d),
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.account_balance_wallet_rounded,
                    size: 30.0, color: Color(0XFF82889d)),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.person_rounded,
                    size: 30.0, color: Color(0XFF82889d)),
                onPressed: () {},
              ),
            ],
          ),
        ),
      );
  }
}