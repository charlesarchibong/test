import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview_test_app/src/features/home/manager/search_receipt_cubit.dart';
import 'package:interview_test_app/src/features/home/manager/search_receipt_state.dart';
import 'package:interview_test_app/src/features/home/widgets/receipt_number_widget.dart';
import 'package:interview_test_app/src/features/home/widgets/search_receipt_appbar.dart';
import 'package:interview_test_app/src/util/debounce.dart';

class SearchReceiptScreen extends StatefulWidget {
  const SearchReceiptScreen({Key? key}) : super(key: key);

  @override
  State<SearchReceiptScreen> createState() => _SearchReceiptScreenState();
}

class _SearchReceiptScreenState extends State<SearchReceiptScreen> {
  final debounce = Debounce(milliseconds: 500);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SearchReceiptCubit>(
      create: (context) => SearchReceiptCubit(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(150),
              child: Hero(
                tag: 'searchReceipt',
                child: SearchReceiptAppBar(
                  onChanged: (value) {
                    debounce.run(() {
                      context.read<SearchReceiptCubit>().searchReceipt(value);
                    });
                  },
                ),
              ),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20),
                child: Column(
                  children: [
                    Container(
                      height: 500,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            blurRadius: 5.0,
                            spreadRadius: 0, //New
                          )
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14.0,
                          vertical: 20,
                        ),
                        child:
                            BlocBuilder<SearchReceiptCubit, SearchReceiptState>(
                          builder: (context, state) {
                            return LiveList(
                              reAnimateOnVisibility: true,
                              itemCount: state.results?.length ?? 0,
                              showItemInterval:
                                  const Duration(milliseconds: 100),
                              showItemDuration:
                                  const Duration(milliseconds: 350),
                              separatorBuilder:
                                  (BuildContext context, int index) =>
                                      const Divider(),
                              itemBuilder: (_, index, animation) {
                                final receiptNumbers = state.results!;
                                return FadeTransition(
                                  opacity: Tween<double>(
                                    begin: 0,
                                    end: 1,
                                  ).animate(animation),
                                  child: SlideTransition(
                                    position: Tween<Offset>(
                                      begin: const Offset(0, -0.1),
                                      end: Offset.zero,
                                    ).animate(animation),
                                    child: ReceiptNumberWidget(
                                      productName:
                                          receiptNumbers[index].productName,
                                      receiptNumber:
                                          receiptNumbers[index].receiptNumber,
                                      leavingLocation:
                                          receiptNumbers[index].leavingLocation,
                                      arrivalLocation:
                                          receiptNumbers[index].arrivalLocation,
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
