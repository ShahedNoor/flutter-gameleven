import 'package:flutter/material.dart';

class HomeController with ChangeNotifier {
  // Top container data
  dynamic topCarouselData = [
    {
      'title_01': '2021 Newly',
      'title_02': 'Gaming Headset',
      'subtitle': 'Wirless or Customize Drive',
      'button_text': 'Shop Now',
      'image': 'assets/images/home_images/headphones_icon.png'
    },
    {
      'title_01': 'Immerse Yourself',
      'title_02': 'In Gaming Bliss',
      'subtitle': 'Explore Wireless Freedom',
      'button_text': 'Shop Now',
      'image': 'assets/images/home_images/headphones_icon.png'
    },
    {
      'title_01': 'Discover the Magic',
      'title_02': 'Of Gaming Audio',
      'subtitle': 'Customizable Sound Driven',
      'button_text': 'Shop Now',
      'image': 'assets/images/home_images/headphones_icon.png'
    },
    {
      'title_01': 'Elevate Your Gaming',
      'title_02': 'Experience',
      'subtitle': 'Seamless Wireless',
      'button_text': 'Shop Now',
      'image': 'assets/images/home_images/headphones_icon.png'
    },
    {
      'title_01': 'Step into the Future',
      'title_02': 'Of Gaming',
      'subtitle': 'Customizable Wireless',
      'button_text': 'Shop Now',
      'image': 'assets/images/home_images/headphones_icon.png'
    },
  ];

  dynamic promotionMenuData = [
    {
      'title': 'Coupons',
      'image': 'assets/images/promotion_menu_icons/coupon.png'
    },
    {
      'title': 'Gift Card',
      'image': 'assets/images/promotion_menu_icons/gift_card.png'
    },
    {
      'title': 'Slash',
      'image': 'assets/images/promotion_menu_icons/shopping_bag.png'
    },
    {
      'title': 'PC Assemble',
      'image': 'assets/images/promotion_menu_icons/pc.png'
    },
  ];

  dynamic flashDealsMenuData = [
    {
      'button_text': '550.00 SAR',
      'image': 'assets/images/flash_deals_menu_images/gaming_chair_icon.png'
    },
    {
      'button_text': '230.00 SAR',
      'image': 'assets/images/flash_deals_menu_images/mouse_icon.png'
    },
    {
      'button_text': '1230.00 SAR',
      'image': 'assets/images/flash_deals_menu_images/computer_icon.png'
    },
    {
      'button_text': '560.00 SAR',
      'image': 'assets/images/flash_deals_menu_images/headphone_icon.png'
    },
  ];

  dynamic hotCategoriesData = [
    {
      'button_text': 'G11 Chair',
      'image': 'assets/images/flash_deals_menu_images/gaming_chair_icon.png'
    },
    {
      'button_text': 'G11 Mouse',
      'image': 'assets/images/flash_deals_menu_images/mouse_icon.png'
    },
    {
      'button_text': 'Gaming PC',
      'image': 'assets/images/flash_deals_menu_images/computer_icon.png'
    },
    {
      'button_text': 'G11 Headphone',
      'image': 'assets/images/flash_deals_menu_images/headphone_icon.png'
    },
  ];

  dynamic brandsMenuData = [
    {
      'top_image':
          'assets/images/flash_deals_menu_images/gaming_chair_icon.png',
      'bottom_image': 'assets/images/brands_menu_images/brand_icon_01.png'
    },
    {
      'top_image': 'assets/images/flash_deals_menu_images/mouse_icon.png',
      'bottom_image': 'assets/images/brands_menu_images/brand_icon_02.png'
    },
    {
      'top_image': 'assets/images/flash_deals_menu_images/computer_icon.png',
      'bottom_image': 'assets/images/brands_menu_images/brand_icon_03.png'
    },
    {
      'top_image': 'assets/images/flash_deals_menu_images/headphone_icon.png',
      'bottom_image': 'assets/images/brands_menu_images/brand_icon_04.png'
    },
  ];

