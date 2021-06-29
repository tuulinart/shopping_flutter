import 'package:flutter/material.dart';
import 'package:shopping/pages/widgets/animated_input.dart';

class SearchWidget extends StatefulWidget {
  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> with SingleTickerProviderStateMixin {
      AnimationController _controller;
  
    bool menuOpened = false;
    
    @override
    void initState() {
      super.initState();
      _controller = AnimationController(
        vsync: this,
        duration: Duration(
          seconds: 1,
        ),
      );
    }

    @override
    void dispose() {
      _controller.dispose();
      super.dispose();
    }


  
  @override
  Widget build(BuildContext context) {
     return Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         AnimatedInput(controller: _controller,),
         Container(
           width: 40,
           child: FlatButton(
             onPressed: () {
               !menuOpened ? _controller.forward() : _controller.reverse();
               menuOpened = !menuOpened;
             },

            child: AnimatedIcon(
              icon: AnimatedIcons.menu_close,
              progress: _controller,
              semanticLabel: "More",
            ),

           ),
         ),
     
     ],
     );
  }
}