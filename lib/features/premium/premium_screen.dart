import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:spotify_clone/core/app_assets.dart';
import 'package:spotify_clone/core/app_colors.dart';
import 'package:spotify_clone/core/app_texts.dart';

class PremiumScreen extends StatefulWidget {
  const PremiumScreen({super.key});

  @override
  State<PremiumScreen> createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Container(
              height:  375,
              width: double.infinity,
              // decoration: const BoxDecoration(
              //   image: DecorationImage(
              //     image: AssetImage('assets/images/premium_bg.png'),
              //     fit: BoxFit.cover
              //   ),
              //   color: Colors.black
              // ),
              child: Stack(
                children: [
                  Positioned(
                    top:-40.0,
                    right:  -40.0,
                    child: Transform.rotate(
                      angle: -20,
                      child: Container(
                        height: 300,
                        width: 300 ,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(AppAssets.dummyCoverPremium),
                            fit: BoxFit.cover
                          )
                        )
                      ),
                    ),
                     ),
                  
                  Positioned.fill(
                    child: SafeArea(child: 
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0,right: 32.0),
                      child: Column(
                        mainAxisAlignment: .spaceBetween,
                        crossAxisAlignment: .start,
                        children: [
                          Row(
                            children: [
                              ImageIcon(AssetImage(AppAssets.appIcon), size: 16.0,color: Colors.white,),
                              const SizedBox(width: 8.0,),
                              AppTexts.bold(text: 'Premium', size: 14.0, color: Colors.white)
                            ],
                          ),
                          Column(
                            crossAxisAlignment: .start,
                            children: [
                              AppTexts.medium(text: 'FREE TRIAL',size: 10.0,color: Colors.white),
                              AppTexts.medium(text: 'Try Premium free for one month',size: 28.0,color: Colors.white)
                            ],
                          )
                        ],
                      ),
                    )),
                  )
                ],
              ),
            ),
            
            Padding(
              padding: .symmetric(vertical: 8.0,horizontal: 16.0),
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Container(
              width: double.infinity,
              height: 64.0,
              padding: .symmetric(vertical: 8.0,),
              
              child:FilledButton(
                onPressed: (){
                  //backend
                },
                style: FilledButton.styleFrom(
                    backgroundColor: Colors.white
                  ), 
                child: AppTexts.bold(
                  text: 'GET PREMIUM',
                  size: 16.0,
                  color: Colors.black),
                  
                  ),
               
            ),
                  
                  Text.rich(
              style: TextStyle(
                color: AppColors.spotifyGrey,
                fontSize: 10
              ),
              TextSpan(children: [
                TextSpan(
                text: 'From £119/month after. Offer only for users who are new to premium'
              ),TextSpan(
                text: 'Term and conditions apply',
                style: TextStyle(
                  color: Colors.white
                )
              ),
              ]),
              
            ),
                  
                  const SizedBox(height: 12.0,),
                  
                  Container(
                  width: double.infinity,
                  padding: .symmetric(vertical: 32.0),
                  //height: 256,
                  decoration: BoxDecoration(
                    color:AppColors.spotifyBlack1,
                    borderRadius:.circular(8.0),
                  ),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [

                      Padding(
                        padding: .symmetric(horizontal: 16.0),
                        child: AppTexts.medium(
                          text: 'Why join Premium',
                          size: 16.0,
                          color:  Colors.white
                        ),
                      ),
                      Divider(
                        height: 32,
                        thickness: .5,
                        color: AppColors.spotifyGrey,
                      ),
                     ...[
                      'Download to listen offline without wifi',
                      'Music withot Ad interuption',
                      '2x higher sound quality',
                      'Play songs in any order,withunlimited skips',
                      'Cancel monthly plans online anytime'

                     ].map((items){
                      return  ListTile(
                        leading: Icon(Icons.check,color: AppColors.spotifyGreen,),
                        title: AppTexts.medium(text: items,size: 10.0,color: Colors.white
                        ),
                      );
                     })
                    ],
                  ),
                ),
                  
                  Padding(padding: const.symmetric(vertical: 40),
                  child: ListTile(
                    tileColor: AppColors.spotifyBlack1,
                    shape: RoundedRectangleBorder(
                      borderRadius: .circular(8.0)
                    ),
                    leading: AppTexts.medium(text: 'Spotify Free',size: 16.0,color: Colors.white),
                    trailing: AppTexts.medium(text: 'CURRENT PLAN',size: 10.0,color: Colors.white),
                  ),)

                  //Premuim packages
                  ,
                  Column(
                    crossAxisAlignment: .start,
                    children: [
                    AppTexts.medium(
                      text: 'Pick your premium',
                      size: 16,
                     color: Colors.white
                     ),

                    const SizedBox(height: 16.0,),

                    Container(
                      width: double.infinity,
                      padding: .fromLTRB(32, 32, 32,16),
                      decoration: BoxDecoration(
                        color: Colors.white,borderRadius: .circular(8),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                          Color(0xEE0838FF).withValues(alpha: 1),
                          Color(0xEE081878).withValues(alpha: 0.25),
                        ])
                      ),
                      child: Column(
                        children: [
                          
                        Row(
                            mainAxisAlignment: .spaceBetween,
                          children: [
                            AppTexts.medium(text: 
                            'Mini',
                            size: 16,
                            color: Colors.white),
                            Column(
                              crossAxisAlignment: .end,
                              children: [
                                AppTexts.medium(text: 
                            'From ₹7',// from the backend
                            size: 24,
                            color: Colors.white),
                            AppTexts.medium(text: 
                            'For 1 Day',// from the backend
                            size: 12,
                            color: Colors.white),
                              ],
                            )
                          ],)
                        ,
                        const SizedBox(height: 40.0,),
                        AppTexts.medium(
                          text: '1 day and 1 week plans-Ad free music onmobile.Download 30 songs on one mobile device. Mobile only plan',size: 16.0,color: Colors.white,align: .center),
                          const SizedBox(height: 20.0,),
                          FilledButton(onPressed: (){},
                          style: FilledButton.styleFrom(
                            backgroundColor: Colors.white
                          ),
                           child: AppTexts.bold(text: 'VIEW PLANS',size: 16.0,color: Colors.black)),
                        const SizedBox(height: 16.0,),
                        Text.rich(
                          textAlign: .center,
                          style: TextStyle(
                          color:AppColors.spotifyGrey,
                          fontSize: 10.0,
                          
                        ),
                        TextSpan(children: [
                          TextSpan(text: 'Prices vary according to duration of plan.'),
                          TextSpan(text: ' Terms and conditions apply.',style: TextStyle(color: Colors.white))
                        ]))
                        ],
                      ),
                    ),
                    

                    const SizedBox(height: 32,),
                    //premuim individual plan
                    Container(                      
                      width: double.infinity,
                      padding: .fromLTRB(32, 32, 32,16),
                      decoration: BoxDecoration(
                        color: Colors.white,borderRadius: .circular(8),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                          Color(0xFF055846).withValues(alpha: 1),
                          Color(0xFF17B772).withValues(alpha: 0.25),
                        ])
                      ),
                      child: Column(
                        children: [
                          
                        Row(
                            mainAxisAlignment: .spaceBetween,
                          children: [
                            AppTexts.medium(text: 
                            'Premuin individual',
                            size: 16,
                            color: Colors.white),
                            Column(
                              crossAxisAlignment: .end,
                              children: [
                                AppTexts.medium(text: 
                            'Free',// from the backend
                            size: 24,
                            color: Colors.white),
                            AppTexts.medium(text: 
                            'For 1 month',// from the backend
                            size: 12,
                            color: Colors.white),
                              ],
                            )
                          ],)
                        ,
                        const SizedBox(height: 40.0,),
                        AppTexts.medium(
                          text: 'Adds free music listenig. Download and listen offline.Debit and credit cards accepted',size: 16.0,color: Colors.white,align: .center),
                          const SizedBox(height: 20.0,),
                          FilledButton(onPressed: (){},
                          style: FilledButton.styleFrom(
                            backgroundColor: Colors.white
                          ),
                           child: AppTexts.bold(text: 'VIEW PLANS',size: 16.0,color: Colors.black)),
                        const SizedBox(height: 16.0,),
                        Text.rich(
                          textAlign: .center,
                          style: TextStyle(
                          color:AppColors.spotifyGrey,
                          fontSize: 10.0,
                          
                        ),
                        TextSpan(children: [
                          TextSpan(text: 'Offer only for users who are new to Premium.'),
                          TextSpan(text: ' Terms and conditions apply.',style: TextStyle(color: Colors.white))
                        ]))
                        ],
                      ),
                    
                    ),
                    
                    const SizedBox(height: 32,),
                    //premuim duo
                    Container(
                      width: double.infinity,
                      padding: .fromLTRB(32, 32, 32,16),
                      decoration: BoxDecoration(
                        color: Colors.white,borderRadius: .circular(8),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                          Color(0xFF5891C1).withValues(alpha: 1),
                          Color(0xFF404077).withValues(alpha: 0.25),
                        ])
                      ),
                      child: Column(
                        children: [
                          
                        Row(
                            mainAxisAlignment: .spaceBetween,
                          children: [
                            AppTexts.medium(text: 
                            'Premuim Duo',
                            size: 16,
                            color: Colors.white),
                            Column(
                              crossAxisAlignment: .end,
                              children: [
                                AppTexts.medium(text: 
                            'Free',// from the backend
                            size: 24,
                            color: Colors.white),
                            AppTexts.medium(text: 
                            'For 1 month',// from the backend
                            size: 12,
                            color: Colors.white),
                              ],
                            )
                          ],)
                        ,
                        const SizedBox(height: 40.0,),
                        AppTexts.medium(
                          text: '2 premuin accounts for coupleswho live together.Download 30 songs on one mobile device. Mobile only plan',size: 16.0,color: Colors.white,align: .center),
                          const SizedBox(height: 20.0,),
                          FilledButton(onPressed: (){},
                          style: FilledButton.styleFrom(
                            backgroundColor: Colors.white
                          ),
                           child: AppTexts.bold(text: 'VIEW PLANS',size: 16.0,color: Colors.black)),
                        const SizedBox(height: 16.0,),
                        Text.rich(
                          textAlign: .center,
                          style: TextStyle(
                          color:AppColors.spotifyGrey,
                          fontSize: 10.0,
                          
                        ),
                        TextSpan(children: [
                          TextSpan(text: 'Offer only for users who are new to Premium. '),
                          TextSpan(text: ' Terms and conditions apply.',style: TextStyle(color: Colors.white))
                        ]))
                        ],
                      ),
                    ),


                    const SizedBox(height: 32,),
                    //premuim Family
                    Container(
                      
                      width: double.infinity,
                      padding: .fromLTRB(32, 32, 32,16),
                      decoration: BoxDecoration(
                        color: Colors.white,borderRadius: .circular(8),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                          Color(0xFF203265).withValues(alpha: 1),
                          Color(0xFFAA2895).withValues(alpha: 0.25),
                        ])
                      ),
                      child: Column(
                        children: [
                          
                        Row(
                            mainAxisAlignment: .spaceBetween,
                          children: [
                            AppTexts.medium(text: 
                            'Premuim Family',
                            size: 16,
                            color: Colors.white),
                            Column(
                              crossAxisAlignment: .end,
                              children: [
                                AppTexts.medium(text: 
                            'Free',// from the backend
                            size: 24,
                            color: Colors.white),
                            AppTexts.medium(text: 
                            'For 1 month',// from the backend
                            size: 12,
                            color: Colors.white),
                              ],
                            )
                          ],)
                        ,
                        const SizedBox(height: 40.0,),
                        AppTexts.medium(
                          text: 'Adds free music listening. Choose 1,3,6 and 12 months premium plan',size: 16.0,color: Colors.white,align: .center),
                          const SizedBox(height: 20.0,),
                          FilledButton(onPressed: (){},
                          style: FilledButton.styleFrom(
                            backgroundColor: Colors.white
                          ),
                           child: AppTexts.bold(text: 'VIEW PLANS',size: 16.0,color: Colors.black)),
                        const SizedBox(height: 16.0,),
                        Text.rich(
                          textAlign: .center,
                          style: TextStyle(
                          color:AppColors.spotifyGrey,
                          fontSize: 10.0,
                          
                        ),
                        TextSpan(children: [
                          TextSpan(text: 'Offer only for users who are new to Premium. '),
                          TextSpan(text: ' Terms and conditions apply.',style: TextStyle(color: Colors.white))
                        ]))
                        ],
                      ),
                    
                    ),
                  
                  const SizedBox(height: 32,),
                    //premuim student
                    Container(
                      
                      width: double.infinity,
                      padding: .fromLTRB(32, 32, 32,16),
                      decoration: BoxDecoration(
                        color: Colors.white,borderRadius: .circular(8),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                          Color(0xFFF49B24).withValues(alpha: 1),
                          Color(0xFFCC7F51).withValues(alpha: 0.25),
                        ])
                      ),
                      child: Column(
                        children: [
                          
                        Row(
                            mainAxisAlignment: .spaceBetween,
                          children: [
                            AppTexts.medium(text: 
                            'Premuim Student',
                            size: 16,
                            color: Colors.white),
                            Column(
                              crossAxisAlignment: .end,
                              children: [
                                AppTexts.medium(text: 
                            'Free',// from the backend
                            size: 24,
                            color: Colors.white),
                            AppTexts.medium(text: 
                            'For 1 month',// from the backend
                            size: 12,
                            color: Colors.white),
                              ],
                            )
                          ],)
                        ,
                        const SizedBox(height: 40.0,),
                        AppTexts.medium(
                          text: 'Ads free music listening.Download and listen on Mobile',size: 16.0,color: Colors.white,align: .center),
                          const SizedBox(height: 20.0,),
                          FilledButton(onPressed: (){},
                          style: FilledButton.styleFrom(
                            backgroundColor: Colors.white
                          ),
                           child: AppTexts.bold(text: 'VIEW PLANS',size: 16.0,color: Colors.black)),
                        const SizedBox(height: 16.0,),
                        Text.rich(
                          textAlign: .center,
                          style: TextStyle(
                          color:AppColors.spotifyGrey,
                          fontSize: 10.0,
                          
                        ),
                        TextSpan(children: [
                          TextSpan(text: 'Offer only for users who are new to Premium. '),
                          TextSpan(text: ' Terms and conditions apply.',style: TextStyle(color: Colors.white))
                        ]))
                        ],
                      ),
                    
                    ),

                  ],
                  ),

                  
                ],
              ),
              ),
            SizedBox(height: 142.0,)
          ],
        ),
      ),
    );
  }
}
