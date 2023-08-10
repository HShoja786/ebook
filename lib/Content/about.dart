import 'package:flutter/material.dart';

class AboutContent extends StatelessWidget {
  const AboutContent({super.key});

  @override
  Widget build(BuildContext context) {
    return (SingleChildScrollView(
        child: Container(
      margin: const EdgeInsets.fromLTRB(30, 80, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
                child: Column(children: [
                  const Text('Welcome To eBook',
                      style:
                          TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
                  //Flexible(
                  //   child:
                  const SizedBox(
                    width: 500,
                    child: Text(
                        'به کتاب خوش آمدید کتاب یک فروشگاه اینترنتی بوده که هدف آن حمایت از فرهنگ سالم، معرفت، و مطالعه می باشد. ما معتقد هستیم که مطالعه و خواندن کتاب برای یک فرهنگ سالم ضروری است کتاب جایی است که نویسندگان می توانند با خوانندگان ارتباط برقرار نمایند و ما با نویسندگان نو آشنا می شویم، جایی که کودکان درگیر هیجان خواندن می شوند که می تواند یک عمر ادامه داشته باشد و برای یک جامعه سودمند به بار آیند. کتاب دسترسی دیجیتالی به کتاب ها، ویدیو ها، یادداشت ها و کتاب های صوتی سودمند را برای شما فراهم می کند که باعث غنی شدن حس کنجکاوی و فرهنگ شما می گردد. ما متعهد هستیم که بهترین منابع سودمند را از طریق کتاب برای شما ارایه نمایم.'),
                  ),

                  // ),
                  if (MediaQuery.of(context).size.width < 1000)
                    Image.asset('assets/images/books_store_logo.png'),
                ])),
          ),
          if (MediaQuery.of(context).size.width > 1000)
            Image.asset('assets/images/books_store_logo.png'),
        ],
      ),
    )));
  }
}
