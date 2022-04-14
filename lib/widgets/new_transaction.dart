import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  Color rang = Colors.transparent;

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              color: Colors.white,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: rang,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                      autocorrect: true,
                      decoration: InputDecoration(
                        suffixIcon: Container(
                          decoration: const BoxDecoration(
                            color: Colors.black26,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                          child: IconButton(
                            onPressed: () {
                              addTx(
                                titleController.text,
                              );
                            },
                            icon: Icon(Icons.add),
                          ),
                        ),
                        border: InputBorder.none,
                        hintText: 'Rangni kiriting!',
                      ),
                      controller: titleController,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
