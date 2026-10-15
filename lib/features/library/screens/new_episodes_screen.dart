import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:spotify_clone/core/app_assets.dart';
import 'package:spotify_clone/core/app_colors.dart';
import 'package:spotify_clone/core/app_texts.dart';

class NewEpisodesScreen extends StatefulWidget {
  const NewEpisodesScreen({super.key});

  @override
  State<NewEpisodesScreen> createState() => _NewEpisodesScreenState();
}

class   _NewEpisodesScreenState extends State<NewEpisodesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: double.infinity,
        leading: Container(
          decoration: BoxDecoration(
            color: const Color(0xFF282828),
          ),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.start,           
            children: [
              BackButton(color: Colors.white,),
              AppTexts.bold(text: 'New Episodes',
              size: 28,
              color: Colors.white),


            IconButton(onPressed: null , icon: SizedBox .shrink(),)

              
            ],
          )
        ),
        
      ),
      body:SingleChildScrollView(
        child: Padding(        
          padding: const .symmetric(horizontal: 16.0),
          child: Column(
            children: [
              //Leave a small space between the app bar and the first container
              const SizedBox(height: 32.0),

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AppTexts.bold(text: 'Continue listening', size: 12.8, color: AppColors.spotifyGrey),
                ],
              ),

              const SizedBox(height: 16,),

              Column(
                children: List.generate(5, (index){return Padding(
                  padding: const EdgeInsets.only(bottom:8.0),
                  child: GestureDetector(
                  onTap: () {
                    // Handle the tap event here
                  },
                  child: Container(
                    width: double.infinity,
                    height: 72,
                    decoration: BoxDecoration(
                      color: const Color(0xFF282828).withValues(alpha:.1),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        Row(
                          children:[
                            Container(width: 48, height: 48,padding: .all(12.0),decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAssets.dummyArtistProfileImage1)),borderRadius: BorderRadius.circular(4.0),),),
                       
                        const SizedBox(width: 12.0,),
                  
                        
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppTexts.medium(text: 'The future wuth chris Do', size: 14, color: Colors.white),//from backend
                            const SizedBox(height: 8.0,),
                            Row(
                              children: [
                                AppTexts.medium(text: '14 Dec .55 mins left', size: 10.0, color: AppColors.spotifyGrey),//from backend
                            const SizedBox(width: 8.0,),
                  
                        SizedBox(
                          width: 60,
                          child: LinearProgressIndicator(
                            color:AppColors.spotifyGreen,
                            borderRadius: BorderRadius.circular(25),
                            value: 25,//form backend
                            backgroundColor: AppColors.spotifyGrey,
                          ),
                        ),
                              ],
                            )
                          ],
                          
                        
                        ),
                          ]
                        ), 
                        Icon(
                            Icons.check,
                             color: AppColors.spotifyGrey,
                             ),
                        
                        
                  
                      ],
                    ),
                     
                    
                  ),
                                ),
                )
;} )
              )

            ,
            SizedBox(height: 32,),
            Column(children:[
              AppTexts.bold(text: "Today", // from the backend
            size: 12.0, 
            color: AppColors.spotifyGrey),

            const SizedBox(height: 20.0,),
            Column(
              children: 
                List.generate(32, (index){
                  return Container(
                    margin: const .only(bottom: 32.0),
                    decoration: Box
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 48,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 48,
                                    width: 48,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        image: DecorationImage(
                                            image: AssetImage(AppAssets.dummyArtistProfileImage1)
                                        ),
                                        borderRadius: BorderRadius.circular(4)
                                    ),
                                  ),
                        
                                  const SizedBox(width: 12.0),
                        
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        AppTexts.medium(
                                            text: "How to be good in UX principles and Knowledge",///Todo: from backend
                                            size: 14.0,
                                            color: Colors.white,
                                            maxLines: 2,
                                            overflow: .ellipsis
                                        ),
                        
                                        const SizedBox(height: 4.0),
                        
                                        AppTexts.medium(
                                            text: "UX Coffee break with UX Anudeep",///Todo: from backend
                                            size: 10.0,
                                            color: AppColors.spotifyGrey,
                                            maxLines: 1,
                                            overflow: .ellipsis
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                        
                            Padding(
                              padding: const .symmetric(vertical: 12.0),
                              child: AppTexts.medium(
                                  text: "Stay tuned to UX Coffee break to learn  UX on a daily basis and eventually, crack your UX interviews. --- Send in a voice message: link here",///Todo: from backend
                                  size: 10.0,
                                  color: AppColors.spotifyGrey,
                                  maxLines: 2,
                                  overflow: .ellipsis
                              ),
                            ),
                        
                            Row(
                              children: [
                                AppTexts.medium(
                                    text: "19 Mar 22 • 1 hr 35 mins left", ///Todo: from backend
                                    size: 10.0,
                                    color: AppColors.spotifyGrey
                                ),
                        
                                
                              ],
                            ),
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      ///Todo: do something
                                    },
                                    icon: Icon(
                                      Icons.check,
                                      color: AppColors.spotifyGrey,
                                    )
                                ),
                        
                                IconButton(
                                    onPressed: () {
                                      ///Todo: do something
                                    },
                                    icon: Icon(
                                      Icons.download_for_offline,
                                      color: AppColors.spotifyGrey,
                                    )
                                ),
                        
                                IconButton(
                                    onPressed: () {
                                      ///Todo: do something
                                    },
                                    icon: Icon(
                                      Icons.share,
                                      color: AppColors.spotifyGrey,
                                    )
                                ),
                        
                                IconButton(
                                    onPressed: () {
                                      ///Todo: do something
                                    },
                                    icon: Icon(
                                      CupertinoIcons.ellipsis_vertical,
                                      color: AppColors.spotifyGrey,
                                    )
                                ),
                              ],
                            ),
                        
                            IconButton(
                                onPressed: () {
                                  ///Todo: do something
                                },
                                style: IconButton.styleFrom(
                                    backgroundColor: Colors.white
                                ),
                                icon: Icon(
                                  CupertinoIcons.play_arrow_solid,
                                  color: AppColors.spotifyBlack,
                                )
                            ),
                          ],
                        ),
                      ],
                    )
                  );
                })
              ,
            )

            ],
            ),
              

            ],
          ),
        ),
      )
    );
  }
} 