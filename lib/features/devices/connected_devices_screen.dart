import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:spotify_clone/core/app_assets.dart';
import 'package:spotify_clone/core/app_colors.dart';
import 'package:spotify_clone/core/app_texts.dart';
class ConnectedDevicesScreen extends StatefulWidget{
  const ConnectedDevicesScreen({super.key});
  @override
  State<StatefulWidget> createState() => _ConnectedDevicesScreenState();
}

class _ConnectedDevicesScreenState extends State<ConnectedDevicesScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.black,
        leading: SizedBox.shrink(),
        actions: [
          IconButton(onPressed: ()=>Navigator.of(context).pop( ),  icon: Padding(padding: 
          const .all(16),child: Icon(
            Icons.close_sharp,
            color: Colors.white,
          ),))
        ],
      ) ,
    body: SingleChildScrollView(
      child: Padding(
        padding: .symmetric(horizontal: 16.0),
        child: Column(
          children: [
            ListTile(
              contentPadding: .zero,
              leading: ImageIcon(AssetImage(AppAssets.phoneIcon),color: AppColors.spotifyGreen,),
              title: AppTexts.bold(text: 
              'Current Device',size: 24,color: Colors.white),
              subtitle: AppTexts.bold(text: 'This Device',size: 14,color: AppColors.spotifyGreen),
            ),
        
            const SizedBox(height: 16,),
        
            AppTexts.medium(text: 'Use your mobile device as a remote control',size: 14,color: AppColors.spotifyGrey)
        
          ],
        
          ),
      ),
    ),
    floatingActionButton:Container(
      height: 40,
      margin: .symmetric(horizontal: 16),
      child: Row(
        children: [
          Icon(Icons.volume_down_rounded,color: AppColors.spotifyGrey,),
          //slider
          Expanded(
            child: Slider(value: 0, onChanged: (val){
              //todo 
            },thumbColor: Colors.white,
            inactiveColor: AppColors.spotifyBlack1,
            activeColor: Colors.white,
            ),
          )
        ],
      ),
    ),
    floatingActionButtonLocation: .centerDocked,
    );
  }
}
