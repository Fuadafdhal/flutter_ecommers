import 'package:equatable/equatable.dart';

import 'product_model.dart';

class Cart extends Equatable {
  final List<Product> products;

  const Cart({this.products = const <Product>[]});

  @override
  List<Object?> get props => [products];

  Map productQuntity(product) {
    var quntity = Map();

    products.forEach((product) {
      if (!quntity.containsKey(product)) {
        quntity[product] = 1;
      } else {
        quntity[product] += 1;
      }
    });
    return quntity;
  }

  double get subtotal =>
      products.fold(0, (total, current) => total + current.price);

  double deliveryFee(subtotal) {
    return subtotal >= 30.0 ? 0.0 : 10;
  }

  String freeDelivery(subtotal) {
    return subtotal >= 30
        ? 'You heve Free Delivery'
        : 'Add \$${(30.0 - subtotal).toStringAsFixed(2)} for FREE Delivery';
  }

  double total(subtotal) {
    return subtotal + deliveryFee(subtotal);
  }

  String get subtotalString => subtotal.toStringAsFixed(2);

  String get totalString => total(subtotal).toStringAsFixed(2);

  String get deliveryFeeString => deliveryFee(subtotal).toStringAsFixed(2);

  String get freeDeliveryString => freeDelivery(subtotal);
}
