import 'package:flutter/material.dart';
import 'package:tour_guide/widgets/app_large_text.dart';
import 'package:tour_guide/widgets/app_text.dart';

class OneCard extends StatelessWidget {
  const OneCard({Key? key, required this.listname}) : super(key: key);

  final List listname;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: AppLargeText(text: listname[0], size: 20,)),
            SizedBox(height: 5,),
            Stack(
              children: [
                Ink.image(
                  image: NetworkImage(listname[1]),
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ]
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                Icon(Icons.location_on, color: Colors.grey, size: 15,),
                SizedBox(width: 5,),
                AppText(text: listname[2], size: 10,),
              ],
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                Icon(Icons.access_time_filled, color: Colors.grey, size: 15,),
                SizedBox(width: 5,),
                AppText(text: listname[3], size: 10,),
              ],
            ),
            SizedBox(height: 5,),
            AppText(text: listname[4], color: Colors.black,)
          ],
        ),
      ),
    );
  }
}

List Food = [
  ["Celini- Grand Hyatt", "https://lh3.googleusercontent.com/JCEIRTp1xD_89jhjwF7twshDHTImbk3Jhqxj8781de6sLq9-FP7PPVMQFKqSBygnaNFw1394S88lXD4px1cUtGP8F10=w1000", "Santacruz East, Mumbai", "12:30p - 03:00p & 07:00p - 03:00a", "The home-style authentic Italian restaurant in Mumbai, open for lunch, dinner as well as midnight meals, Celini,  embraces traditional Italian recipes and presents them with a modern approach. Exuding an understated elegance, the interiors of Celini Mumbai are contemporary and simple. This Mumbai restaurant showcases a wood-fired pizza oven, rotisserie, and charcoal grill – all built into its show kitchen designed by Molteni of France, where the sights and smells of Chef Alessandro Persico’s Italian cooking invades all the senses. The restaurant has an exhaustive list of delectable wine and multiple seating options like table booths and lounge. Said to be one of the perfect and best restaurants in Mumbai for a family dineout."],
  ["Ziya, The Oberoi", "https://lh3.googleusercontent.com/XhH-QosQZkZmmJF3rKSnicNZ9z6RuiddxmxwMBbqkQ3BiNXgSRuBHlL2ztIMF16lX3pOhstQuRGo75D836HpicerrIDL=w1000", "The Oberoi, Nariman Point,", "12:30p - 03:00p & 07:00p - 11:00p", "Naturally lit through the wall to wall windows that afford refreshing views across the ocean during the daytime and spectacular views of glittering lights along Marine Drive in the evening, Ziya is bright, spacious and majestically ambient that best fits into the category of the best restaurants in Mumbai. They offer a la carte options and a specially curated gourmand menu, intended to take you on a culinary journey through India. To enhance the dining experience, they have hand-selected wines to compliment each course on the menu."],
  ["The Peshwa Pavillion", "https://lh3.googleusercontent.com/Yj5WQ8KitK-yrEmc4MGC3GhTxbV3aU_13QOT4mrmCjWo_pp-PBQrJP7MM8ZtiJJgWQ_0FoBZmXKcfjYHSzgy9I0hMA=w1000", "Andheri East, Mumbai", "06:30p - 10:30a & 12:00p - 03:00p & 07:00p - 11:30p", "Rising from the ground floor at the lobby and reaching way up to the glass ceiling, it dwarfs even the six palms that give the Pavilion an alfresco feel of a Mediterranean town square. The contemporary furniture with marble-topped tables give it a relaxed and laid-back feel. The Peshwa Pavilion serves arguably the country’s finest and most elaborate breakfast, lunch and dinner buffets, showcasing the hotel’s expertise in Indian, Asian and inventive international cuisine."],
  ["The Table", "https://lh3.googleusercontent.com/ZbgfAtAMESxW02K27-nhnUdIrCSQsvHZiM-x-qHDjN1loTjTnQzaBkH0bAY2Sh3f_Usa-I4yw4NnHb_LySgbVLJ4whg=w1000", "Colaba, Mumbai", "12:00p - 04:00p & 07:00p - 11:00p", "The table offers a unique cooking style with global accents and nuances. The menu comprises of small and large plates, snacks and sides are intended for sharing and create a lively social atmosphere. The ambiance is cozy and warm with wooden furniture, brick-like designed walls, and black ceiling. The glass window on one side provides a great view of the city, especially at night."],
  ["Olive Bar And Kitchen", "https://lh3.googleusercontent.com/WOQoX4dBpwaCVoqqcE8l39IvatU8RSqFK66OhIwGCppxSKKxT4LV_AbBX2zezj9lwue2pb-yyEN4rsJ-3V8rouj845I=w1000", "Khar, Mumbai", "12:00p - 11:55p", "This uber chic Mediterranean lounge bar and restaurant is one of the first places to introduce the concept of Mediterranean fare and fun. The flagship Olive Bar & Kitchen is something of a landmark. A place where the city’s happy people meet to dine well, to linger over laughter and conversation. Just like the city, Mumbai’s Olive is a bit of a chameleon: at bar nights on Thursdays, the place explodes with music and high spirits but when you visit this place on a Sunday, you can hear lazy laughter all across the sunlit courtyard."],
];

