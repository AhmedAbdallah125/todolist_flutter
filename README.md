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

1-make all thing in the same vertical line

2-use either listtil or checkboxList tile to make check box

3-to acheve first one make padding of containe same as the upper one.

4-Use the avaible not to makenew one.
