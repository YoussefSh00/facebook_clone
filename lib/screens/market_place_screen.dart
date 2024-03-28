import 'package:facebook_clone/models/products_model.dart';
import 'package:facebook_clone/services/products_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MarketPlaceScreen extends StatefulWidget {
  const MarketPlaceScreen({super.key});

  @override
  State<MarketPlaceScreen> createState() => _MarketPlaceScreenState();
}

class _MarketPlaceScreenState extends State<MarketPlaceScreen> {
  List<ProductModel> allProducts = [];

  Future<List<ProductModel>> fillListTest() async {
    allProducts = await ProductService().getAllProducts();
    setState(() {});

    return allProducts;
  }

  @override
  void initState() {
    fillListTest();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.sp),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Marketplace",
                style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              Icon(
                Icons.person,
                size: 35.sp,
              ),
              SizedBox(
                width: 10.w,
              ),
              Icon(
                Icons.search,
                size: 35.sp,
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Expanded(
            child: GridView.builder(
              itemCount: allProducts.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 10.sp,
                  mainAxisSpacing: 10.sp,
                  mainAxisExtent: 230.sp,
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.sp)),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 22.sp),
                        child: Text(
                          allProducts[index].title,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 15.sp, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                          maxLines: 1,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Image.network(
                        allProducts[index].image,
                        height: 110.h,
                        width: 110.w,
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.sp),
                        child: Row(
                          children: [
                            Text(
                              "\$${allProducts[index].price.toString()}",
                              style: TextStyle(
                                  fontSize: 18.sp, fontWeight: FontWeight.bold),
                            ),
                            const Spacer(),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
