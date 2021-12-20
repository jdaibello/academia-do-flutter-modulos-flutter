import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_imc/contador_codegen/contador_codegen_controller.dart';

class ContadorCodegenPage extends StatefulWidget {
  const ContadorCodegenPage({Key? key}) : super(key: key);

  @override
  State<ContadorCodegenPage> createState() => _ContadorCodegenPageState();
}

class _ContadorCodegenPageState extends State<ContadorCodegenPage> {
  final controller = ContadorCodegenController();
  final disposer = <ReactionDisposer>[];

  @override
  void initState() {
    super.initState();

    //* autorun fica escutando asa variáveis que estão sendo usadas dentro dele
    //* e também roda quando criado!!!
    final autorunDisposer = autorun((_) {
      debugPrint('----------------- AUTORUN -----------------');
      debugPrint(controller.fullName.first);
    });

    //* no reaction nós falamos para o MobX qual o atributo observável que
    //* queremos observar!!!
    final reactionDisposer = reaction((_) => controller.counter, (counter) {
      debugPrint('----------------- REACTION -----------------');
      debugPrint('$counter');
    });

    //* when só é executado uma vez!!!
    final whenDisposer = when((_) => controller.fullName.first == 'João', () {
      debugPrint('----------------- WHEN -----------------');
      debugPrint(controller.fullName.first);
    });

    disposer.add(autorunDisposer);
    disposer.add(reactionDisposer);
    disposer.add(whenDisposer);
  }

  @override
  void dispose() {
    super.dispose();
    disposer.forEach((reaction) => reaction());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador MobX Codegen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have pushed the button this many times:',
            ),
            Observer(
              builder: (_) {
                return Text(
                  '${controller.counter}',
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
            Observer(
              builder: (_) {
                return Text(controller.fullName.first);
              },
            ),
            Observer(
              builder: (_) {
                return Text(controller.fullName.last);
              },
            ),
            Observer(
              builder: (_) {
                return Text(controller.saudacao);
              },
            ),
            TextButton(
              onPressed: () => controller.changeName(),
              child: const Text('Mudar Nome'),
            ),
            TextButton(
              onPressed: () => controller.rollbackName(),
              child: const Text('Voltar Nome'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.increment(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
