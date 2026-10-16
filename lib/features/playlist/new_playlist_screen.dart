import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:spotify_clone/core/app_colors.dart';
import 'dart:ui';

import 'package:spotify_clone/core/app_texts.dart';

class NewPlaylistScreen extends StatefulWidget{
  const NewPlaylistScreen({super.key});
  @override
  State<NewPlaylistScreen> createState() =>_NewPlayListScreenState();
}

class _NewPlayListScreenState extends State<NewPlaylistScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                const Color(0xEECDCDCD).withValues(alpha:.24),
                Color(0xEE121212).withValues(alpha:.74), 
              ],
            ),
          ),  
          child: Center(
            child: Column(
              mainAxisSize: .min,
              children: [
                Container(
                  width: double.infinity,
                  height: 263,
                  margin: .symmetric(horizontal: 46),
                  //color: Colors.indigo,
                  child: Column(
                    children: [AppTexts.bold(text: 'Give your playlist a name',size:16,color: Colors.white),
                    TextField(
                      autofocus: true,
                      style: TextStyle(color: Colors.white,
                      fontSize: 32),
                      textAlign: .center,
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        border:UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder:UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        )
                      ),
                    ),
            
                    Row(mainAxisAlignment: .center,
                    children: [
                      TextButton(onPressed: (){}, child: AppTexts.regular(text: 'Cancel'.toUpperCase(),size: 12,color: Colors.white)),
                      TextButton(onPressed: ()=>Navigator.of(context).pop(), child: AppTexts.bold(text: 'Skip'.toUpperCase(),size: 12,color: AppColors.spotifyGreen)),
                    ],)
                    ],
                    
                  ),
                )
              ],
            ),
          ),        
        ),
      ),
    );
  }
}