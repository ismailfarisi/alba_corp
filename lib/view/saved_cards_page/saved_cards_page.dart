import 'package:alba_corp/components/button.dart';
import 'package:alba_corp/components/snackbar.dart';
import 'package:alba_corp/core/di.dart';
import 'package:alba_corp/view/saved_cards_page/cubit/saved_cards_page_cubit.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../components/text_field.dart';
import '../../core/status.dart';

const double _cardWidth = 250;

class SavedCardsPage extends StatelessWidget {
  const SavedCardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SavedCardsPageCubit>(),
      child: const _SavedCardsPageLayout(),
    );
  }
}

class _SavedCardsPageLayout extends StatefulWidget {
  const _SavedCardsPageLayout();

  @override
  State<_SavedCardsPageLayout> createState() => _SavedCardsPageLayoutState();
}

class _SavedCardsPageLayoutState extends State<_SavedCardsPageLayout> {
  late final ScrollController _controller;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final TextEditingController _nameController = TextEditingController();
  late final TextEditingController _cardNumberController =
      TextEditingController();
  late final TextEditingController _monthController = TextEditingController();
  late final TextEditingController _yearController = TextEditingController();

  @override
  void initState() {
    _controller = ScrollController();
    super.initState();
  }

  double _scrollOffsetForSelectedCard() {
    final selectedCardIndex =
        (context.read<SavedCardsPageCubit>().state.selectedCardIndex ?? 1) - 1;
    return _cardWidth * selectedCardIndex;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Saved Cards",
          ),
          centerTitle: true,
        ),
        body: BlocListener<SavedCardsPageCubit, SavedCardsPageState>(
          listener: (context, state) {
            _controller.animateTo(_scrollOffsetForSelectedCard(),
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInCubic);
          },
          listenWhen: (previous, current) =>
              previous.selectedCardIndex != current.selectedCardIndex &&
              current.selectedCardIndex != null,
          child: RefreshIndicator(
            onRefresh: () async {
              await context.read<SavedCardsPageCubit>().getSavedCards();
            },
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 26, horizontal: 36),
                          child: Text(
                            "Your Cards :",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 155,
                          child: BlocBuilder<SavedCardsPageCubit,
                              SavedCardsPageState>(
                            builder: (context, state) {
                              if (state.getCardsStatus == Status.loading) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              }
                              return ListView.builder(
                                controller: _controller,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 26),
                                scrollDirection: Axis.horizontal,
                                itemCount: state.cards.length,
                                itemBuilder: (context, index) {
                                  final card = state.cards[index];
                                  return CreditCard(
                                      selected:
                                          state.selectedCardIndex == card.id,
                                      onSelected: () {
                                        context
                                            .read<SavedCardsPageCubit>()
                                            .setSelectedCard(card.id);
                                      },
                                      brand: card.brand,
                                      cardNumber: card.cardNumber,
                                      name: card.name,
                                      expMonth: card.expMonth,
                                      expYear: card.expYear);
                                },
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 36, vertical: 9),
                          child: Text(
                            "Add card verification value",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 36, vertical: 9),
                          child: AppTextField(
                            maxWidth: 150,
                            label: "CVV",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 36, vertical: 9),
                          child: Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Add new card :",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge
                                      ?.copyWith(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                AppTextField(
                                  controller: _nameController,
                                  label: "Cardholder's name",
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "please enter a value";
                                    } else if (value.length < 4 ||
                                        value.length > 100) {
                                      return "please enter a value between 4 & 100";
                                    } else {
                                      return null;
                                    }
                                  },
                                ),
                                AppTextField(
                                  controller: _cardNumberController,
                                  label: "Card number",
                                  inputType: TextInputType.number,
                                  inputFormatters: [
                                    MaskedTextInputFormatter(
                                      mask: 'xxxx-xxxx-xxxx-xxxx',
                                      separator: '-',
                                    ),
                                  ],
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "please enter a value";
                                    } else if (value
                                            .replaceAll("-", "")
                                            .length !=
                                        16) {
                                      return "please enter 16 digit card number";
                                    } else {
                                      return null;
                                    }
                                  },
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: AppTextField(
                                        controller: _monthController,
                                        label: "MM",
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return "please enter a value";
                                          } else if (value.length > 2 ||
                                              int.tryParse(value) == null) {
                                            return "please enter valid month";
                                          } else {
                                            return null;
                                          }
                                        },
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 14,
                                    ),
                                    Expanded(
                                      child: AppTextField(
                                        controller: _yearController,
                                        label: "YY",
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return "please enter a value";
                                          } else if (value.length > 2 ||
                                              int.tryParse(value) == null) {
                                            return "please enter year last 2 digit";
                                          } else {
                                            return null;
                                          }
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                Center(
                                    child: BlocListener<SavedCardsPageCubit,
                                        SavedCardsPageState>(
                                  listener: (context, state) {
                                    showSnackbar(
                                        context, "Card added successfully");
                                  },
                                  listenWhen: (previous, current) {
                                    return previous.addCardStatus !=
                                            current.addCardStatus &&
                                        current.addCardStatus == Status.success;
                                  },
                                  child: AppButton(
                                      onPressed: () async {
                                        if (_formKey.currentState?.validate() ==
                                            true) {
                                          await context
                                              .read<SavedCardsPageCubit>()
                                              .addCard(
                                                  _nameController.text,
                                                  _cardNumberController.text,
                                                  _monthController.text,
                                                  _yearController.text);
                                        }
                                      },
                                      label: "Add"),
                                ))
                              ],
                            ),
                          ),
                        ),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CreditCard extends StatelessWidget {
  const CreditCard({
    super.key,
    required this.brand,
    required this.cardNumber,
    required this.name,
    required this.expMonth,
    required this.expYear,
    this.selected = false,
    required this.onSelected,
  });

  final String brand;
  final String cardNumber;
  final String name;
  final int expMonth;
  final int expYear;
  final bool selected;
  final VoidCallback onSelected;
  Color _getCardColor() {
    switch (brand) {
      case "visa":
        return const Color(0xffD00D25);
      case "mastercard":
        return Colors.black;
      case "paypal":
        return const Color(0xff2A55A5);
      default:
        return const Color(0xffD00D25);
    }
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return InkWell(
      onTap: onSelected,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Container(
              height: 131,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: _getCardColor(),
              ),
              child: Stack(
                children: [
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: CustomPaint(
                        size: const Size(150, 150 * 0.46896),
                        painter: RPSCustomPainter(),
                      )),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Expiry $expMonth/$expYear",
                          style:
                              textTheme.bodyLarge?.apply(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          cardNumber.replaceAllMapped(
                              RegExp(r".{4}"), (match) => "${match.group(0)} "),
                          style: textTheme.bodyLarge?.apply(
                              fontSizeFactor: 1.5,
                              fontWeightDelta: 3,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          name,
                          style:
                              textTheme.bodyLarge?.apply(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Image.asset("assets/images/Groupdot_decoration.png"),
                  Image.asset("assets/images/Wifi.png"),
                  Positioned(
                      top: 20,
                      right: 20,
                      child: Image.asset("assets/images/$brand.png"))
                ],
              ),
            ),
          ),
          Visibility(
            visible: selected,
            child: Positioned(
                top: 0,
                right: 0,
                child: Container(
                  height: 28,
                  width: 28,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.fromBorderSide(
                          BorderSide(color: Theme.of(context).primaryColor))),
                  child: Icon(
                    Icons.check,
                    color: Theme.of(context).primaryColor,
                  ),
                )),
          )
        ],
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 89, 89, 90)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;
    paint0.shader = ui.Gradient.linear(
        Offset(size.width * 0.01, size.height * 0.74),
        Offset(size.width * 0.98, size.height * 0.74), [
      const Color(0xff000000).withOpacity(0.5),
      const Color(0xffffffff).withOpacity(0.5)
    ], [
      0.00,
      1.00
    ]);

    Path path0 = Path();
    path0.moveTo(size.width * 0.0150000, size.height * 0.9900000);
    path0.quadraticBezierTo(size.width * 0.1540000, size.height * 0.7824500,
        size.width * 0.4450000, size.height * 0.6300000);
    path0.quadraticBezierTo(size.width * 0.5871000, size.height * 0.5552500,
        size.width * 0.9850000, size.height * 0.5000000);
    path0.quadraticBezierTo(size.width * 0.6143500, size.height * 0.6034500,
        size.width * 0.4700000, size.height * 0.6900000);
    path0.quadraticBezierTo(size.width * 0.2037500, size.height * 0.8354500,
        size.width * 0.0150000, size.height * 0.9900000);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