List Shopping = [
  ["Colaba Causeway", "https://www.tripsavvy.com/thmb/dzYmbQEYiytNCuFn2jodvJUDstA=/561x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Mumbai2019-1-49-474892faea1a459c9fa586adc7287089.JPG", "Colaba Causeway, south Mumbai", "Daily from morning until night.", "The everyday carnival of the Colaba Causeway market is a shopping experience like no other in Mumbai. Geared especially towards tourists, that infamous Indian saying of \"sab kuch milega\" (everything is possible) certainly applies at this market. Dodge persistent balloon and map sellers, as you meander along the sidewalk and peruse the stalls. Want your name written on a grain of rice? That's possible too. If you need a break from shopping, pop into Leopold's Cafe or Cafe Mondegar, two well known Mumbai hangouts."],
  ["Crawford Market", "https://www.tripsavvy.com/thmb/bkLuLRrAStEJ2JjBbP3hcB-ffJo=/561x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Mumbai2019-1-65-a367df979a234c3481d0c1b508f7ba80.JPG", "Lokmanya Tilak Marg, Dhobi Talao", "Daily from morning until night, except Sunday.", "Hectic Crawford Market (officially renamed Mahatma Jyotiba Phule Mandai) is an old-style market, housed in an historic colonial building. It specializes in wholesale fruit and vegetables but sells an array of other items, including imported food and toys. It's also got an entire section devoted to pets of all shapes, sizes and breeds."],
  ["Lalbaug Market", "https://www.tripsavvy.com/thmb/MCrDrN7__t_U024nJqi3y21JP7s=/561x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/_DSC0239_Snapseed-5bb6428d46e0fb0026c3b49d.jpg", "Under the Lalbaug flyover, Dinshaw Petit Road, Lalbaug", "9 a.m. to 9 p.m. except for Mondays.", "Plump sacks of dried red chilies line Mirchi Galli (chili lane) in Lalbaug Market. Unlike Crawford Market, which is frequented by foreign tourists, this market provides an authentic local atmosphere. Sheets of chilies can also be seen drying in the street under the sun. Try the fiery Guntur Sannam from Andhra Pradesh if you don't mind a lot of burn. You can choose your own spices and have them freshly roasted, ground and mixed into a customized blend. Be prepared to sneeze during the process though! Khamkar Spices has been in business since 1933 and is popular. Perpendicular lanes sell Maharashtrian chivda snacks and pickles."],
  ["Linking Road", "https://www.tripsavvy.com/thmb/FKJVeMd8n-xXytBt7usSfxpwJ50=/561x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/_DSC0297_Snapseed_Fotor-56a3c1c65f9b58b7d0d39b5d.jpg", "Linking Road, Bandra West", "Daily from 10 a.m. until 10 p.m.", "A fusion of modern and traditional, and East meets West, in one of Mumbai's hippest suburbs. Here streets stalls contrast with brand name shops, and you'll find a local Indian roadside food vendor on one side of the road and a Kentucky Fried Chicken outlet on the other. The street stalls tend to be grouped together according to the type of goods they sell. If you visit this market on a Sunday, be prepared for the crowds!"],
  ["Fashion Street", "https://www.tripsavvy.com/thmb/DskwORCoVhSiNrpkzYfoQCfGaK8=/561x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/148520928-56a3c0243df78cf7727f03be.jpg", "MG Road, south Mumbai.", "Daily from morning until night.", "Fashion Street is literally just that -- a street lined with fashion! There are about 150 stalls there. The market mainly attracts teenagers and college students, who come to grab the latest western clothes and fake brand names at cheap prices."],
];
