import 'package:e_commerce/constants.dart';
import 'package:e_commerce/providers/product.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';


class ProductImages extends StatefulWidget {
  const ProductImages({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  State<ProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedImage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(238),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(widget.product.images[selectedImage]),
          ),
        ),
        buildSmallPreview(),
      ],
    );
  }

  Row buildSmallPreview() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
            widget.product.images.length,
                (index) => GestureDetector(
              onTap: (){
                setState(() {
                  selectedImage = index;
                });
              },
              child: Container(
                margin:
                EdgeInsets.only(left: getProportionateScreenWidth(15)),
                padding: EdgeInsets.all(getProportionateScreenHeight(8)),
                width: getProportionateScreenWidth(54),
                height: getProportionateScreenHeight(54),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: selectedImage == index
                          ? kPrimaryColor
                          : kSecondaryColor),
                ),
                child: Image.asset(widget.product.images[index]),
              ),
            ))
      ],
    );
  }
}
