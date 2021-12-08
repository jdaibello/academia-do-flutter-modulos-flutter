import 'package:flutter/material.dart';

class MaterialBannerPage extends StatelessWidget {
  const MaterialBannerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MaterialBanner'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                final materialBanner = MaterialBanner(
                  content: const Text('Usuário salvo com sucesso'),
                  backgroundColor: Colors.yellow,
                  // forceActionsBelow: true,
                  actions: [
                    TextButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                            .removeCurrentMaterialBanner();
                      },
                      child: const Text('Cancelar'),
                    ),
                  ],
                );

                ScaffoldMessenger.of(context).showMaterialBanner(
                  materialBanner,
                );

                Future.delayed(const Duration(seconds: 2), () {
                  ScaffoldMessenger.of(context).removeCurrentMaterialBanner();
                });
              },
              child: const Text('Simple Material Banner'),
            ),
          ],
        ),
      ),
    );
  }
}
