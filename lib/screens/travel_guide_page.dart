import 'package:flutter/material.dart';
import 'package:tour_guide/widgets/app_large_text.dart';
import 'package:tour_guide/widgets/app_text.dart';

class TravelGuidePage extends StatelessWidget {
  const TravelGuidePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
          itemCount: guide.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Center(
                        child: Material(
                          type: MaterialType.transparency,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            padding: const EdgeInsets.all(15),
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: 500,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(height: 15,),
                                AppLargeText(
                                    text: guide[index][0],
                                    color: Colors.grey
                                ),
                                const SizedBox(height: 20,),
                                Expanded(
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: AppText(
                                        text: guide[index][1],
                                        color: Colors.grey,
                                    ),
                                  )
                                ),
                                const SizedBox(height: 15,),
                              ],
                            ),
                          ),
                        ),
                      );
                    }
                );
                // showDialogFunc(context, guide[index])
              },
              child: Card(
                  child: Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      child: AppLargeText(
                        text: guide[index][0],
                        size: 20,
                      ),
                    ),
                  )
              ),
            );
          }
      ),
    );
  }
}

List guide = [
["Emergency Helpline Numbers", "Mumbai Police\n\nMumbai Police Control Room : 100\n\nPolice Infoline : 1090\n\nD. G. Control : +91 22 22026636\n\nMumbai Police Head Quarter : +91 22 22625020\n\nNorth Control : +91 22 28854643\n\nEast Control : +91 22 25233588\n\nWest Control : +91 22 26457900\n\nSouth Div.  : +91 22 23089855\n\nCentral Div : +91 22 23750909\n\nTraffic Police\n\nTraffic Control : +91 22 24937746\n\nTraffic Helpline : +91 22 30403040\n\nRailways\n\nChurchgate : +91 22 22017421\n\nC.S.T : 22622685\n\nCentral Rly. C.S.T. : +91 22 22620173\n\nWestern Rly. Central : +91 22 23070197\n\nAirport\n\nSantacruz Airport : +91 22 26156600\n\nSahar Terminal (NIPTC) : +91 22 26829000\n\nAir India Enquiry : +91 22 22796666\n\nAir Ambulance\n\nDomestic/International : +91 9821150889 [90]\n\nFire Station : 101, +91 22 23076111/23086181/2306112/13\n\nCoast Guard : +91 22 24376133, +91 22 24371932"],

["Safety Tips", "For a city of its size and global importance, Mumbai is quite safe. However, as with any foreign city, it is best to be on the side of safety and act according to your local environment. Here are a few basic safety tips:\nLittering is punishable with a INR 200 fine throughout Mumbai as part of the Clean-Up Mumbai initiative by the BMC.\nKeep your money and credit cards safe at all times. Always carry some cash as many places won't take cards.\nDo not display large amounts of rupee notes in public.Beware of pickpocket-ting on buses and trains.\nAlso beware of mobile, chain, or bag snatchers who operate in densely populated places, such as railway stations, busy roads, and traffic signals.\nDon't ever let an auto or taxi you are traveling in pick up any more people, or pull over before your final destination.\nPolice can sometimes be corrupt, although Maharashtra is actively cracking down on corruption.\nBe aware of scams.\nFraudulent SIM cards are not only sold on streets, but also in official-looking mobile phone stores. Never buy a SIM card if the vendor refuses to give you a receipt; make sure that the SIM envelope is not open, and check prices against an official brochure."],

["How to get in Mumbai?", "By plane - Being the financial capital of India, Mumbai has excellent connectivity with most of the major cities around the world. Most of the domestic sectors too are linked to Mumbai, making it the second busiest aviation hub in the country. Mumbai's Chhatrapati Shivaji Maharaj International Airport (IATA: BOM) (ICAO: VABB is India's second-busiest airport and one of the main international gateways to the country. The airport consists mainly of two terminals (domestic and international) - both terminals use the same airspace but are 4km apart. There is a free shuttle bus connecting them but be prepared for long delays through security.\n\nBy boat - Numerous travel organizations now offer cruises to Singapore, Malaysia, Dubai, etc. Though the cruise industry is still developing, Mumbai can be reached by such cruises. Ferries from Ferry Wharf allow cheap access to islands and beaches in the vicinity of the city.\n\nBy train - Trains arrive in Mumbai from all over India. The Central line serves connectivity to Southern India, Eastern India, and parts of North India. The key stations are Chattrapati Shivaji Terminus, Dadar Terminus, and Kurla (Lokmanya Tilak) Terminus. The Western line connects to the Western states of Gujarat, Rajasthan, and some parts of North India. The main termini are Mumbai Central and Bandra Terminus.\n\nBy car - National highway numbers 3, 4, 6, 8, 48 , 66, and the Mumbai-Pune expressway radiate from the city providing links to all parts of the country. The road conditions are generally better than in the rest of India. The comfortable airconditioned blue cabs are available to Pune and Ahmednagar-Nashik from opposite Asiad Bus Terminal in Dadar and Lakhamsi Nappoo Rd near Dadar east railway station respectively.\n\nBy bus - Mumbai is well served by buses from destinations inside India.\nAsiad Bus Service - The bus terminal, popularly known as 'Asiad Bus Terminal' on Ambedkar Rd in Dadar east is another hub from where buses travel to Pune at regular frequency of 15 minutes to 1 hour.\nPrivate Buses There also exist numerous private bus operators who operate a large number of services from/to Mumbai from most major cities like Udaipur, Ajmer, Ahmedabad, Vadodara, Surat, Indore, Nashik, Aurangabad, Hyderabad, Belgaum, Hubli, Bangalore, Mangalore, Trichur and Goa.\nST Buses The MSRTC (Maharashtra State Road Transport Corporation), commonly known as ST, operates services to Mumbai from various cities in Maharashtra. Mumbai Central is the most important Terminus in the city. All major cities in Maharashtra and nearby states are connected through Mumbai Central Terminus. The other important ST depots are at Parel, Nehru Nagar-Kurla, and Borivali. You can get buses for all over Maharashtra from these depots. But from Mumbai Central you would get buses any time as well as other State Transport buses. Quality varies."],

["How to use Public Transport?", "Black & Yellow Top Taxi - Taxis are cheap and plentiful. Most taxis in Mumbai are small-medium sized cars (non air-conditioned), painted black-and-yellow (black on lower body and yellow on roof). You can hail a cab off the streets. Generally, the only way to call for the standard taxi is to hail one on the street. The maximum number of passengers allowed for a trip officially is four — three in the back seat and one in the front. Seat belts are not mandatory for taxi passengers and most standard black and yellow taxis will not even have them installed, though expect them in the branded ones.\n\nPrivate taxis - If you want a comfortable, air-conditioned ride at a small surcharge of 25 percent over normal taxis it's best to travel by branded cab services that operate at government-approved tariffs. These services operate modern fleets with well trained drivers. You can get them at 30-60 minutes notice, they are clean, air-conditioned, equipped with digital, tamper-proof meters, punctual, honest, and GPS-equipped-monitored, which makes them far secure at any time. If you're using a mobile phone, you receive an SMS with the driver's name, mobile number and car number 30 minutes before scheduled departure. Charges are Rs 27 for the first kilometer and Rs 20 for subsequent kilometers, with a 25% night surcharge (midnight-5AM). Some can be booked online. Uber, Ola cabs and Blinkit are also easily available and can be approached either by calling the customer care, through mobile apps or through their websites.\n\nBy auto-rickshaw - There are more than 200,000 Auto-rickshaws or the three wheeler Tuk Tuks running on Mumbai roads. They are only allowed to operate beyond Bandra in the western suburbs and beyond Sion in the central suburbs. They are not issued licenses in the downtown areas. The new flag down fare for auto-rickshaws is Rs 25. These days Auto rickshaws are fitted with an electronic display fare meter that displays the fare + Distance travel led + Waiting time.\n\nBy bus - Brihanmumbai Electric Supply and Transport (known as BEST) provides efficient and comprehensive services connecting up all places of the city and the suburbs. Some services also link the city with the extended suburbs like Navi Mumbai, Thane, and Mira-Bhayanadar areas. Seats are almost always occupied. There are bus stops all over the city. Buses run from 5AM to midnight. Selected routes run beyond these timings, but much less often. Average frequency between buses ranges from five to 30 min depending on the route. Fares are reasonable and buses can be traveled during peak hours, unlike trains which are far too crowded. Some trunk routes do get extremely crowded however. Peak hours also have traffic snarls which may depend on the area traversed and the state of the roads. Buses are numbered and the final destination is marked on the front in Marathi and on the side in English.By train - Mumbai is a linear city and the Western Line travels from Churchgate to Dahanu Road via Mumbai's Western Suburbs. The Central Main Line travels from Mumbai CSMT (Chhatrapati Shivaji Maharaj Terminus), to Kalyan via Mumbai's Central Suburbs and Thane. The interchange point between the Western Line and the Central Line is Dadar. The Harbour Line has a common stretch between Mumbai CSMT and Vadala. The harbour line splits into two spurs, the main one running to Mumbai's Eastern Suburbs and Navi Mumbai, up to Panvel. The Interchange point of this line with the Central Main Line is at Kurla. The other spur of the Harbour Line runs up to Mahim on the Western Line and runs parallel up to Goregaon. The interchange stations with the Western line are Bandra , Andheri and Goregaon. Trains on all lines start operations after 4AM and close operations between midnight and 1AM.\nSecond class travel is very cheap. However, it is advisable to buy first class tickets as the economy class is extremely crowded. First Class can be quite expensive and if four people are travelling together, a taxi might be better. There would always be queues and it would be advisable to buy coupon booklets. If you are a tourist, you can buy a 'Tourist Ticket'. It costs Rs.275 and you can travel in first class compartments of all the three lines during the entire day. There are special coaches for women on both classes. These are designated by green and yellow slant stripes, spot these stripes on the station walls and you'll know where the ladies compartment is.\n\nMumbai Metro and Monorail - Mumbai has one 14 kms long East-West line in operation since June 2014 connecting the Central Line suburb of Ghatkopar with Versova in the West, now called the BLUE Line. Recently, a 20 kms strech from Dahanukarwadi to Aarey via Dahisar in the Western Suburbs has been open to public. The Monorail is a 20 kms line connecting Chembur in the Harbour Suburbs to Mahalakshmi in the South Central Area via Wadala-Parel. The fare for both the Metro and Monorail ranges between Rs. 10-50"],

["What is the best time to visit in Mumbai?", "The best time to visit Mumbai is during the winter season in the months from November to February when the temperature ranges from 22°C to 33°C. Mumbai sees the highest number of travelers during the winter season as weather in these months is dry and cool. One can enjoy a plethora of thrilling and exciting water sports on the beaches in Mumbai. If you are someone who loves rainfalls, it can also be a good time to witness the city decked with lush greenery during monsoons. Adorned with sea waves, the city is meant to cast a magic on you. However, the Mumbai weather during the summer season is all about humidity, hence, it is advised to visit the financial capital during the winter season, when the weather is quite ideal for sightseeing and other activities."],

["How to buy items in Mumbai?", "Visa and Master cards are widely accepted in the city shops. Many shopping establishments also accept American Express, Diners and host of other cards. However, some of the small shops or family-run shops may not accept these cards and some handy cash can be of help here. ATMs are widely available and many debit cards accepted as well. If you have an Indian bank account or credit card, you may not need to carry too much of cash. UPI or the Unified Payments System is widely excepted in the country, including small shops. If you are a foreigner, it is a good idea to carry some cash to avoid charges while using your credit or debit card.In general, costs in Mumbai are higher than the rest of India, though they are still much lower by Western standards."],

["What are the tourist Traps in Mumbai?", "In a place without clearly displayed price tags (and sometimes even in places with), you will get charged about 3-4 times as much as a local if you seem like a tourist. Take a local with you if you're going to local markets to haggle. Haggling is much louder and ruder in India than elsewhere. Don't be afraid to haggle things down to 1/4 of the asking price. And most importantly remember that almost all stores that sell carpets, jewelry, handicrafts, etc. pay huge amounts of commission (25% up to even 50%!) to the cab drivers, hence avoid tourist taxis, cabs, etc. Another thing to remember is not to haggle just for the fun of it. The shopkeepers may take offense if you don't buy an item after they have agreed to your price. One of the places that you can trust is The World Trade Centre (in Cuffe Parade, near Hotel Taj President). Besides being the only World Trade Centre in Mumbai, this place has an amazing range of exquisite carpets, handicrafts, shawls, etc. with reputed government approved stores and state emporiums too. Ask for receipts everywhere including bars and check what you have been charged for. Don't ever accept a guide offer or escort of somebody from the street: You will certainly get conned. If some place (including cabs, eateries, stores, etc) claims it doesn't have change (this is highly unlikely), insist they get change from a neighbouring store."],

["How is the Tipping Culture in Mumbai?", "Tip between 5-10% at sit-down places. If a place includes service charges on the bill, you don't need to leave an extra tip. Note the difference between service tax and service charges. Service tax goes to Government and not to the staff. While tipping is always good practice, you don't necessarily have to tip the bartender while at a bar. If you plan to be there a while though it's a good idea to give him Rs 50-100 on your first drink to ensure a night of trouble-free service. You do not have to tip cab or auto drivers at all, and don't get out of the vehicle until they have given you full and exact change.", "https://imgk.timesnownews.com/story/1531916530-100_Rupee_new_note.jpg"],

["What precautions must be taken while in the city?", "Food - As elsewhere in India, be careful with what you eat. Outside of major tourist hotels and restaurants, stay away from raw leafy vegetables, egg-based dressings, like mayonnaise, and minced meat are particularly risky. In short, stick to boiled, baked, fried, or peeled goods.\n\nWater - Tap water is safe however opinions on tap water vary, but most visitors choose to stick to the bottled stuff. Large bottles of water can be purchased at a very low cost. One note of caution, when buying water from street vendors, make sure the lid is sealed, there have been cases of bottles being filled with tap water, and sold as new.\n\nFitness - Numerous fitness centers exist throughout the city. Many exercise facilities and spas offer 24 hour memberships for visitors and are a popular way to unwind after a long day of touring in Mumbai.\n\nSmog - can reach unhealthful levels, especially during the dry season. This, coupled with the summer heat and humidity, can make spending time outdoors quite unpleasant.", "https://medsurgeindia.com/wp-content/uploads/2020/03/Kokilaben-Dhirubhai-Ambani-Hospital-Mumbai.jpg"],
];
