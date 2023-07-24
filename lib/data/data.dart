class Product {
  final String productName;
  final String productImageUrl;
  final String currentPrice;
  final String oldPrice;
  final bool isLiked;

  const Product({
    required this.productName,
    required this.productImageUrl,
    required this.currentPrice,
    required this.oldPrice,
    required this.isLiked,
  });
}

class Cart {
  final String productName;
  final String productImageUrl;
  final String currentPrice;

  const Cart({
    required this.productName,
    required this.productImageUrl,
    required this.currentPrice,
  });
}

class Category {
  final String categoryName;
  final String productCount;
  final String thumbnailImage;

  const Category({
    required this.categoryName,
    required this.productCount,
    required this.thumbnailImage,
  });
}

final categories = [
  const Category(
    categoryName: "T-SHIRT",
    productCount: "240",
    thumbnailImage:
        "https://static.ticimax.cloud/38825/uploads/urunresimleri/buyuk/kadin-koyu-yesil-oversize-michigan-bas-96f0-3.jpg",
  ),
  const Category(
    categoryName: "SHOES",
    productCount: "120",
    thumbnailImage:
        "https://www.modabuymus.com/kalin-tabanli-duz-beyaz-sneaker-kadin-spor-ayakkabi-fashi-sneakers-modelleri-modabuymus-476239-23-B.jpg",
  ),
  const Category(
    categoryName: "HOODİE",
    productCount: "200",
    thumbnailImage:
        "https://princesspolly.co.uk/cdn/shop/products/0-modelinfo-tamika-us2_eb86e6ac-da08-48eb-a415-c27396c051a1.jpg?v=1670816012&width=767",
  ),
  const Category(
    categoryName: "JEANS",
    productCount: "240",
    thumbnailImage:
        "https://di2ponv0v5otw.cloudfront.net/posts/2021/11/29/61a5377167bd915376fb9dd4/m_61a5377767bd915376fb9dfc.jpg",
  )
];

final products = [
  const Product(
    productName: "MNML - Oversized Tshirt",
    productImageUrl:
        "https://static.ticimax.cloud/40801/uploads/urunresimleri/buyuk/oversize-t-shirt-m-n-m-l-ekru-t-shirt--84b6-.jpg",
    currentPrice: "500",
    oldPrice: "700",
    isLiked: true,
  ),
  const Product(
    productName: "Crop Top Hoddie",
    productImageUrl:
        "https://cherrysportsgear.com/cdn/shop/products/18_1200x.png?v=1646681618",
    currentPrice: "392",
    oldPrice: "400",
    isLiked: false,
  ),
  const Product(
    productName: "Half Tshirt",
    productImageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoQ4PUeooP_rnU38e-2eO7eMokR9KulBlQtRCrjBPdbsd-fnE_RqgD3TVSgm0FVxkIHt8&usqp=CAU",
    currentPrice: "204",
    oldPrice: "350",
    isLiked: true,
  ),
  const Product(
    productName: "Best Fit Women Outfit",
    productImageUrl:
        "https://i.pinimg.com/originals/57/88/e8/5788e89375c8c4173d5ec3c08b0d6dbb.jpg",
    currentPrice: "540",
    oldPrice: "890",
    isLiked: true,
  ),
  const Product(
    productName: "Strip Tourser",
    productImageUrl:
        "https://www.whistles.com/dw/image/v2/BDCH_PRD/on/demandware.static/-/Sites-whistles-master-catalog/default/dwd1a6ef4c/images/00803144378/whistles-linen-stripe-trouser-white-multi-01.jpg?sw=1280&sh=1792&strip=false",
    currentPrice: "230",
    oldPrice: "750",
    isLiked: false,
  ),
  const Product(
    productName: "MNML-Jeans",
    productImageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQToxFwegzyQj3BxomT5JFJ729t30Q4vQuWIH_Wl_2rpyd3iHyzXxiElmOOnDx_4vYyWmY&usqp=CAU",
    currentPrice: "240",
    oldPrice: "489",
    isLiked: false,
  ),
  const Product(
    productName: "MNML-Jeans",
    productImageUrl:
        "https://cdn.shopify.com/s/files/1/1300/6871/products/B119-Flare-Denim-Black-2_1024x1024.jpg?v=1643857026",
    currentPrice: "240",
    oldPrice: "489",
    isLiked: false,
  ),
  const Product(
    productName: "Half-Tshirt",
    productImageUrl:
        "https://resim.ozgeozgenc.com/22koz0930/ekr/half-of-us-baskili-kisa-kol-tshirt-01963aec9aa8.jpg",
    currentPrice: "204",
    oldPrice: "350",
    isLiked: true,
  ),
];

final carts =[
  const Cart(
    productName: "MNML - Oversized Tshirt",
    productImageUrl:
        "https://static.ticimax.cloud/40801/uploads/urunresimleri/buyuk/oversize-t-shirt-m-n-m-l-ekru-t-shirt--84b6-.jpg",
    currentPrice: "500",
  ),
  const Cart(
    productName: "Half-Tshirt",
    productImageUrl:
        "https://resim.ozgeozgenc.com/22koz0930/ekr/half-of-us-baskili-kisa-kol-tshirt-01963aec9aa8.jpg",
    currentPrice: "204",
  ),
  const Cart(
    productName: "Best Fit Women Outfit",
    productImageUrl:
        "https://i.pinimg.com/originals/57/88/e8/5788e89375c8c4173d5ec3c08b0d6dbb.jpg",
    currentPrice: "540",
  ),
];
