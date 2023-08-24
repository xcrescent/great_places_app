import 'package:flutter/material.dart';
import 'package:great_places/widgets/image_input.dart';

class AddPlaceScreen extends StatefulWidget {
  const AddPlaceScreen({super.key});
  static const routeName = '/add-place';

  @override
  State<StatefulWidget> createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  final _titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add a New Place'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // const Text("User Inputs ...."),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    TextField(
                      decoration: const InputDecoration(labelText: 'Title'),
                      controller: _titleController,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const ImageInput(),
                    // Container(),
                    // ElevatedButton(
                    //   onPressed: (() {}),
                    //   child: null,
                    // )
                  ],
                ),
              ),
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add),
            label: const Text('Add Place'),
            style: ElevatedButton.styleFrom(
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              elevation: 0,
              // backgroundColor: Theme.of(context).accentColor,
            ),
          ),
        ],
      ),
    );
  }
}