  dynamic bestSaleProductsData = [
    {
      'id': 0,
      'image': 'assets/images/best_sale_product_images/headphone_icon.png',
      'title': 'Power Bank Water Gold',
      'subtitle': 'Sound Box',
      'short_description':
          'Strategies de Survie des Populations Africaines dans une Economie Mondialisée - L’expérience Camerounaise.',
      'description':
          'Strategies de Survie des Populations Africaines dans une Economie Mondialisée - L’expérience Camerounaise.Strategies de Survie des Populaions Africaines dans une Economie Mondi- L’expérience Camero',
      'original_price': '46,0000.00 XAF',
      'price': '500.00 SAR',
      'discount': '-46%',
      'rating': '4.6',
      'cart_icon': 'assets/images/best_sale_product_images/cart_icon.png',
      'quantity': 1,
      'selected': false,
      'isFavourite': false,

      // Voucher Information
      'voucher_title': 'First Order Voucher',
      'voucher_discount': '35% Off',
      'voucher_validity': 'Valid for 7 day(s) from collection',

      // Review and Rating
      'overall_rating': '0',
      'overall_rating_bar': 0.0,
      'bottom_rating': '0',

      'individual_rating_bar_01': 5.0,
      'individual_rating_01': '5(9)',
      'individual_rating_bar_02': 4.0,
      'individual_rating_02': '4(5)',
      'individual_rating_bar_03': 3.0,
      'individual_rating_03': '3(1)',
      'individual_rating_bar_04': 2.0,
      'individual_rating_04': '2(1)',
      'individual_rating_bar_05': 1.0,
      'individual_rating_05': '1(1)',
    },
    {
      'id': 1,
      'image': 'assets/images/best_sale_product_images/gaming_chair_icon.png',
      'title': 'Power Bank Water Gold',
      'subtitle': 'Sound Box',
      'short_description':
          'Strategies de Survie des Populations Africaines dans une Economie Mondialisée - L’expérience Camerounaise.',
      'description':
          'Strategies de Survie des Populations Africaines dans une Economie Mondialisée - L’expérience Camerounaise.Strategies de Survie des Populaions Africaines dans une Economie Mondi- L’expérience Camero',
      'original_price': '46,0000.00 XAF',
      'price': '500.00 SAR',
      'discount': '-46%',
      'rating': '4.6',
      'cart_icon': 'assets/images/best_sale_product_images/cart_icon.png',
      'quantity': 1,
      'selected': false,
      'isFavourite': false,

      // Voucher Information
      'voucher_title': 'First Order Voucher',
      'voucher_discount': '35% Off',
      'voucher_validity': 'Valid for 7 day(s) from collection',

      // Review and Rating
      'overall_rating': '0',
      'overall_rating_bar': 0.0,
      'bottom_rating': '0',

      'individual_rating_bar_01': 5.0,
      'individual_rating_01': '5(9)',
      'individual_rating_bar_02': 4.0,
      'individual_rating_02': '4(5)',
      'individual_rating_bar_03': 3.0,
      'individual_rating_03': '3(1)',
      'individual_rating_bar_04': 2.0,
      'individual_rating_04': '2(1)',
      'individual_rating_bar_05': 1.0,
      'individual_rating_05': '1(1)',
    },
    {
      'id': 2,
      'image': 'assets/images/best_sale_product_images/computer_icon.png',
      'title': 'Power Bank Water Gold',
      'subtitle': 'Sound Box',
      'short_description':
          'Strategies de Survie des Populations Africaines dans une Economie Mondialisée - L’expérience Camerounaise.',
      'description':
          'Strategies de Survie des Populations Africaines dans une Economie Mondialisée - L’expérience Camerounaise.Strategies de Survie des Populaions Africaines dans une Economie Mondi- L’expérience Camero',
      'original_price': '46,0000.00 XAF',
      'price': '500.00 SAR',
      'discount': '-46%',
      'rating': '4.6',
      'cart_icon': 'assets/images/best_sale_product_images/cart_icon.png',
      'quantity': 1,
      'selected': false,
      'isFavourite': false,

      // Voucher Information
      'voucher_title': 'First Order Voucher',
      'voucher_discount': '35% Off',
      'voucher_validity': 'Valid for 7 day(s) from collection',

      // Review and Rating
      'overall_rating': '0',
      'overall_rating_bar': 0.0,
      'bottom_rating': '0',

      'individual_rating_bar_01': 5.0,
      'individual_rating_01': '5(9)',
      'individual_rating_bar_02': 4.0,
      'individual_rating_02': '4(5)',
      'individual_rating_bar_03': 3.0,
      'individual_rating_03': '3(1)',
      'individual_rating_bar_04': 2.0,
      'individual_rating_04': '2(1)',
      'individual_rating_bar_05': 1.0,
      'individual_rating_05': '1(1)',
    },
    {
      'id': 3,
      'image': 'assets/images/best_sale_product_images/mouse_icon.png',
      'title': 'Power Bank Water Gold',
      'subtitle': 'Sound Box',
      'short_description':
          'Strategies de Survie des Populations Africaines dans une Economie Mondialisée - L’expérience Camerounaise.',
      'description':
          'Strategies de Survie des Populations Africaines dans une Economie Mondialisée - L’expérience Camerounaise.Strategies de Survie des Populaions Africaines dans une Economie Mondi- L’expérience Camero',
      'original_price': '46,0000.00 XAF',
      'price': '500.00 SAR',
      'discount': '-46%',
      'rating': '4.6',
      'cart_icon': 'assets/images/best_sale_product_images/cart_icon.png',
      'quantity': 1,
      'selected': false,
      'isFavourite': false,

      // Voucher Information
      'voucher_title': 'First Order Voucher',
      'voucher_discount': '35% Off',
      'voucher_validity': 'Valid for 7 day(s) from collection',

      // Review and Rating
      'overall_rating': '0',
      'overall_rating_bar': 0.0,
      'bottom_rating': '0',

      'individual_rating_bar_01': 5.0,
      'individual_rating_01': '5(9)',
      'individual_rating_bar_02': 4.0,
      'individual_rating_02': '4(5)',
      'individual_rating_bar_03': 3.0,
      'individual_rating_03': '3(1)',
      'individual_rating_bar_04': 2.0,
      'individual_rating_04': '2(1)',
      'individual_rating_bar_05': 1.0,
      'individual_rating_05': '1(1)',
    },
  ];

