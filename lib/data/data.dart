import 'package:amazon_clone/models/cart_model.dart';
import 'package:amazon_clone/models/more_section_model.dart';
import 'package:amazon_clone/models/your_account_model.dart';
import 'package:flutter/material.dart';

import '../models/models.dart';

final List<CategoryModel> categoryList = [
  CategoryModel(
    image: Image.asset(
      'assets/fashion.jpg',
      width: 60,
      height: 60,
      fit: BoxFit.cover,
    ),
    catName: 'Fashion',
  ),
  CategoryModel(
    image: Image.asset(
      'assets/mobiles.jpg',
      width: 60,
      height: 60,
      fit: BoxFit.cover,
    ),
    catName: 'Mobiles',
  ),
  CategoryModel(
    image: Image.asset(
      'assets/electronics.jpg',
      width: 60,
      height: 60,
      fit: BoxFit.cover,
    ),
    catName: 'Electronics',
  ),
  CategoryModel(
    image: Image.asset(
      'assets/minitv.jpg',
      width: 60,
      height: 60,
      fit: BoxFit.cover,
    ),
    catName: 'miniTV',
  ),
  CategoryModel(
    image: Image.asset(
      'assets/home.jpg',
      width: 60,
      height: 60,
      fit: BoxFit.cover,
    ),
    catName: 'Home',
  ),
  CategoryModel(
    image: Image.asset(
      'assets/appliances.jpg',
      width: 60,
      height: 60,
      fit: BoxFit.cover,
    ),
    catName: 'Appliances',
  ),
  CategoryModel(
    image: Image.asset(
      'assets/books.jpg',
      width: 60,
      height: 60,
      fit: BoxFit.cover,
    ),
    catName: 'Books, Toys',
  ),
  CategoryModel(
    image: Image.asset(
      'assets/grocery.jpg',
      width: 60,
      height: 60,
      fit: BoxFit.cover,
    ),
    catName: 'Grocery',
  ),
  CategoryModel(
    image: Image.asset(
      'assets/essentials.jpg',
      width: 60,
      height: 60,
      fit: BoxFit.cover,
    ),
    catName: 'Essentials',
  ),
];

final List<String> carousalImage = [
  'assets/amazonpay.jpg',
  'assets/bookbazaar.jpg',
  'assets/bike.jpg',
  'assets/bestskincare.jpg',
  'assets/narzo.jpg',
  'assets/oneprime.jpg',
  'assets/games.jpg',
];

final List<PayModel> amazonPayData = [
  PayModel(
      img: Image.asset(
        'assets/pay.jpeg',
        width: 40,
        height: 40,
        fit: BoxFit.cover,
      ),
      imgText: 'Pay'),
  PayModel(
      img: Image.asset(
        'assets/bills.jpeg',
        width: 40,
        height: 40,
        fit: BoxFit.cover,
      ),
      imgText: 'Bills'),
  PayModel(
      img: Image.asset(
        'assets/recharge.jpeg',
        width: 40,
        height: 40,
        fit: BoxFit.cover,
      ),
      imgText: 'Recharge'),
  PayModel(
      img: Image.asset(
        'assets/rewards.jpeg',
        width: 40,
        height: 40,
        fit: BoxFit.cover,
      ),
      imgText: 'Rewards'),
];

final List<String> topCard = [
  'assets/mostloved.jpg',
  'assets/bulkgst.jpg',
  'assets/bulb.jpg',
  'assets/oppo.jpg',
  'assets/hp.jpg',
  'assets/pampers.jpg',
];

final List<String> pocketFriendly = [
  'Pocket friendly stores',
  'See more',
  'assets/199.jpg',
  'assets/299.jpg',
  'assets/399.jpg',
  'assets/499.jpg',
  'Top picks under ₹199',
  'Top picks under ₹299',
  'Top picks under ₹399',
  'Top picks under ₹499',
];

