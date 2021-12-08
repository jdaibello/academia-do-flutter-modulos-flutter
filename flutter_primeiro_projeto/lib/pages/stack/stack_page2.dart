import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackPage2 extends StatelessWidget {
  const StackPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack 2'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://ci-prod.imgix.net/upload/galeriadeimagens/00200869.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.white38,
          ),
          Positioned(
            left: 10,
            right: 10,
            bottom: 48,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              elevation: 12,
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'New York',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      'Com um horizonte conhecido em qualquer parte do mundo e 8,4 milhões de habitantes, a cidade de Nova York oferece muita diversão e atrações de todos os tipos, que vão desde lugares que você já viu na televisão e no cinema até tesouros ocultos que estão à sua espera. Cada um dos cinco distritos – The Bronx, Brooklyn, Manhattan, Queens e Staten Island – tem um sabor característico, e cada região mantém sua própria identidade. Com os calçadões para pedestres e o acesso a estações de metrô, ônibus e táxis, é fácil conhecer todos os bairros. Seja na sua primeira ou centésima visita à cidade de Nova York, há sempre algo novo para fazer.',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