  dynamic categoriesData = [
    {
      'title': 'Electronic Device',
      'image': 'assets/images/best_sale_product_images/headphone_icon.png',
      'subcategory_title': 'Xbox',
      'product_name': 'Headphone'
    },
    {
      'title': 'Furnitures Device',
      'image': 'assets/images/best_sale_product_images/gaming_chair_icon.png',
      'subcategory_title': 'Playstation 4',
      'product_name': 'G11 Mouse'
    },
    {
      'title': 'Casual Bag',
      'image': 'assets/images/best_sale_product_images/computer_icon.png',
      'subcategory_title': 'Gaming Setup',
      'product_name': 'Gaming Pc'
    },
    {
      'title': 'Gaming Mouse',
      'image': 'assets/images/best_sale_product_images/mouse_icon.png',
      'subcategory_title': 'TV & Audio'
    },
    {
      'title': 'Gaming Pc',
      'image': 'assets/images/best_sale_product_images/gaming_pc_icon.png',
      'subcategory_title': 'Merchandise'
    },
    {'subcategory_title': 'Retro Gaming Consoles'},
    {'subcategory_title': 'Pre Owned (Badel)'},
  ];

  // Add to cart function
  List<Map<String, dynamic>> cartItems = [];

  void addToCart(Map<String, dynamic> product) {
    // Check if the product is already in the cart
    bool isProductInCart =
        cartItems.any((cartItem) => cartItem['id'] == product['id']);

    if (isProductInCart) {
      // If the product is already in the cart, find the cart item and increase the quantity
      final cartItem =
          cartItems.firstWhere((cartItem) => cartItem['id'] == product['id']);
      cartItem['quantity']++;
    } else {
      // If the product is not already in the cart, add it to the cart
      cartItems.add(product);
    }
    notifyListeners();
  }

  void removeSelectedItemsFromCart() {
    // Update quantity to 0 for selected items
    cartItems.forEach((cartItem) {
      if (cartItem['selected'] == true) {
        cartItem['quantity'] = 1;
      }
    });

    // Remove items from cart where 'selected' is true
    cartItems.removeWhere((cartItem) => cartItem['selected'] == true);

    notifyListeners();
  }

  List<Map<String, dynamic>> favouriteItems = [];

  void addToFavourite(int productId) {
    // Find the index of the product with the given ID
    int index = bestSaleProductsData
        .indexWhere((product) => product['id'] == productId);

    if (index != -1) {
      // Check if the product is already in favouriteItems
      bool isAlreadyInFavourites = favouriteItems
          .any((favouriteItem) => favouriteItem['id'] == productId);

      if (!isAlreadyInFavourites) {
        // If not in favourites, add it
        favouriteItems.add(bestSaleProductsData[index]);
      } else {
        // If already in favourites, remove it
        favouriteItems
            .removeWhere((favouriteItem) => favouriteItem['id'] == productId);
      }

      // Toggle the isFavourite flag in bestSaleProductsData
      bestSaleProductsData[index]['isFavourite'] = !isAlreadyInFavourites;
    }

    notifyListeners();
  }

  void removeFromWishlist(int index) {
    // Check if the index is valid
    if (index >= 0 && index < favouriteItems.length) {
      // Get the product ID of the item to be removed
      int productId = favouriteItems[index]['id'];

      // Find the index of the product with the given ID in bestSaleProductsData
      int productIndex = bestSaleProductsData
          .indexWhere((product) => product['id'] == productId);

      if (productIndex != -1) {
        // Toggle the isFavourite flag in bestSaleProductsData
        bestSaleProductsData[productIndex]['isFavourite'] = false;
      }

      // Remove the item from the favouriteItems list
      favouriteItems.removeAt(index);

      // Notify listeners to update the UI
      notifyListeners();
    }
  }
}
