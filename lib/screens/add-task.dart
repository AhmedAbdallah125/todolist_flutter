import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  const AddTask({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 30,
                    color: Colors.lightBlueAccent),
              ),
              TextField(
                // automatically show keyboard

                autofocus: true,
                // make cursor in center
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  focusColor: Colors.green,
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.lightBlueAccent)),
              )
            ],
          ),
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18), topRight: Radius.circular(18))),
      ),
    );
  }
}
