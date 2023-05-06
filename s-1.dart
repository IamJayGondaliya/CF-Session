/*

        Primitive:
            int, String, double, bool

        Collection:
            List
            Set
            Map

          List:
            - List is a collection of multiple values which can be of different data types.
            - List is an ordered collection, where values can be accessed by index value.
            - List can be created by '[]'.

            - Types of List:
              - growable      (default)
              - fixed-length
                  - List.generate(length, (index) => val, growable: false);
                      ADD     X
                      REMOVE  X
                      UPDATE  Possible
                  - List.unmodifiable([val1,val2, ...valN]);
                      ADD     x
                      remove  x
                      update  x
                  - List.filled(length, val);
                      ADD     X
                      REMOVE  X
                      UPDATE  Possible
                  - List.empty();
                      ADD     X
                      REMOVE  X
                      UPDATE  X


          Generics:
            - to fix any data type in collection data type.
            - DataType<dType>
            - List<int>         1D Array  
            - List<List<int>>   2D Array  

*/

import 'dart:html';

void main() {

  int a;

  List l = List.generate(10, (index) => index + 1,growable: false);

  // l.add(99);
  // l.remove(6);
  l[4] = 44;

  // for(int i=0; i<l.length; i++) {
  //   print("l[$i]\t: ${l[i]}");
  // }

  l.forEach((element) { 
    //Process
    print(element);
  });

  List s = l.map((element){
    //Process + return / store
    return element * element;
  }).toList();

}