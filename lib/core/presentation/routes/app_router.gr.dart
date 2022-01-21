// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i45;

import '../../../auth/presentation/sign_in_page.dart' as _i35;
import '../../../cart/checkout/presentation/checkout_page.dart' as _i6;
import '../../../cart/checkout/presentation/contacts_page.dart' as _i5;
import '../../../cart/checkout/presentation/delivery_type_page.dart' as _i4;
import '../../../cart/checkout/presentation/order_success.dart' as _i7;
import '../../../cart/core/presentation/cart_page.dart' as _i3;
import '../../../catalog/core/domain/category_model.dart' as _i52;
import '../../../catalog/core/domain/section_model.dart' as _i51;
import '../../../catalog/core/presentation/base_catalog_page.dart' as _i28;
import '../../../catalog/core/presentation/catalog_filter_page.dart' as _i31;
import '../../../catalog/core/presentation/catalog_products.dart' as _i30;
import '../../../catalog/core/presentation/sub_catalog_page.dart' as _i29;
import '../../../comparison/presentation/comparison_page.dart' as _i33;
import '../../../favorites/presentation/favorites_page.dart' as _i32;
import '../../../groups/actions/domain/action_model.dart' as _i48;
import '../../../groups/actions/presentation/action_products_page.dart' as _i12;
import '../../../groups/actions/presentation/actions_page.dart' as _i11;
import '../../../groups/brands/domain/brand_model.dart' as _i50;
import '../../../groups/brands/presentation/brand_filter_page.dart' as _i20;
import '../../../groups/brands/presentation/brand_products_page.dart' as _i19;
import '../../../groups/brands/presentation/brands_page.dart' as _i18;
import '../../../groups/core/infrastructure/groups_remote_service.dart' as _i47;
import '../../../groups/core/presentation/base_groups_page.dart' as _i10;
import '../../../groups/core/presentation/universal_products_grid_page.dart'
    as _i15;
import '../../../groups/discounts/presentation/disounts_page.dart' as _i13;
import '../../../groups/exclusive/presentation/exclusive_filter_page.dart'
    as _i24;
import '../../../groups/exclusive/presentation/exclusive_products_page.dart'
    as _i23;
import '../../../groups/installments/presentation/installments_page.dart'
    as _i14;
import '../../../groups/search/presentation/search_filter_page.dart' as _i17;
import '../../../groups/search/presentation/search_page.dart' as _i16;
import '../../../groups/sections/presentation/section_filter_page.dart' as _i26;
import '../../../groups/sections/presentation/section_products_page.dart'
    as _i25;
import '../../../groups/sport_types/presentation/sport_type_products_page.dart'
    as _i21;
import '../../../groups/sport_types/presentation/sport_types_filter_page.dart'
    as _i22;