final List<String> mobiles = [
  'Starting ₹11,499 | Top searched smartphone series on Amazon',
  'See all',
  'assets/iphone.jpg',
  'assets/oneplus.jpg',
  'assets/redmi.jpg',
  'assets/m33.jpg',
  'iPhone series: Staring ₹43,900',
  'OnePlus series: Staring ₹23,999',
  'Redmi note 11 pro series: Staring ₹17,999',
  'Samsung M series: Staring ₹11,999',
];

final List<String> womensFashion = [
  'Up to 60% off | Deals on women\'s fashion',
  'View all',
  'assets/top.jpg',
  'assets/footwear.jpg',
  'assets/beauty.jpg',
  'assets/jewellery.jpg',
  'Top, kurtis & more',
  'Footwear',
  'Beauty',
  'Fashion jewellery',
];

final List<String> homeDecor = [
  'Up to 70% off | Home decor',
  'See all',
  'assets/showpieces.jpg',
  'assets/frames.jpg',
  'assets/candles.jpg',
  'assets/paintings.jpg',
  'Showpieces',
  'Photo frames',
  'Candles',
  'Paintings',
];

final List<String> headPhone = [
  'Shop headphones by brand',
  'Explore more',
  'assets/boat.jpg',
  'assets/hungama.jpg',
  'assets/boult.jpg',
  'assets/zebronics.jpg',
  'Boat',
  'Hungama HiLife',
  'Boult Audio',
  'Zebronics',
];

final List<String> clothingFootwear = [
  'Clothing, footwear and more',
  'See all offers',
  'assets/tshirt_sarees.jpg',
  'assets/skin.jpg',
  'assets/casual.jpg',
  'assets/bag.jpg',
  'Under ₹499 | t-shirts & sarees',
  'Starting ₹99 | Skin care',
  'Under ₹499 | Casual and running shoes',
  'Under ₹399 | Watches, backpacks & more',
];

final List<DealModel> dealsData = [
  DealModel(
    img: 'assets/ipad.jpg',
    priceRange: '₹3,999.00 - ₹1,79,900.00',
    name: 'Never seen before prices on Apple iPad Air, Alcatel, TCL',
    end: 'Ends in 13:16:18',
  ),
  DealModel(
    img: 'assets/pistol.jpg',
    priceRange: '₹139.00 - ₹769.00',
    name: 'Health & Personal Care Products: Amazon Brands &',
    end: 'Ends in 13:16:18',
  ),
  DealModel(
    img: 'assets/crocs.webp',
    priceRange: '₹299.00 - ₹3,198.00',
    name: 'Crocs footwear',
    end: 'Ends in 13:16:18',
  ),
  DealModel(
    img: 'assets/monitor.jpg',
    priceRange: '₹9,387.00 - ₹1,19,990.00',
    name: 'Handpicked Monitor from LG, Samsung and more',
    end: 'Ends in 13:16:18',
  ),
];

final List shoes = [
  'Up to 70% off + extra 10% cashback* | Top deals',
  'Mega Fashion Sundays',
  'assets/shoe1.jpg',
  'assets/shoe2.jpg',
  'assets/shoe3.jpg',
  'assets/shoe4.jpg',
  'assets/shoe5.jpg',
  'assets/shoe6.jpg',
  'assets/shoe7.jpg',
  'assets/shoe8.jpg',
  'assets/shoe9.jpg',
];

final List handMade = [
  'Up to 50% off | Bestselling handmade decor',
  'Explore more',
  'assets/hm1.jpg',
  'assets/hm2.jpg',
  'assets/hm3.jpg',
  'assets/hm4.jpg',
  'assets/hm5.jpg',
  'assets/hm6.jpg',
  'assets/hm7.jpg',
  'assets/hm8.jpg',
  'assets/hm9.jpg',
];

final List<KeepShoppingModel> keepShopping = [
  KeepShoppingModel(name: 'Home office desk chair', img: 'assets/chair.jpg'),
  KeepShoppingModel(name: 'Toilet cleaners', img: 'assets/pistol.jpg'),
  KeepShoppingModel(name: 'Men\'s flip-flops', img: 'assets/shoe1.jpg'),
  KeepShoppingModel(name: 'Monitors', img: 'assets/monitor.jpg'),
  KeepShoppingModel(name: 'Tablets', img: 'assets/ipad.jpg'),
  KeepShoppingModel(name: 'Smartphones', img: 'assets/oneplus.jpg'),
];

