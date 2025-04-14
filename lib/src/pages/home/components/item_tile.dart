import 'package:flutter/material.dart';
import 'package:greengrocer/src/config/custom_colors.dart';
import 'package:greengrocer/src/models/item_model.dart';
import 'package:greengrocer/src/services/utils_services.dart';

class ItemTile extends StatelessWidget {
  ItemTile({super.key, required this.item});

  final ItemModel item;

  final UtilsServices utilsServices = UtilsServices();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      color: const Color.fromARGB(255, 255, 255, 255),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //Imagem
            Expanded(child: Image.asset(item.imgUrl, fit: BoxFit.cover)),

            //Nome
            Text(
              item.itemName,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),

            //Preco - unidade
            Row(
              children: [
                Text(
                  utilsServices.priceToCurrency(item.price),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: CustomColors.customSwatchColor,
                  ),
                ),

                Text(
                  '/${item.unit}',
                  style: TextStyle(
                    color: Colors.grey.shade500,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
