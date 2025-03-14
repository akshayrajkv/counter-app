import 'package:counterapp/viewmodel/counterviewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Counter App'),
      ),
      body: Center(
        child: Consumer<Counterviewmodel>(builder: (context, value, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Center(
                child: Text('${value.count}',style:const TextStyle(fontSize: 200),),
              ),
          const    SizedBox(height: 100,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
              
                children: [
                  
              IconButton(onPressed: value.decrement,icon:const Icon(Icons.remove_circle_outline,size: 60,)),
              IconButton(onPressed: value.reset, icon:const Icon(Icons.refresh,size: 30,)),
                
              IconButton(onPressed: value.increment, icon:const Icon(Icons.add_circle_outline,size: 60,)),
                ],
              )
            
            ],
          );
        },),
      ),
    );
  }
}