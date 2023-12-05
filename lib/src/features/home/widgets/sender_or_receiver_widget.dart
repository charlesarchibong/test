import 'package:flutter/material.dart';

class SenderOrReceiverWidget extends StatelessWidget {
  final String title;
  final String location;
  final String? time;
  final String? status;
  final bool? isSender;
  final bool? isLastWidget;

  const SenderOrReceiverWidget({
    required this.title,
    required this.location,
    this.time,
    this.status,
    this.isSender,
    this.isLastWidget,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const deepBlueColor = Color(0xff001a33);
    return Padding(
      padding: isLastWidget == true
          ? const EdgeInsets.only(bottom: 10.0)
          : const EdgeInsets.only(bottom: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isSender == true
                      ? Colors.redAccent.withOpacity(0.4)
                      : Colors.green.withOpacity(0.4),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: isSender == true
                      ? Image.asset(
                          "assets/icons/sender_icon.png",
                          height: 25,
                        )
                      : Image.asset(
                          "assets/icons/receiver_icon.png",
                          height: 25,
                        ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.black45,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    location,
                    style: const TextStyle(
                      color: deepBlueColor,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                isSender == true ? 'Time' : 'Status',
                style: const TextStyle(
                  color: Colors.black45,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              isSender == true
                  ? Row(
                      children: [
                        Container(
                          height: 7,
                          width: 7,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green,
                          ),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          time ?? '',
                          style: const TextStyle(
                            color: deepBlueColor,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    )
                  : Text(
                      status ?? '',
                      style: const TextStyle(
                        color: deepBlueColor,
                        fontSize: 16,
                      ),
                    ),
            ],
          ),
        ],
      ),
    );
  }
}