final List<YourAccountModel> yourAccountData = [
  YourAccountModel(name: 'Your Orders', onPressed: () {}),
  YourAccountModel(name: 'Your Addresses', onPressed: () {}),
  YourAccountModel(name: 'Top-up your Amazon pay balance', onPressed: () {}),
  YourAccountModel(name: 'Manage Your Profiles', onPressed: () {}),
  YourAccountModel(name: 'Amazon Pay UPI', onPressed: () {}),
  YourAccountModel(name: 'View Amazon Pay balance statement', onPressed: () {}),
];

final List buyAgain = [
  'assets/keyboard.jpg',
  'assets/wifi.jpg',
  'assets/fan.jpg',
  'assets/ssd.jpg',
];

final List<MoreSectionModel> moreScreenData = [
  MoreSectionModel(name: 'Prime', img: 'assets/primebox.png'),
  MoreSectionModel(name: 'Deals and Savings', img: 'assets/deals.jpg'),
  MoreSectionModel(
      name: 'Mobiles & Electronic Devices', img: 'assets/mobileblue.jpg'),
  MoreSectionModel(name: 'Fashion & Beauty', img: 'assets/fashionyellow.jpg'),
  MoreSectionModel(name: 'Groceries & Pet Supplies', img: 'assets/grocery.png'),
  MoreSectionModel(name: 'Health & Personal Care', img: 'assets/personal.png'),
  MoreSectionModel(
      name: 'Home, Furniture & Appliances', img: 'assets/sofa.png'),
  MoreSectionModel(name: 'Music, Video and Gaming', img: 'assets/gaming.png'),
  MoreSectionModel(name: 'FunZone & Inspiration', img: 'assets/spin.png'),
  MoreSectionModel(name: 'Books and Education', img: 'assets/books.png'),
  MoreSectionModel(name: 'Toys, Children and Baby', img: 'assets/toys.webp'),
  MoreSectionModel(name: 'Payments and Bookings', img: 'assets/payment.jpg'),
  MoreSectionModel(name: 'Automotive', img: 'assets/bikesunset.jpg'),
  MoreSectionModel(name: 'Office & professional', img: 'assets/office.jpg'),
  MoreSectionModel(name: 'Sports, Outdoor & Travel', img: 'assets/sport.jpg'),
  MoreSectionModel(name: 'Gifting', img: 'assets/gift.png'),
  MoreSectionModel(name: 'Make Money With Us', img: 'assets/money.png'),
  MoreSectionModel(name: 'Your Things', img: 'assets/yourthings.png'),
];

final List<CartModel> cartData = [
  CartModel(
    name: 'TIMEX Analog Men\'s Watch',
    price: '₹ 1,299.00',
    color: 'Blue',
    img: 'assets/watch.jpg',
    quantity: 1,
  ),
  CartModel(
    name:
        'iQOO Z6 Pro 5G (Legion Sky, 6GB RAM, 128GB Storage) | Snapgradon 778G | 66W FlashCharge | 1300 nits Peak Brightness | HDR10+',
    price: '₹23,999.00',
    color: 'Legion Sky',
    sizeName: '128GB',
    styleName: '6GB',
    img: 'assets/iqoo.jpg',
    quantity: 1,
  ),
  CartModel(
    name: 'TIMEX Analog Men\'s Watch',
    price: '₹ 1,299.00',
    color: 'Blue',
    img: 'assets/watch.jpg',
    quantity: 1,
  ),
  CartModel(
    name:
        'iQOO Z6 Pro 5G (Legion Sky, 6GB RAM, 128GB Storage) | Snapgradon 778G | 66W FlashCharge | 1300 nits Peak Brightness | HDR10+',
    price: '₹23,999.00',
    color: 'Legion Sky',
    sizeName: '128GB',
    styleName: '6GB',
    img: 'assets/iqoo.jpg',
    quantity: 1,
  ),
];
