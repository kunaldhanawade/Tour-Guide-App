import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class OneEvent extends StatelessWidget {
  const OneEvent({Key? key, required this.list}) : super(key: key);

  final List list;

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
        staggeredTileBuilder: (index) => StaggeredTile.count(2, index.isEven ? 2 : 1),
        itemCount: list.length,
        crossAxisCount: 4,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        itemBuilder: (context, index) => index.isEven ? Card(
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Container(
            margin: EdgeInsets.all(8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                list[index],
                fit: BoxFit.cover,
              ),
            ),
          ),
        ) : Card(
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Container(
              margin: EdgeInsets.all(8),
              child: Expanded(
                child: Text(
                  list[index],
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 20
                  ),
                ),
              )
          ),
        ),
    );
  }
}




List Events = [
  "https://images.indulgexpress.com/uploads/user/imagelibrary/2019/1/30/original/KalaGhodaArtsFestival.jpg",
  "Organised for 9 days during February",
  "https://blog.thomascook.in/wp-content/uploads/2020/02/kala-ghoda-art-festival-1024x583.jpg",
  "Experience the colourful and dazzling festival",
  "https://images.indulgexpress.com/uploads/user/ckeditor_images/article/2019/1/30/Kala_Ghoda_Arts_Festival_1.jpg",
  "Kala Ghoda Art Festival @ Kala Ghoda, Fort",
  "https://media.cntraveller.in/wp-content/uploads/2020/02/Kala-ghoda-2020-lead-image-1366x768.jpg",
  "Organised by the Kala Ghoda Association",

  "https://i.pinimg.com/originals/08/67/96/0867968e4606266a220360f1ffb3f688.jpg",
  "A two-day affair observed during January",
  "https://www.hlimg.com/images/events/738X538/event_1536744444m2.jpg?w=480&dpr=2.6",
  "Celebrate the Musical Carnival together",
  "https://th.bing.com/th/id/R.3c799eb807e954e09a4967a5ff902916?rik=NYjMqRFS%2bzmP5g&riu=http%3a%2f%2flemonicks.com%2fphotos%2fBanganga%2fP1010076.jpg&ehk=cbsNYc9AVGoPL2dC4w8BKJ0bWsqmkIMQ8zqHDJgm6kc%3d&risl=&pid=ImgRaw&r=0",
  "The Banganga Festival @ Malabar Hills",
  "https://www.telegraph.co.uk/content/dam/news/2018/11/22/TELEMMGLPICT000181636969_trans_NvBQzQNjv4BqqVzuuqpFlyLIwiB6NTmJwfSVWeZ_vEN7c6bHu2jJnT8.jpeg?imwidth=1400",
  "By Maharashtra Tourism Dev. Corp.",

  "https://i.ytimg.com/vi/BFtiFgQDMNs/maxresdefault.jpg",
  "It is a three day event during January",
  "https://images.mid-day.com/images/images/2014/jan/24koli-l.jpg",
  "Taste the authentic Maharashtrian sea-food",
  "https://static2.tripoto.com/media/filter/nl/img/66808/TripDocument/1454688828_versova_sea_food_festival6.png",
  "Vesave Fish Festival @ Versova Village",
  "https://static.toiimg.com/thumb/msid-67591853,width-800,height-600,resizemode-75,imgsize-96565,pt-32,y_pad-40/67591853.jpg",
  "Organised by Vesave Village Koli Fishers",

  "https://deadline.com/wp-content/uploads/2022/02/Mumbai-Film-Festival-Logo.jpeg",
  "the eight-day festival during May",
  "https://images.indianexpress.com/2018/10/mami-festival-759.jpeg",
  "Dive into indie cinema from thriller to classics",
  "https://assets.telegraphindia.com/telegraph/ec817a41-06d0-4e12-b0f3-f9adbb58e480.jpg",
  "Mumbai Film Festival @ various multiplexes",
  "https://www.filmcompanion.in/wp-content/uploads/2019/09/Film_Companion__Jio-MAMI-with-Star-2019-Press-Conference_lead-1280x720.jpg",
  "By The Mumbai Academy of the Moving Image",
];

List Festivals = [
  "https://cdn.dnaindia.com/sites/default/files/styles/full/public/1816452.jpg",
  "Get yourself covered in Colors and click selfies",
  "https://images.indulgexpress.com/uploads/user/imagelibrary/2019/3/21/original/Mumbai_4.jpg",
  "Holi (the Festival of Colors), in the month of March",

  "https://www.mumbailive.com/images/media/images/media_1534435663813_DSC_0599_copy.jpg?bg=2f252b&crop=2448%2C1374.3157894736842%2C0%2C128.84210526315792&fit=crop&fm=webp&h=432.2807017543859&height=1632&w=770&width=2448",
  "Celebrate the Hindu New Year traditionally",
  "https://static.toiimg.com/photo/57872774.cms?imgsize=140150",
  "Gudi Padva, in the months of March-April",

  "https://th.bing.com/th/id/R.17e3aa3a11f38caa4bbb87a674b31aa1?rik=Yr1uonqCNDi%2fyQ&riu=http%3a%2f%2fimages.assettype.com%2fswarajya%2f2018-09%2f2c49a3d1-255b-4926-831e-49830b5de29b%2f832790534_594x594.jpg%3fw%3d1280%26q%3d100%26fmt%3dpjpeg%26auto%3dformat&ehk=fI6FDw9YxIMYeRHdqfmblpULYNJqLVI7TOOoD1p8feM%3d&risl=&pid=ImgRaw&r=0",
  "Celebrate the birth anniversary of Lord Krishna",
  "https://i.pinimg.com/736x/39/2e/f3/392ef3aa0ac9fe97083c1e35707d89a2.jpg",
  "Dahi Handi, in the month of August",

  "https://fthmb.tqn.com/52mWYrVDh7hFuXmXLx_FjSiFzCk=/2116x1417/filters:fill(auto,1)/GettyImages-535155540-59395b075f9b58d58a51cbcd.jpg",
  "See the colourful processions and participate in them",
  "https://th.bing.com/th/id/OIP.N_F3PrZVsRTWni4uGcKUugHaE7?pid=ImgDet&rs=1",
  "Ganesh Chaturthi, in the months of August-September",

  "https://th.bing.com/th/id/R.66611bae2800adc74a8b576203613b2d?rik=gfKgmd6sYJC2uQ&riu=http%3a%2f%2fwww.lifeberrys.com%2fimg%2farticle%2fnavratri-in-mumbai-1569754058-lb.jpg&ehk=ghqL97Cj0eP%2fJp4NIvH0z5Hge%2bzljHS8JZrpsPiwzoU%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1",
  "Dance in the rythm of Raas and Garba, enthusiastically",
  "https://sonikatravels.files.wordpress.com/2019/10/mauli4.jpg",
  "Navratri, in the months of September-October",

  "https://static.toiimg.com/photo/60855335/.jpg",
  "Participate in the fireworks and have loads of sweets",
  "https://images.hindustantimes.com/rf/image_size_960x540/HT/p2/2018/11/07/Pictures/tuesday-kalachowki-cracker-occasion-bhushan-children-celebration_ff391c66-e254-11e8-a684-a3b63261dee4.jpg",
  "Diwali, in the months of October-November",
];