import '../../../profile/branches/domain/branch_model.dart' as _i53;
import '../../../profile/branches/presentation/branches_page.dart' as _i41;
import '../../../profile/branches/presentation/single_branch_page.dart' as _i42;
import '../../../profile/core/presentation/about_app_page.dart' as _i43;
import '../../../profile/core/presentation/feedback_page.dart' as _i40;
import '../../../profile/core/presentation/logged_in_profile_page.dart' as _i36;
import '../../../profile/core/presentation/my_discount_page.dart' as _i38;
import '../../../profile/core/presentation/personal_data_page.dart' as _i39;
import '../../../profile/core/presentation/profile_page.dart' as _i34;
import '../../../profile/core/presentation/public_offer_page.dart' as _i44;
import '../../../profile/orders/presentation/my_orders_page.dart' as _i37;
import '../../../splash/presentation/splash_page.dart' as _i1;
import '../../domain/image_model.dart' as _i46;
import '../../domain/product_model.dart' as _i49;
import '../home/home_page.dart' as _i2;
import '../product/product_images_gallery_view.dart' as _i8;
import '../product/single_product_page.dart' as _i27;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i45.GlobalKey<_i45.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: _i1.SplashPage(),
          transitionsBuilder: _i9.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    HomeRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.HomePage(),
          transitionsBuilder: _i9.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    CartRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i3.CartPage());
    },
    DeliveryTypeRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i4.DeliveryTypePage());
    },
    ContactsRoute.name: (routeData) {
      final args = routeData.argsAs<ContactsRouteArgs>();
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i5.ContactsPage(key: args.key, isDelivery: args.isDelivery));
    },
    CheckoutRoute.name: (routeData) {
      final args = routeData.argsAs<CheckoutRouteArgs>(
          orElse: () => const CheckoutRouteArgs());
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i6.CheckoutPage(key: args.key, isDelivery: args.isDelivery));
    },
    OrderSuccessRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i7.OrderSuccessPage());
    },
    ProductImagesGalleryRoute.name: (routeData) {
      final args = routeData.argsAs<ProductImagesGalleryRouteArgs>();
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: _i8.ProductImagesGalleryPage(
              key: args.key,
              imageList: args.imageList,
              pageController: args.pageController,
              customImageUrl: args.customImageUrl,
              onPageChanged: args.onPageChanged,
              cdn: args.cdn,
              imageUrl: args.imageUrl,
              isProductImage: args.isProductImage),
          transitionsBuilder: _i9.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    GroupsRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i9.EmptyRouterPage());
    },
    CatalogRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i9.EmptyRouterPage());
    },
    BaseFavoriteRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i9.EmptyRouterPage());
    },
    BaseComparisonRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i9.EmptyRouterPage());
    },
    BaseProfileRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i9.EmptyRouterPage());
    },
    BaseGroupsRoute.name: (routeData) {
      final args = routeData.argsAs<BaseGroupsRouteArgs>();
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i10.BaseGroupsPage(key: args.key, groups: args.groups));
    },
    ActionsRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i11.ActionsPage());
    },
    ActionProductsRoute.name: (routeData) {
      final args = routeData.argsAs<ActionProductsRouteArgs>();
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i12.ActionProductsPage(key: args.key, action: args.action));
    },
    DiscountsRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i13.DiscountsPage());
    },
    InstallmentsRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i14.InstallmentsPage());
    },
    UniversalProductsGridRoute.name: (routeData) {
      final args = routeData.argsAs<UniversalProductsGridRouteArgs>();
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i15.UniversalProductsGridPage(
              key: args.key, title: args.title, products: args.products));
    },
    SearchRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i16.SearchPage());
    },
    SearchFilterRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i17.SearchFilterPage());
    },
    BrandsRoute.name: (routeData) {
      final args = routeData.argsAs<BrandsRouteArgs>();
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i18.BrandsPage(
              key: args.key, brands: args.brands, cdnUrl: args.cdnUrl));
    },
    BrandProductsRoute.name: (routeData) {
      final args = routeData.argsAs<BrandProductsRouteArgs>();
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i19.BrandProductsPage(
              key: args.key, brand: args.brand, brandId: args.brandId));
    },
    BrandFilterRoute.name: (routeData) {
      final args = routeData.argsAs<BrandFilterRouteArgs>();
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i20.BrandFilterPage(key: args.key, brandId: args.brandId));
    },
    SportTypesProductsRoute.name: (routeData) {
      final args = routeData.argsAs<SportTypesProductsRouteArgs>();
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i21.SportTypesProductsPage(
              key: args.key, typeName: args.typeName));
    },
    SportTypesFilterRoute.name: (routeData) {
      final args = routeData.argsAs<SportTypesFilterRouteArgs>();
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i22.SportTypesFilterPage(
              key: args.key, typeName: args.typeName));
    },
    ExclusiveProductsRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i23.ExclusiveProductsPage());
    },
    ExclusiveFilterRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i24.ExclusiveFilterPage());
    },
    SectionProductsRoute.name: (routeData) {
      final args = routeData.argsAs<SectionProductsRouteArgs>();
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData,
          child:
              _i25.SectionProductsPage(key: args.key, section: args.section));
    },
    SectionFilterRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i26.SectionFilterPage());
    },
    SingleProductRoute.name: (routeData) {
      final args = routeData.argsAs<SingleProductRouteArgs>();
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i27.SingleProductPage(
              article: args.article, imageUrl: args.imageUrl));
    },
    BaseCatalogRoute.name: (routeData) {
      final args = routeData.argsAs<BaseCatalogRouteArgs>();
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData,
          child:
              _i28.BaseCatalogPage(key: args.key, parentCats: args.parentCats));
    },
    SubCatalogRoute.name: (routeData) {
      final args = routeData.argsAs<SubCatalogRouteArgs>();
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i29.SubCatalogPage(
              key: args.key,
              categoryId: args.categoryId,
              category: args.category));
    },
    CatalogProductsRoute.name: (routeData) {
      final args = routeData.argsAs<CatalogProductsRouteArgs>();
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i30.CatalogProductsPage(
              key: args.key,
              categoryName: args.categoryName,
              categoryId: args.categoryId));
    },
    CatalogFilterRoute.name: (routeData) {
      final args = routeData.argsAs<CatalogFilterRouteArgs>();
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i31.CatalogFilterPage(
              key: args.key, categoryId: args.categoryId));
    },
    FavoritesRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i32.FavoritesPage());
    },
    ComparisonRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i33.ComparisonPage());
    },
    ProfileRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i34.ProfilePage());
    },
    SignInRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i35.SignInPage());
    },
    LoggedInProfileRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i36.LoggedInProfilePage());
    },
    MyOrdersRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i37.MyOrdersPage());
    },
    MyDiscountRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i38.MyDiscountPage());
    },
    PersonalDataRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i39.PersonalDataPage());
    },
    FeedbackRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i40.FeedbackPage());
    },
    BranchesRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i41.BranchesPage());
    },
    SingleBranchRoute.name: (routeData) {
      final args = routeData.argsAs<SingleBranchRouteArgs>();
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i42.SingleBranchPage(
              key: args.key, branch: args.branch, branchId: args.branchId));
    },
    AboutAppRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i43.AboutAppPage());
    },
    PublicOfferRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i44.PublicOfferPage());
    }
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig('/#redirect',
            path: '/', redirectTo: '/splash', fullMatch: true),
        _i9.RouteConfig(SplashRoute.name, path: '/splash'),
        _i9.RouteConfig(HomeRoute.name, path: '/home', children: [
          _i9.RouteConfig(GroupsRoute.name,
              path: 'groups',
              parent: HomeRoute.name,
              children: [
                _i9.RouteConfig(BaseGroupsRoute.name,
                    path: '', parent: GroupsRoute.name),
                _i9.RouteConfig(ActionsRoute.name,
                    path: 'actions', parent: GroupsRoute.name),
                _i9.RouteConfig(ActionProductsRoute.name,
                    path: 'action-products', parent: GroupsRoute.name),
                _i9.RouteConfig(DiscountsRoute.name,
                    path: 'discounts', parent: GroupsRoute.name),
                _i9.RouteConfig(InstallmentsRoute.name,
                    path: 'installments', parent: GroupsRoute.name),
                _i9.RouteConfig(UniversalProductsGridRoute.name,
                    path: 'universal-products', parent: GroupsRoute.name),
                _i9.RouteConfig(SearchRoute.name,
                    path: 'search', parent: GroupsRoute.name),
                _i9.RouteConfig(SearchFilterRoute.name,
                    path: 'searchFilter', parent: GroupsRoute.name),
                _i9.RouteConfig(BrandsRoute.name,
                    path: 'brands', parent: GroupsRoute.name),
                _i9.RouteConfig(BrandProductsRoute.name,
                    path: 'brand-product/:id', parent: GroupsRoute.name),
                _i9.RouteConfig(BrandFilterRoute.name,
                    path: 'brand-filter', parent: GroupsRoute.name),
                _i9.RouteConfig(SportTypesProductsRoute.name,
                    path: 'sport-product/:id', parent: GroupsRoute.name),
                _i9.RouteConfig(SportTypesFilterRoute.name,
                    path: 'sport-filter', parent: GroupsRoute.name),
                _i9.RouteConfig(ExclusiveProductsRoute.name,
                    path: 'exclusive-products', parent: GroupsRoute.name),
                _i9.RouteConfig(ExclusiveFilterRoute.name,
                    path: 'exclusive-filter', parent: GroupsRoute.name),
                _i9.RouteConfig(SectionProductsRoute.name,
                    path: 'section-products', parent: GroupsRoute.name),
                _i9.RouteConfig(SectionFilterRoute.name,
                    path: 'section-filter', parent: GroupsRoute.name),
                _i9.RouteConfig(SingleProductRoute.name,
                    path: 'product/:id', parent: GroupsRoute.name)
              ]),
          _i9.RouteConfig(CatalogRoute.name,
              path: 'catalog',
              parent: HomeRoute.name,
              children: [
                _i9.RouteConfig(BaseCatalogRoute.name,
                    path: '', parent: CatalogRoute.name),
                _i9.RouteConfig(SubCatalogRoute.name,
                    path: 'sub-catalog', parent: CatalogRoute.name),
                _i9.RouteConfig(CatalogProductsRoute.name,
                    path: 'catalog-products', parent: CatalogRoute.name),
                _i9.RouteConfig(SearchRoute.name,
                    path: 'search', parent: CatalogRoute.name),
                _i9.RouteConfig(CatalogFilterRoute.name,
                    path: 'catalog-filter', parent: CatalogRoute.name),
                _i9.RouteConfig(SearchFilterRoute.name,
                    path: 'searchFilter', parent: CatalogRoute.name),
                _i9.RouteConfig(SingleProductRoute.name,
                    path: 'product/:id', parent: CatalogRoute.name)
              ]),
          _i9.RouteConfig(BaseFavoriteRoute.name,
              path: 'favorite',
              parent: HomeRoute.name,
              children: [
                _i9.RouteConfig(FavoritesRoute.name,
                    path: '', parent: BaseFavoriteRoute.name),
                _i9.RouteConfig(SingleProductRoute.name,
                    path: 'product/:id', parent: BaseFavoriteRoute.name)
              ]),
          _i9.RouteConfig(BaseComparisonRoute.name,
              path: 'comparison',
              parent: HomeRoute.name,
              children: [
                _i9.RouteConfig(ComparisonRoute.name,
                    path: '', parent: BaseComparisonRoute.name),
                _i9.RouteConfig(SearchRoute.name,
                    path: 'search', parent: BaseComparisonRoute.name),
                _i9.RouteConfig(SearchFilterRoute.name,
                    path: 'searchFilter', parent: BaseComparisonRoute.name),
                _i9.RouteConfig(SingleProductRoute.name,
                    path: 'product/:id', parent: BaseComparisonRoute.name)
              ]),
          _i9.RouteConfig(BaseProfileRoute.name,
              path: 'baseProfile',
              parent: HomeRoute.name,
              children: [
                _i9.RouteConfig(ProfileRoute.name,
                    path: '', parent: BaseProfileRoute.name),
                _i9.RouteConfig(SignInRoute.name,
                    path: 'signIn', parent: BaseProfileRoute.name),
                _i9.RouteConfig(LoggedInProfileRoute.name,
                    path: 'loggedProfile', parent: BaseProfileRoute.name),
                _i9.RouteConfig(MyOrdersRoute.name,
                    path: 'myOrders', parent: BaseProfileRoute.name),
                _i9.RouteConfig(MyDiscountRoute.name,
                    path: 'myDiscount', parent: BaseProfileRoute.name),
                _i9.RouteConfig(PersonalDataRoute.name,
                    path: 'personalData', parent: BaseProfileRoute.name),
                _i9.RouteConfig(FeedbackRoute.name,
                    path: 'feedback', parent: BaseProfileRoute.name),
                _i9.RouteConfig(BranchesRoute.name,
                    path: 'branches', parent: BaseProfileRoute.name),
                _i9.RouteConfig(SingleBranchRoute.name,
                    path: 'branch/:id', parent: BaseProfileRoute.name),
                _i9.RouteConfig(AboutAppRoute.name,
                    path: 'aboutApp', parent: BaseProfileRoute.name),
                _i9.RouteConfig(PublicOfferRoute.name,
                    path: 'publicOffer', parent: BaseProfileRoute.name)
              ])
        ]),
        _i9.RouteConfig(CartRoute.name, path: 'cart'),
        _i9.RouteConfig(DeliveryTypeRoute.name, path: 'deliveryType'),
        _i9.RouteConfig(ContactsRoute.name, path: 'checkoutContacts'),
        _i9.RouteConfig(ContactsRoute.name, path: 'checkoutContacts'),
        _i9.RouteConfig(CheckoutRoute.name, path: 'checkout'),
        _i9.RouteConfig(OrderSuccessRoute.name, path: 'orderSuccess'),
        _i9.RouteConfig(ProductImagesGalleryRoute.name,
            path: 'imagesGalleryView')
      ];
}

