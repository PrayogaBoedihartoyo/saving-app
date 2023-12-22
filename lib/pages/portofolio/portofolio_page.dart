import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:saving_app/styles/colors.dart';
import 'package:saving_app/styles/text_style.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  Widget _portofolioCardList(
      String icon, String title, double percent, String amount, String time) {
    return Container(
      margin: const EdgeInsets.only(
        left: 30,
        right: 30,
        top: 20,
      ),
      padding: const EdgeInsets.fromLTRB(15, 19, 15, 14),
      constraints: const BoxConstraints.expand(height: 130),
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        boxShadow: [
          BoxShadow(
            color: kGrey,
            blurRadius: 3,
            offset: Offset.fromDirection(1, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            height: 55,
            width: 55,
            child: CircleAvatar(
              backgroundColor: kTropicalBlue,
              child: Image.asset(
                icon,
                width: 24,
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: kSubtitle1),
                const SizedBox(
                  height: 12,
                ),
                LinearPercentIndicator(
                  lineHeight: 4,
                  percent: percent,
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  progressColor: kBlueRibbon,
                  backgroundColor: kGrey.withOpacity(0.3),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  amount,
                  style: kBody2.copyWith(
                    color: kGrey,
                  ),
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    time,
                    style: kCaption.copyWith(
                      color: kLightGray,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 25),
            height: 240,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(40),
              ),
              image: const DecorationImage(
                image: AssetImage('assets/images/bg-container-2.png'),
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                    color: kGrey,
                    blurRadius: 5,
                    offset: Offset.fromDirection(2)),
              ],
            ),
            child: SafeArea(
              child: Column(children: [
                Text(
                  'My Porfolio',
                  style: kHeading6.copyWith(
                      color: kWhite, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Savings Value',
                  style: kSubtitle2.copyWith(color: kWhite),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text('Rp 12.480.000',
                    style: kHeading5.copyWith(
                        color: kWhite, fontWeight: FontWeight.w600)),
              ]),
            ),
          ),
          _portofolioCardList(
            'assets/icons/pension.png',
            'Pension savings funds',
            0.3,
            'Rp. 10.430.000 / Rp. 40.000.000',
            'Last saving February 19',
          ),
          _portofolioCardList(
            'assets/icons/camera.png',
            'Camera',
            0.5,
            'Rp. 2.050.000 / Rp. 4.000.000',
            'Last saving February 16',
          ),
          _portofolioCardList(
            'assets/icons/camera.png',
            'Camera',
            0.5,
            'Rp. 2.050.000 / Rp. 4.000.000',
            'Last saving February 16',
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 30,
            ),
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: kWhite,
                padding: const EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.add,
                    size: 13,
                    color: kLuckyBlue,
                  ),
                  Text(
                    'Add Portofolio',
                    style: kBody2.copyWith(
                      color: kLuckyBlue,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
