import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx1/controllers/counter_controllers.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {

    final controllers= Get.put(CounterControllers());


    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [


          Obx(()=>
              Text(controllers.counter.value.toString(),
                style: TextStyle(
                    color: Colors.black, fontSize:50,
                    fontWeight: FontWeight.bold

                ),),
          ),

          
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                IconButton(
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.green
                  ),
                  onPressed: (){
                    controllers.decreament();
                  },
                    icon: Icon(Icons.remove,
                    ),
                color: Colors.white,),
                IconButton(
                  style: IconButton.styleFrom(
                      backgroundColor: Colors.red
                  ),
                  onPressed: (){
                    controllers.increament();
                  },
                  icon: Icon(Icons.add),
                  color: Colors.white,),


              ],
            ),
          ),
          
          ElevatedButton(onPressed: (){

            controllers.counter.value= 0;
          },
              child: Text("Reset",style: TextStyle(fontSize: 25),))
        ],
      ),


    );
  }
}
