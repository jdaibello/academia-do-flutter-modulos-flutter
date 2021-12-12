import 'package:flutter/material.dart';
import 'package:flutter_provider_example/provider/product_model.dart';
import 'package:provider/src/provider.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Text(context.read<ProductModel>().name),
    );
  }
}
