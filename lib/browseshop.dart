import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nft_ui/colors.dart';
import 'package:nft_ui/typo.dart';

class BrowseShop extends StatefulWidget {
  const BrowseShop({Key? key}) : super(key: key);

  @override
  _BrowseShopState createState() => _BrowseShopState();
}

class _BrowseShopState extends State<BrowseShop> {
  final List<String> myimage= [
    'assets/nft.png',
    'assets/nft2.png',
    'assets/nft3.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: navy,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Padding(padding: EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  Text('NFT\nSpace',style: header,),
                  Spacer(),
                  Container(
                    width: 40,
                    height: 70,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: white,
                      ),
                      borderRadius: BorderRadius.circular(50),

                    ),
                    child: IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.search,color: white,size: 20,),
                    ),
                  )
                ],

              ),),
              SizedBox(
                height: 30,
              ),
              CarouselSlider.builder(itemCount: myimage.length, itemBuilder: (context, index, realIndex) {
                final urlImage= myimage[index];
                return buildImage(urlImage,index);
              },
                  options: CarouselOptions(
                    height: 230,
                    scrollDirection: Axis.horizontal,
                    autoPlay: true,
                    viewportFraction: 1
                  )
              ),
              SizedBox(height: 30,),
              Padding(padding: EdgeInsets.only(left: 24),
              child: Text("Browse by",
              style: subheader,)
                ,),
              SizedBox(height: 15,),
              Container(
                height: 70,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(
                        width: 24,
                      ),
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            width: 2,
                            color: white
                          )
                        ),
                        child: IconButton(
                          onPressed: (){},
                          padding: EdgeInsets.zero,
                          icon: Image.asset('assets/btc.png',height: 40),
                        )
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                  width: 2,
                                  color: white
                              )
                          ),
                          child: IconButton(
                            onPressed: (){},
                            padding: EdgeInsets.zero,
                            icon: Image.asset('assets/eth.png',height: 40),
                          )
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                  width: 2,
                                  color: white
                              )
                          ),
                          child: IconButton(
                            onPressed: (){},
                            padding: EdgeInsets.zero,
                            icon: Image.asset('assets/okx.png',height: 40),
                          )
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                  width: 2,
                                  color: white
                              )
                          ),
                          child: IconButton(
                            onPressed: (){},
                            padding: EdgeInsets.zero,
                            icon: Image.asset('assets/bnc.png',height: 40),
                          )
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                  width: 2,
                                  color: white
                              )
                          ),
                          child: IconButton(
                            onPressed: (){},
                            padding: EdgeInsets.zero,
                            icon: Image.asset('assets/eth.png',height: 40),
                          )
                      )
                    ],
                  ),
              ),
              SizedBox(height: 15,),
              Column(
                children: [
                  Padding(padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Text("Most Popular",style: subheader,),),
                  SizedBox(height: 14,),
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Image.asset('assets/nftitem1.png'),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Image.asset('assets/nftitem2.png'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Image.asset('assets/nftitem3.png'),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Image.asset('assets/nftitem4.png'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                ],
              )


            ],
          ),
        ),
      ),

    );
  }

  Widget buildImage(String urlImage, int index) {
  return  Container(
      child: Image.asset(urlImage,fit: BoxFit.cover,),
    );
  }
}
