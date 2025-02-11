// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:hotel/config/images.dart';
import 'package:hotel/config/text_style.dart';
import 'package:hotel/widget/custom_container.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Theme.of(context).textTheme.bodyLarge!.color!,
          ),
        ),
        title: Text(
          "Boleto",
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppTheme.isLightTheme == true
                          ? const Color(0xffFAFAFA)
                          : const Color(0xff1F222A),
                      border: Border.all(
                        color: AppTheme.isLightTheme == true
                            ? const Color(0xffEEEEEE)
                            : Color(0xffEEEEEE).withOpacity(0.1),
                      ),
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xff04060F).withOpacity(0.05),
                          blurRadius: 8,
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text(
                              "Hotel On boutique",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(fontSize: 20),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Center(
                            child: Container(
                              height: 224,
                              width: 224,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    DefaultImages.qr,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 30),
                          Row(
                            children: [
                              customColumn("Nombre", "Rodrigo Rosario"),
                              const SizedBox(width: 14),
                              customColumn("Numero celular", "+591 77537801"),
                            ],
                          ),
                          const SizedBox(height: 30),
                          Row(
                            children: [
                              customColumn("Fecha de entrada", "Jun 29, 2023"),
                              const SizedBox(width: 14),
                              customColumn("Fecha de salida", "Jun 30, 2023"),
                            ],
                          ),
                          const SizedBox(height: 30),
                          Row(
                            children: [
                              customColumn("Hotel", "Royale President"),
                              const SizedBox(width: 14),
                              customColumn("Invitados", "3"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
            CustomlabelLarge(
              text: "Descargar Boleto",
              onTap: () {},
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget customColumn(String text1, String text2) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text1,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontSize: 16,
                  color: const Color(0xff757575),
                ),
          ),
          const SizedBox(height: 8),
          Text(
            text2,
            style:
                Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
