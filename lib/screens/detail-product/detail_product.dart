import 'package:flutter/material.dart';

class DetailProduct extends StatefulWidget {
  
 final Map<String, dynamic> product;

  const DetailProduct({required this.product});


  @override
  State<DetailProduct> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> product = widget.product;
    final String? imageUrl = product['image']; // Get the image URL

  print(widget.product);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,

          child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 3,
                  padding: const EdgeInsets.only(top: 38, left: 12, right: 12),
                  decoration:  BoxDecoration(
                  color: const Color.fromARGB(255, 226, 226, 226),
                    image: DecorationImage(
                      image: AssetImage(imageUrl ?? ''),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(100)),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 227, 227, 227)
                                  .withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(
                                  0, 3),
                            ),
                          ],
                        ),
                        child: IconButton(
                            onPressed: () => Navigator.of(context).pop(),
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Color.fromARGB(255, 75, 75, 75),
                            )),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(100)),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 227, 227, 227)
                                  .withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: IconButton(
                            onPressed: () => {},
                            icon: const Icon(
                              Icons.share,
                              color: Color.fromARGB(255, 75, 75, 75),
                            )),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 3.2,
                left: 0,
                right: 0,
                  child: Container(
                    padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 1.8,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25))),
                    child:  const SingleChildScrollView(
                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [],
                    ),
                    ),
                  ),
                ),
                 Positioned(
                  right: 0,
                  left: 0,
                  bottom: 0,
                  child:  Container(
                       decoration: const BoxDecoration(
                                  color: Colors.white,
                                  border:Border(
                                  top: BorderSide(
                                    color: Color.fromARGB(55, 233, 233, 233),
                                    width: 6,
                                  ),
                                ),
                        ),
              height: MediaQuery.of(context).size.height / 7.5,
              child: Container(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                                height: 45,
                                width: 45,
                                  decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: const Color.fromARGB(225, 199, 199, 199)),
                                  borderRadius:
                              const BorderRadius.all(Radius.circular(12)),
                        ),
                                child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_border_outlined,color: Color.fromARGB(224, 160, 160, 160),size: 28,),),
                               ),
                               Container(
                                    decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 49, 49, 49),
                                  borderRadius:
                              BorderRadius.all(Radius.circular(12)),
                        ),
                                width: MediaQuery.of(context).size.width / 1.4,
                                child: TextButton(onPressed: () {}, child: const Text("Add to bag",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),)),
                               )
                  ],
                ),
              ),
            ))
              ],
            ),
          
          ],
        ),
        ),
      ),
    );
  }
}
