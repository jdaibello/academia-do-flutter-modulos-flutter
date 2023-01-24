import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Wrap(
              children: [
                _ButtonCard(
                  onTap: () {
                    Navigator.of(context).pushNamed('/bloc/example');
                  },
                  label: 'Example',
                ),
                _ButtonCard(
                  onTap: () {},
                  label: 'Example Freezed',
                ),
                _ButtonCard(
                  onTap: () {},
                  label: 'Contact',
                ),
                _ButtonCard(
                  onTap: () {},
                  label: 'Contact Cubit',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ButtonCard extends StatelessWidget {
  final VoidCallback onTap;
  final String label;

  const _ButtonCard({required this.onTap, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: SizedBox(
        height: 200,
        width: (MediaQuery.of(context).size.width / 2) - 24,
        child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
          child: Text(
            label,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
