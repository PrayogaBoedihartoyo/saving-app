import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:saving_app/styles/colors.dart';
import 'package:saving_app/styles/text_style.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
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
                  color: kGrey, blurRadius: 5, offset: Offset.fromDirection(2)),
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
        Container(
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
                    'assets/icons/pension.png',
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
                    Text('Pension savings funds', style: kSubtitle1),
                    const SizedBox(
                      height: 12,
                    ),
                    LinearPercentIndicator(
                      lineHeight: 4,
                      percent: 0.3,
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      progressColor: kBlueRibbon,
                      backgroundColor: kGrey.withOpacity(0.3),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text('Rp. 10.430.000 / Rp. 40.000.000',
                        style: kBody2.copyWith(
                          color: kGrey,
                        ),
                    ),
                    const Spacer(),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text('Last saving February 19',
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
        ),
      ]),
    );
  }
}
