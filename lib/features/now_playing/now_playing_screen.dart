import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:spotify_clone/core/app_assets.dart';
import 'package:spotify_clone/core/app_colors.dart';
import 'package:spotify_clone/core/app_texts.dart';
import 'package:spotify_clone/features/devices/connected_devices_screen.dart';

class NowPlayingScreen extends StatefulWidget{
  const NowPlayingScreen({super.key});
  @override
  State<StatefulWidget> createState() =>_NowPlayingScreenState();
  }

class _NowPlayingScreenState extends State<NowPlayingScreen>{
  void _animateToPage() {
  Navigator.of(context).push(
    PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const ConnectedDevicesScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        // Ensure this block explicitly returns the SlideTransition
        return SlideTransition(
          position: CurvedAnimation(
            parent: animation,
            curve: Curves.easeInOut,
          ).drive(
            Tween<Offset>(
              begin: const Offset(0, 1), 
              end: .zero, // Use explicit Offset.zero instead of shorthand .zero
            ),
          ),
          child: child,
        );
      },
    ),
  );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black.withValues(alpha: .6),
        leading: Container(
          decoration: BoxDecoration(
          color: AppColors.spotifyGrey,
          
        ),
        child: Row(
          mainAxisAlignment: .spaceBetween,
          children: [
            IconButton(onPressed: ()=> Navigator.of(context).pop(),
             icon: ImageIcon(
              AssetImage(
                
                AppAssets.keyboaedArrowDownIcon
                )
                ),color: Colors.white,
                ),

             Column(mainAxisAlignment: .center,
               children: [
                AppTexts.regular(text: 'PLAYING FROM ${'ALBUM'}',size: 16.0,color: Colors.white),
                AppTexts.bold(text: '${'Dangerous'}',size: 12.0,color: Colors.white),//from backend

                ],
             ) ,

            IconButton(
                  onPressed: (){
                    //tode
                  },
             icon: Icon(
              CupertinoIcons.ellipsis_vertical
                ),color: Colors.white,
                ),


            ],
        ),
        ),
        leadingWidth: double.infinity,
      ),
      
      body: Container(
        //padding:const .symmetric(horizontal: 16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color(0xEE676E75).withValues(alpha: 1),
              const Color(0xEE121212).withValues(alpha: 1)
              
              ]
              )
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //cover image
              Container(
                margin: const.symmetric(vertical: 64,horizontal: 16.0),
                height: 343,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(AppAssets.dummyMjCover),
                  fit: .cover),
                  
                ),

              ),

              Container(
                //height: 202,
                width: double.infinity,decoration: BoxDecoration(
                 ),
                child: Column(
                  children: [
                    ListTile(
                      //contentPadding: .zero,
                      title: AppTexts.bold(text: '${'Gom kori'}',size: 20.0,color: Colors.white),
                      subtitle: AppTexts.bold(text: '${'Polite Mosko'}',size: 14.0,color: AppColors.spotifyGrey),
                      trailing: InkWell(
                        onTap: (){
                          //like or unlike
                          
                        },
                        child: ImageIcon(
                          AssetImage (AppAssets.filledFavoriteIcon
                          ),
                          color: AppColors.spotifyGreen,
                          ),
                      ),
                    ) ,   

                    const SizedBox(height: 16.0,),

                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 16.0),
                     child: Column(
                      children: [
                     
                        Slider(value: 0.0, onChanged: (val){
                          //todo
                        },
                        thumbColor: Colors.white,
                        padding: .only(left: 8.0),
                        activeColor: Colors.white,
                        inactiveColor: AppColors.spotifyButtonBgColor,
                        ),
                        
                        Row(mainAxisAlignment: .spaceBetween,
                          children: [
                          AppTexts.medium(text: '${'0:00'}',size: 10.0,color: AppColors.spotifyGrey),
                          AppTexts.medium(text: '${'5:12'}',size: 10.0,color: AppColors.spotifyGrey),
                        ],)
                      ],
                                       ),
                   )
                  
                  // Now playing action butons

                  ,Padding(
                    padding: const.all(8.0),
                    child: Row(
                    mainAxisAlignment: .spaceBetween,
                    
                    children: [

                      //shuffle
                      IconButton(
                        onPressed: (){}, 
                      icon:ImageIcon(
                        AssetImage(
                          AppAssets.shuffleIcon),
                          size: 24.0,
                          color: Colors.white,
                          )
                          ),
                      
                      
                      //previous
                      IconButton(
                        onPressed: (){}, 
                      icon:ImageIcon(
                        AssetImage(
                          AppAssets.previousIcon),
                          size: 32.0,
                          color: Colors.white,
                          )
                          ),


                      //play/stop
                      IconButton(onPressed: (){},
                       style: IconButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: .all(16)
                        ),
                       icon: Icon(CupertinoIcons.play_arrow_solid,
                       color: Colors.black,)),


                      //next
                      IconButton(
                        onPressed: (){}, 
                       
                      icon:ImageIcon(
                        AssetImage(
                          AppAssets.nextIcon),
                          size: 32.0,
                          color: Colors.white,
                          )
                          ),

                      //repeat
                      IconButton(
                        onPressed: (){}, 
                      icon:ImageIcon(
                        AssetImage(
                          AppAssets.repeatIcon),
                          size: 24.0,
                          color: Colors.white,
                          )
                          )
                    ],
                  ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        IconButton(onPressed: ()=>_animateToPage(),
                        icon: ImageIcon(
                          AssetImage(AppAssets.devicesIcon),color: Colors.white,size: 16,                        
                        )
                        ),
                        Row(
                          children: [
                             IconButton(onPressed: (){},
                        icon: ImageIcon(
                          AssetImage(AppAssets.shareIcon),color: Colors.white,size: 32,                        
                        )
                        ),
                         IconButton(onPressed: (){},
                        icon: ImageIcon(
                          AssetImage(AppAssets.listIcon),color: Colors.white,size: 32,                        
                        )
                        )
                          ],
                        )
                      ],
                    ),
                  )

                  //song lyrics

                  ,const SizedBox(height: 8.0,),
                  Container(
                    width: double.infinity,
                    height: 267,
                    margin: .symmetric(horizontal: 16,vertical:16.0),
                    padding: .only(left: 16,top: 16,right: 16),
                    decoration: BoxDecoration(
                      color: Color(0xEEA57862).withValues(alpha: 1),
                      borderRadius: BorderRadius.circular(8.0),                     

                    ),
                    child: Column(
                      
                      children: [                        
                        Row(mainAxisAlignment: .spaceBetween,
                          children: [
                            AppTexts.bold(text: 'Lyrics',size: 16,color: Colors.white),
                            Row(
                              children: [
                        IconButton(onPressed: (){},
                        icon: ImageIcon(
                          AssetImage(AppAssets.shareIcon),color: Colors.white,size: 16, 
                                                 
                        ),
                        style: IconButton.styleFrom(
                          backgroundColor: AppColors.spotifyBlack.withValues(alpha: .3)
                        ),
                        ),

                        const SizedBox(width: 8.0,),

                         IconButton(onPressed: (){},
                        icon: Transform.flip(
                          flipX: true,
                          child: Icon(
                            CupertinoIcons.fullscreen,color: Colors.white,size: 16,                        
                          ),
                        ),style: IconButton.styleFrom(
                          backgroundColor: AppColors.spotifyBlack.withValues(alpha: .3)
                        ),
                        )
                              ],
                            )
                          ],
                        )
                     ,const SizedBox(height: 8,),

                     Expanded(child: SingleChildScrollView(
                      child: AppTexts.bold(text: 'The way she came into the place I knew right then and there There was something different about this girl The way she moved her hair, her face, her lines Divinity in motion',
                     size: 20,
                     color: AppColors.spotifyBlack),
                     ))
                      ],
                    ),
                  ),

                  //leave a space in the bottom
                  const SizedBox(height:120 ,)

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}