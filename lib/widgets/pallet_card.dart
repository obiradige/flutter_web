import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:palet/domain/model/all_classified_model.dart';

class PalletCard extends StatelessWidget {
  const PalletCard({Key? key, required this.state}) : super(key: key);

  final BaseAllClassifiedModel state;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Card(
        elevation: 2,
        child: Container(
          padding: const EdgeInsets.all(12),
          width: double.infinity,
          child: Row(
            children: [
              Flexible(
                  flex: 2,
                  child: Image.network(
                    'https://api.paletmerkezi.com/assets/upload/classifieds/1a42f4ded74de78a98e680e0f27cc414.jpeg',
                    errorBuilder: (context, error, stackTrace) {
                      return const Icon(Icons.error);
                    },
                  )),
              Flexible(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(state.title ?? '').animate().scaleX().fadeIn(),
                        Text(state.classifiedNo ?? '')
                            .animate()
                            .scaleX()
                            .fadeIn(),
                      ],
                    ),
                    Text('${state.city}' '${state.town}')
                        .animate()
                        .scaleX()
                        .fadeIn(),
                    Text(state.createdAt ?? '').animate().scaleX().fadeIn(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