/// generated route for [_i1.SplashPage]
class SplashRoute extends _i9.PageRouteInfo<void> {
  const SplashRoute() : super(name, path: '/splash');

  static const String name = 'SplashRoute';
}

/// generated route for [_i2.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute({List<_i9.PageRouteInfo>? children})
      : super(name, path: '/home', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for [_i3.CartPage]
class CartRoute extends _i9.PageRouteInfo<void> {
  const CartRoute() : super(name, path: 'cart');

  static const String name = 'CartRoute';
}

/// generated route for [_i4.DeliveryTypePage]
class DeliveryTypeRoute extends _i9.PageRouteInfo<void> {
  const DeliveryTypeRoute() : super(name, path: 'deliveryType');

  static const String name = 'DeliveryTypeRoute';
}

/// generated route for [_i5.ContactsPage]
class ContactsRoute extends _i9.PageRouteInfo<ContactsRouteArgs> {
  ContactsRoute({_i45.Key? key, required bool isDelivery})
      : super(name,
            path: 'checkoutContacts',
            args: ContactsRouteArgs(key: key, isDelivery: isDelivery));

  static const String name = 'ContactsRoute';
}

class ContactsRouteArgs {
  const ContactsRouteArgs({this.key, required this.isDelivery});

  final _i45.Key? key;

  final bool isDelivery;

  @override
  String toString() {
    return 'ContactsRouteArgs{key: $key, isDelivery: $isDelivery}';
  }
}

/// generated route for [_i6.CheckoutPage]
class CheckoutRoute extends _i9.PageRouteInfo<CheckoutRouteArgs> {
  CheckoutRoute({_i45.Key? key, bool isDelivery = true})
      : super(name,
            path: 'checkout',
            args: CheckoutRouteArgs(key: key, isDelivery: isDelivery));

  static const String name = 'CheckoutRoute';
}

class CheckoutRouteArgs {
  const CheckoutRouteArgs({this.key, this.isDelivery = true});

  final _i45.Key? key;

  final bool isDelivery;

  @override
  String toString() {
    return 'CheckoutRouteArgs{key: $key, isDelivery: $isDelivery}';
  }
}

/// generated route for [_i7.OrderSuccessPage]
class OrderSuccessRoute extends _i9.PageRouteInfo<void> {
  const OrderSuccessRoute() : super(name, path: 'orderSuccess');

  static const String name = 'OrderSuccessRoute';
}

/// generated route for [_i8.ProductImagesGalleryPage]
class ProductImagesGalleryRoute
    extends _i9.PageRouteInfo<ProductImagesGalleryRouteArgs> {
  ProductImagesGalleryRoute(
      {_i45.Key? key,
      required List<_i46.ImageModel> imageList,
      _i45.PageController? pageController,
      String? customImageUrl,
      required dynamic Function(int) onPageChanged,
      required String cdn,
      required String imageUrl,
      bool isProductImage = true})
      : super(name,
            path: 'imagesGalleryView',
            args: ProductImagesGalleryRouteArgs(
                key: key,
                imageList: imageList,
                pageController: pageController,
                customImageUrl: customImageUrl,
                onPageChanged: onPageChanged,
                cdn: cdn,
                imageUrl: imageUrl,
                isProductImage: isProductImage));

  static const String name = 'ProductImagesGalleryRoute';
}

class ProductImagesGalleryRouteArgs {
  const ProductImagesGalleryRouteArgs(
      {this.key,
      required this.imageList,
      this.pageController,
      this.customImageUrl,
      required this.onPageChanged,
      required this.cdn,
      required this.imageUrl,
      this.isProductImage = true});

  final _i45.Key? key;

  final List<_i46.ImageModel> imageList;

  final _i45.PageController? pageController;

  final String? customImageUrl;

  final dynamic Function(int) onPageChanged;

  final String cdn;

  final String imageUrl;

  final bool isProductImage;

  @override
  String toString() {
    return 'ProductImagesGalleryRouteArgs{key: $key, imageList: $imageList, pageController: $pageController, customImageUrl: $customImageUrl, onPageChanged: $onPageChanged, cdn: $cdn, imageUrl: $imageUrl, isProductImage: $isProductImage}';
  }
}

/// generated route for [_i9.EmptyRouterPage]
class GroupsRoute extends _i9.PageRouteInfo<void> {
  const GroupsRoute({List<_i9.PageRouteInfo>? children})
      : super(name, path: 'groups', initialChildren: children);

  static const String name = 'GroupsRoute';
}

/// generated route for [_i9.EmptyRouterPage]
class CatalogRoute extends _i9.PageRouteInfo<void> {
  const CatalogRoute({List<_i9.PageRouteInfo>? children})
      : super(name, path: 'catalog', initialChildren: children);

  static const String name = 'CatalogRoute';
}

/// generated route for [_i9.EmptyRouterPage]
class BaseFavoriteRoute extends _i9.PageRouteInfo<void> {
  const BaseFavoriteRoute({List<_i9.PageRouteInfo>? children})
      : super(name, path: 'favorite', initialChildren: children);

  static const String name = 'BaseFavoriteRoute';
}

/// generated route for [_i9.EmptyRouterPage]
class BaseComparisonRoute extends _i9.PageRouteInfo<void> {
  const BaseComparisonRoute({List<_i9.PageRouteInfo>? children})
      : super(name, path: 'comparison', initialChildren: children);

  static const String name = 'BaseComparisonRoute';
}

/// generated route for [_i9.EmptyRouterPage]
class BaseProfileRoute extends _i9.PageRouteInfo<void> {
  const BaseProfileRoute({List<_i9.PageRouteInfo>? children})
      : super(name, path: 'baseProfile', initialChildren: children);

  static const String name = 'BaseProfileRoute';
}

/// generated route for [_i10.BaseGroupsPage]
class BaseGroupsRoute extends _i9.PageRouteInfo<BaseGroupsRouteArgs> {
  BaseGroupsRoute({_i45.Key? key, required _i47.BaseGroups groups})
      : super(name,
            path: '', args: BaseGroupsRouteArgs(key: key, groups: groups));

  static const String name = 'BaseGroupsRoute';
}

class BaseGroupsRouteArgs {
  const BaseGroupsRouteArgs({this.key, required this.groups});

  final _i45.Key? key;

  final _i47.BaseGroups groups;

  @override
  String toString() {
    return 'BaseGroupsRouteArgs{key: $key, groups: $groups}';
  }
}

/// generated route for [_i11.ActionsPage]
class ActionsRoute extends _i9.PageRouteInfo<void> {
  const ActionsRoute() : super(name, path: 'actions');

  static const String name = 'ActionsRoute';
}

/// generated route for [_i12.ActionProductsPage]
class ActionProductsRoute extends _i9.PageRouteInfo<ActionProductsRouteArgs> {
  ActionProductsRoute({_i45.Key? key, required _i48.ActionModel action})
      : super(name,
            path: 'action-products',
            args: ActionProductsRouteArgs(key: key, action: action));

  static const String name = 'ActionProductsRoute';
}

class ActionProductsRouteArgs {
  const ActionProductsRouteArgs({this.key, required this.action});

  final _i45.Key? key;

  final _i48.ActionModel action;

  @override
  String toString() {
    return 'ActionProductsRouteArgs{key: $key, action: $action}';
  }
}

/// generated route for [_i13.DiscountsPage]
class DiscountsRoute extends _i9.PageRouteInfo<void> {
  const DiscountsRoute() : super(name, path: 'discounts');

  static const String name = 'DiscountsRoute';
}

/// generated route for [_i14.InstallmentsPage]
class InstallmentsRoute extends _i9.PageRouteInfo<void> {
  const InstallmentsRoute() : super(name, path: 'installments');

  static const String name = 'InstallmentsRoute';
}

/// generated route for [_i15.UniversalProductsGridPage]
class UniversalProductsGridRoute
    extends _i9.PageRouteInfo<UniversalProductsGridRouteArgs> {
  UniversalProductsGridRoute(
      {_i45.Key? key,
      required String title,
      required List<_i49.ProductModel> products})
      : super(name,
            path: 'universal-products',
            args: UniversalProductsGridRouteArgs(
                key: key, title: title, products: products));

  static const String name = 'UniversalProductsGridRoute';
}

class UniversalProductsGridRouteArgs {
  const UniversalProductsGridRouteArgs(
      {this.key, required this.title, required this.products});

  final _i45.Key? key;

  final String title;

  final List<_i49.ProductModel> products;

  @override
  String toString() {
    return 'UniversalProductsGridRouteArgs{key: $key, title: $title, products: $products}';
  }
}

/// generated route for [_i16.SearchPage]
class SearchRoute extends _i9.PageRouteInfo<void> {
  const SearchRoute() : super(name, path: 'search');

  static const String name = 'SearchRoute';
}

/// generated route for [_i17.SearchFilterPage]
class SearchFilterRoute extends _i9.PageRouteInfo<void> {
  const SearchFilterRoute() : super(name, path: 'searchFilter');

  static const String name = 'SearchFilterRoute';
}

/// generated route for [_i18.BrandsPage]
class BrandsRoute extends _i9.PageRouteInfo<BrandsRouteArgs> {
  BrandsRoute(
      {_i45.Key? key,
      required List<_i50.BrandModel> brands,
      required String cdnUrl})
      : super(name,
            path: 'brands',
            args: BrandsRouteArgs(key: key, brands: brands, cdnUrl: cdnUrl));

  static const String name = 'BrandsRoute';
}

class BrandsRouteArgs {
  const BrandsRouteArgs({this.key, required this.brands, required this.cdnUrl});

  final _i45.Key? key;

  final List<_i50.BrandModel> brands;

  final String cdnUrl;

  @override
  String toString() {
    return 'BrandsRouteArgs{key: $key, brands: $brands, cdnUrl: $cdnUrl}';
  }
}

/// generated route for [_i19.BrandProductsPage]
class BrandProductsRoute extends _i9.PageRouteInfo<BrandProductsRouteArgs> {
  BrandProductsRoute(
      {_i45.Key? key, required _i50.BrandModel brand, required String brandId})
      : super(name,
            path: 'brand-product/:id',
            args: BrandProductsRouteArgs(
                key: key, brand: brand, brandId: brandId));

  static const String name = 'BrandProductsRoute';
}

class BrandProductsRouteArgs {
  const BrandProductsRouteArgs(
      {this.key, required this.brand, required this.brandId});

  final _i45.Key? key;

  final _i50.BrandModel brand;

  final String brandId;

  @override
  String toString() {
    return 'BrandProductsRouteArgs{key: $key, brand: $brand, brandId: $brandId}';
  }
}

/// generated route for [_i20.BrandFilterPage]
class BrandFilterRoute extends _i9.PageRouteInfo<BrandFilterRouteArgs> {
  BrandFilterRoute({_i45.Key? key, required String brandId})
      : super(name,
            path: 'brand-filter',
            args: BrandFilterRouteArgs(key: key, brandId: brandId));

  static const String name = 'BrandFilterRoute';
}

class BrandFilterRouteArgs {
  const BrandFilterRouteArgs({this.key, required this.brandId});

  final _i45.Key? key;

  final String brandId;

  @override
  String toString() {
    return 'BrandFilterRouteArgs{key: $key, brandId: $brandId}';
  }
}

/// generated route for [_i21.SportTypesProductsPage]
class SportTypesProductsRoute
    extends _i9.PageRouteInfo<SportTypesProductsRouteArgs> {
  SportTypesProductsRoute({_i45.Key? key, required String typeName})
      : super(name,
            path: 'sport-product/:id',
            args: SportTypesProductsRouteArgs(key: key, typeName: typeName));

  static const String name = 'SportTypesProductsRoute';
}

class SportTypesProductsRouteArgs {
  const SportTypesProductsRouteArgs({this.key, required this.typeName});

  final _i45.Key? key;

  final String typeName;

  @override
  String toString() {
    return 'SportTypesProductsRouteArgs{key: $key, typeName: $typeName}';
  }
}

/// generated route for [_i22.SportTypesFilterPage]
class SportTypesFilterRoute
    extends _i9.PageRouteInfo<SportTypesFilterRouteArgs> {
  SportTypesFilterRoute({_i45.Key? key, required String typeName})
      : super(name,
            path: 'sport-filter',
            args: SportTypesFilterRouteArgs(key: key, typeName: typeName));

  static const String name = 'SportTypesFilterRoute';
}

class SportTypesFilterRouteArgs {
  const SportTypesFilterRouteArgs({this.key, required this.typeName});

  final _i45.Key? key;

  final String typeName;

  @override
  String toString() {
    return 'SportTypesFilterRouteArgs{key: $key, typeName: $typeName}';
  }
}

/// generated route for [_i23.ExclusiveProductsPage]
class ExclusiveProductsRoute extends _i9.PageRouteInfo<void> {
  const ExclusiveProductsRoute() : super(name, path: 'exclusive-products');

  static const String name = 'ExclusiveProductsRoute';
}

/// generated route for [_i24.ExclusiveFilterPage]
class ExclusiveFilterRoute extends _i9.PageRouteInfo<void> {
  const ExclusiveFilterRoute() : super(name, path: 'exclusive-filter');

  static const String name = 'ExclusiveFilterRoute';
}

/// generated route for [_i25.SectionProductsPage]
class SectionProductsRoute extends _i9.PageRouteInfo<SectionProductsRouteArgs> {
  SectionProductsRoute({_i45.Key? key, required _i51.SectionModel section})
      : super(name,
            path: 'section-products',
            args: SectionProductsRouteArgs(key: key, section: section));

  static const String name = 'SectionProductsRoute';
}

class SectionProductsRouteArgs {
  const SectionProductsRouteArgs({this.key, required this.section});

  final _i45.Key? key;

  final _i51.SectionModel section;

  @override
  String toString() {
    return 'SectionProductsRouteArgs{key: $key, section: $section}';
  }
}

/// generated route for [_i26.SectionFilterPage]
class SectionFilterRoute extends _i9.PageRouteInfo<void> {
  const SectionFilterRoute() : super(name, path: 'section-filter');

  static const String name = 'SectionFilterRoute';
}

/// generated route for [_i27.SingleProductPage]
class SingleProductRoute extends _i9.PageRouteInfo<SingleProductRouteArgs> {
  SingleProductRoute({required String article, required String imageUrl})
      : super(name,
            path: 'product/:id',
            args: SingleProductRouteArgs(article: article, imageUrl: imageUrl));

  static const String name = 'SingleProductRoute';
}

class SingleProductRouteArgs {
  const SingleProductRouteArgs({required this.article, required this.imageUrl});

  final String article;

  final String imageUrl;

  @override
  String toString() {
    return 'SingleProductRouteArgs{article: $article, imageUrl: $imageUrl}';
  }
}

/// generated route for [_i28.BaseCatalogPage]
class BaseCatalogRoute extends _i9.PageRouteInfo<BaseCatalogRouteArgs> {
  BaseCatalogRoute(
      {_i45.Key? key, required List<_i52.CategoryModel> parentCats})
      : super(name,
            path: '',
            args: BaseCatalogRouteArgs(key: key, parentCats: parentCats));

  static const String name = 'BaseCatalogRoute';
}

class BaseCatalogRouteArgs {
  const BaseCatalogRouteArgs({this.key, required this.parentCats});

  final _i45.Key? key;

  final List<_i52.CategoryModel> parentCats;

  @override
  String toString() {
    return 'BaseCatalogRouteArgs{key: $key, parentCats: $parentCats}';
  }
}

/// generated route for [_i29.SubCatalogPage]
class SubCatalogRoute extends _i9.PageRouteInfo<SubCatalogRouteArgs> {
  SubCatalogRoute(
      {_i45.Key? key,
      required String categoryId,
      required _i52.CategoryModel category})
      : super(name,
            path: 'sub-catalog',
            args: SubCatalogRouteArgs(
                key: key, categoryId: categoryId, category: category),
            rawPathParams: {'categoryId': categoryId});

  static const String name = 'SubCatalogRoute';
}

class SubCatalogRouteArgs {
  const SubCatalogRouteArgs(
      {this.key, required this.categoryId, required this.category});

  final _i45.Key? key;

  final String categoryId;

  final _i52.CategoryModel category;

  @override
  String toString() {
    return 'SubCatalogRouteArgs{key: $key, categoryId: $categoryId, category: $category}';
  }
}

/// generated route for [_i30.CatalogProductsPage]
class CatalogProductsRoute extends _i9.PageRouteInfo<CatalogProductsRouteArgs> {
  CatalogProductsRoute(
      {_i45.Key? key, required String categoryName, required String categoryId})
      : super(name,
            path: 'catalog-products',
            args: CatalogProductsRouteArgs(
                key: key, categoryName: categoryName, categoryId: categoryId));

  static const String name = 'CatalogProductsRoute';
}

class CatalogProductsRouteArgs {
  const CatalogProductsRouteArgs(
      {this.key, required this.categoryName, required this.categoryId});

  final _i45.Key? key;

  final String categoryName;

  final String categoryId;

  @override
  String toString() {
    return 'CatalogProductsRouteArgs{key: $key, categoryName: $categoryName, categoryId: $categoryId}';
  }
}

/// generated route for [_i31.CatalogFilterPage]
class CatalogFilterRoute extends _i9.PageRouteInfo<CatalogFilterRouteArgs> {
  CatalogFilterRoute({_i45.Key? key, required String categoryId})
      : super(name,
            path: 'catalog-filter',
            args: CatalogFilterRouteArgs(key: key, categoryId: categoryId));

  static const String name = 'CatalogFilterRoute';
}

class CatalogFilterRouteArgs {
  const CatalogFilterRouteArgs({this.key, required this.categoryId});

  final _i45.Key? key;

  final String categoryId;

  @override
  String toString() {
    return 'CatalogFilterRouteArgs{key: $key, categoryId: $categoryId}';
  }
}

/// generated route for [_i32.FavoritesPage]
class FavoritesRoute extends _i9.PageRouteInfo<void> {
  const FavoritesRoute() : super(name, path: '');

  static const String name = 'FavoritesRoute';
}

/// generated route for [_i33.ComparisonPage]
class ComparisonRoute extends _i9.PageRouteInfo<void> {
  const ComparisonRoute() : super(name, path: '');

  static const String name = 'ComparisonRoute';
}

/// generated route for [_i34.ProfilePage]
class ProfileRoute extends _i9.PageRouteInfo<void> {
  const ProfileRoute() : super(name, path: '');

  static const String name = 'ProfileRoute';
}

/// generated route for [_i35.SignInPage]
class SignInRoute extends _i9.PageRouteInfo<void> {
  const SignInRoute() : super(name, path: 'signIn');

  static const String name = 'SignInRoute';
}

/// generated route for [_i36.LoggedInProfilePage]
class LoggedInProfileRoute extends _i9.PageRouteInfo<void> {
  const LoggedInProfileRoute() : super(name, path: 'loggedProfile');

  static const String name = 'LoggedInProfileRoute';
}

/// generated route for [_i37.MyOrdersPage]
class MyOrdersRoute extends _i9.PageRouteInfo<void> {
  const MyOrdersRoute() : super(name, path: 'myOrders');

  static const String name = 'MyOrdersRoute';
}

/// generated route for [_i38.MyDiscountPage]
class MyDiscountRoute extends _i9.PageRouteInfo<void> {
  const MyDiscountRoute() : super(name, path: 'myDiscount');

  static const String name = 'MyDiscountRoute';
}

/// generated route for [_i39.PersonalDataPage]
class PersonalDataRoute extends _i9.PageRouteInfo<void> {
  const PersonalDataRoute() : super(name, path: 'personalData');

  static const String name = 'PersonalDataRoute';
}

/// generated route for [_i40.FeedbackPage]
class FeedbackRoute extends _i9.PageRouteInfo<void> {
  const FeedbackRoute() : super(name, path: 'feedback');

  static const String name = 'FeedbackRoute';
}

/// generated route for [_i41.BranchesPage]
class BranchesRoute extends _i9.PageRouteInfo<void> {
  const BranchesRoute() : super(name, path: 'branches');

  static const String name = 'BranchesRoute';
}

/// generated route for [_i42.SingleBranchPage]
class SingleBranchRoute extends _i9.PageRouteInfo<SingleBranchRouteArgs> {
  SingleBranchRoute(
      {_i45.Key? key,
      required _i53.BranchModel branch,
      required String branchId})
      : super(name,
            path: 'branch/:id',
            args: SingleBranchRouteArgs(
                key: key, branch: branch, branchId: branchId),
            rawPathParams: {'branchId': branchId});

  static const String name = 'SingleBranchRoute';
}

class SingleBranchRouteArgs {
  const SingleBranchRouteArgs(
      {this.key, required this.branch, required this.branchId});

  final _i45.Key? key;

  final _i53.BranchModel branch;

  final String branchId;

  @override
  String toString() {
    return 'SingleBranchRouteArgs{key: $key, branch: $branch, branchId: $branchId}';
  }
}

/// generated route for [_i43.AboutAppPage]
class AboutAppRoute extends _i9.PageRouteInfo<void> {
  const AboutAppRoute() : super(name, path: 'aboutApp');

  static const String name = 'AboutAppRoute';
}

/// generated route for [_i44.PublicOfferPage]
class PublicOfferRoute extends _i9.PageRouteInfo<void> {
  const PublicOfferRoute() : super(name, path: 'publicOffer');

  static const String name = 'PublicOfferRoute';
}
