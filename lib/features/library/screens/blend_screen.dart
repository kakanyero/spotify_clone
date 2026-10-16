import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:spotify_clone/core/app_assets.dart';
import 'package:spotify_clone/core/app_colors.dart';
import 'package:spotify_clone/core/app_texts.dart';

class BlendScreen extends StatefulWidget {
  const BlendScreen({super.key});

  @override
  State<BlendScreen> createState() => _BlendScreenState();
}

class   _BlendScreenState extends State<BlendScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: double.infinity,
        leading:Container(
          color:AppColors.spotifyBlack,
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BackButton(
                color: Colors.white,
                //icon: const Icon(Icons.arrow_back_ios_new_rounded),
                //onPressed: () {
                //  Navigator.of(context).pop();
               // },
              ),
              //const SizedBox(width: 8),
              AppTexts.bold(text: 'Create a Blend', size: 16, color: Colors.white),
              IconButton(onPressed: null, icon: SizedBox.shrink()),
            ],
          )
        ),
        
        title: const Text('Blend'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20.0,),

            Center(
              child: SizedBox(
                width: 216,
                height: 128,
                
                child: Stack(
                  children: [
                    Align(
                      alignment: .centerRight,
                      child: Container(
                        height: 128,
                        width: 128,
                        decoration: BoxDecoration(color: AppColors.spotifyGrey,
                        shape: BoxShape.circle,border: Border.all(width: 4,color:AppColors.spotifyBlack )),
                        child: Icon(
                          CupertinoIcons.plus,
                          color: Colors.white,
                          size: 46,
                        ),
                      ),
                    ),
                     Container(
                      height: 128,
                      width: 128,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppAssets.dummyCoverImage2),
                          fit: BoxFit.cover,
                        ),
                        shape: BoxShape.circle,
                        border: Border.all(
                        width: 4,
                        color: AppColors.spotifyBlack
                    )),
                    )
                  ],
                ),
              ),
            ),

            Container(
              margin: const.symmetric(vertical: 28),
              padding: .symmetric(horizontal: 16),
              child: Column(
                children: [
                  AppTexts.bold(
                    text: "Invite  friends to Blend",
                   size: 24.0,
                   color: Colors.white
                  ),
                  Padding(
                    padding: .symmetric(vertical: 16.0),
                    child: AppTexts.medium(text: "Invite upto 10 friends to a Blent, a shared playlist that gives you social recommendation based on all of your music taste",
                     size: 12.0,
                    color: Colors.white ,
                    align: TextAlign.center),
                  ),
                  AppTexts.medium(text: "Note:People in this Blend will be able to add theri people.we may also create playlists that include social recommendation.people in socila recommendatio playlist will be able to see your profile picture and username.learn more abot the playlist and information they contain",
                   size: 10.0,
                  color: AppColors.spotifyGrey,
                  align: TextAlign.center)
                ],
              ),
            )
          ,Center(
            child: FilledButton(onPressed: (){},style: FilledButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const .symmetric(horizontal: 32)
            )
            , child: AppTexts.bold(text: 'invite',size: 36,color: AppColors.spotifyBlack)),
          )],
        ),
      )
    );
  }
}   