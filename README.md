# todolist_flutter

A new Flutter project.

## make Task Screen

1-make circle Avatar to make round container and put in it list icon

2-there is text and styling it make fontWeight is W700

-- wrap them in cloumn then in container to put padding and other things
Container(
        padding: EdgeInsets.only(left: 30, top: 60, right: 30, bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start.

3-make container to make semi round from top by using prperty of decoration -->/
decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    )).
note --> don't put proerty out of decoration if it exists because if it is outside is shortcut of box decoration which means can't be existed at same time

4-put this container in extended widget to fulfil the parent widget

5-use Sized to speparete between two Containers
 SizedBox(
              height: 30,
            ).

## make task list

1-make all thing in the same vertical line -->more designed

2-use either listtil or checkboxList tile to make check box

3-to acheve first one make padding of containe same as the upper one.

4-Use the avaible not to makenew one.

## Note

1-go to Flutter Document then scroll down until get widgt index then there are whole bunch of widgets --> search U get the required one, in our condition need bottom sheet, there are types of it but we need bottom model sheet

2-use free color picker to picj color and use
color: Color(0xff757575),

3-عشان تستخدم شكل الاحراف لازم تكون لون الخلفيه مشابه الللى وراه
عشان كده لازم تضع  container  داخل container

## make Add Screen

1- make one and put it in screens folders
 TextField(
              // automatically show keyboard

              autofocus: true,
              // make cursor in center
              textAlign: TextAlign.center. 

## Local and Global state

-in red small book

<!-- class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChcekd = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          'Get milk',
          style: TextStyle(
              decoration: isChcekd ? TextDecoration.lineThrough : null),
        ),
        trailing: CheckTile(
/// pass changlable varoiable and callbck that contain setState
          checkBoxState: isChcekd,
          checkCallBack: (bool? newValue) {
            setState(() {
              isChcekd = newValue!;
            });
          },
        ));
  }
}

class CheckTile extends StatelessWidget {
  final bool checkBoxState;
  final checkCallBack;

  CheckTile({required this.checkBoxState, this.checkCallBack});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      onChanged: checkCallBack,
      value: checkBoxState,
    );
  }
}

// class TaskTile extends StatefulWidget {
//   @override
//   _TaskTileState createState() => _TaskTileState();
// }

// class _TaskTileState extends State<TaskTile> {
//   bool isChecked = false;
//   @override
//   Widget build(BuildContext context) {
//     return CheckboxListTile(
//       value: isChecked,
//       onChanged: (bool? variable) {
//         setState(() {
//           isChecked = variable!;
//         });
//       },
//       title: Text(
//         'Buy tea',
//         style: TextStyle(
//             color: Colors.black,
//             decoration: isChecked ? TextDecoration.lineThrough : null),
//       ),
//     );
//   }
// } -->

## make things dynmics

1-make class contain name of task and boo variavble that represnt current check(isDone) or not then put this file (Task) in folder called model folder
// make isDone has default value at starting
  <!-- Task({required this.name, this.isDone = false});
  // make method that change state of checkbox each clicked
  void toggleDone() {
    isDone = !isDone;
  } -->

2-change taskList to stateful widget so can control the state then make taskList of Task class
<!-- List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy tea'),
    Task(name: 'play ball')
  ]; -->

3-convert these task into taskTile.first convert taskTile to statless and make cinstrctor to pass taskName and bool var--> then use taskList to intialze task Tile
<!-- TaskTile(
          taskName: tasks[0].name,
          isChcekd: tasks[0].isDone,
        ), -->

4-Use List.builder --> which allowto dynamically created without adding it each time
to add items easily, which builds the children on demand. This constructor is appropriate for list views with a large (or infinite) number of children because the builder is called only for those children that are actually visible to save resources.
but the usual ListView
it takes two required parameter
    1-indexed Widget Builder which is callBackmethod takes context which contain the information that tells the childrn widget about the parent widget and where is in widget tree --text inside container inside column inside scaffold so will able to ender widget and know where it exists in widget tree

    2-index

    3-return widgt which will show the same number as the value that passed to item counter, in outr case return TaskTile
    <!-- ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
              taskName: tasks[index].name, isChcekd: tasks[index].isDone);
        }, --> item builder tell it what is ging to create
        
    4-pass value to item counter to determine range that builder will build from passed list       
      <!-- itemCount: tasks.length); -->

        The default constructor takes an explicit List<Widget> of children. This constructor is appropriate for list views with a small number of children because constructing the List requires doing work for every child that could possibly be displayed in the list view instead of just those children that are actually visible.

## note (implict and explict)

In programming, implicit is often used to refer to something that's done for you by other code behind the scenes. Explicit is the manual approach to accomplishing the change you wish to have by writing out the instructions to be done explicitly.06‏/11‏/2

5-make checkbox work again by pass to it callback that change state of checkbox when onchaged call it this method update UI by makking tasks elment change if user click checkBox
there is some note that this call back must be  
 final Function(bool?) changeStateCallBack;
to be no error
<!-- (bool? newValue) {
              setState(() {
                tasks[index].toggleDone();
              });
or use this
 onChanged: (newValue) {
            changeStateCallBack(newValue);
          }, //