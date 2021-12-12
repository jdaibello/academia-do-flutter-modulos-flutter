import 'package:flutter/material.dart';
import 'package:flutter_provider_example/provider/product_model.dart';
import 'package:flutter_provider_example/provider/product_widget.dart';
import 'package:flutter_provider_example/provider/user_model.dart';
import 'package:provider/provider.dart';

class ProviderPage extends StatelessWidget {
  const ProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var user = Provider.of<UserModel>(context);

    // .read ele vai retornar uma instância sem ficar escutando alterações
    //var user = context.read<UserModel>();

    // Seleciona somente um componente do objeto
    // var imageAvatar = context.select<UserModel, String>(
    //   (userModel) => userModel.imgAvatar,
    // );

    // Faz sentido ao usar ChangeNotifier
    // var user = context.watch<UserModel>();

    return Provider(
      create: (_) => ProductModel(name: 'Academia dp Flutter'),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Provider'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(user.imgAvatar),
                  minRadius: 60,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(user.name),
                    Text(' (${user.birthDate})'),
                  ],
                ),
                const ProductWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
