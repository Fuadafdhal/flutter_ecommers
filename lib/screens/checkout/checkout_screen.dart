import 'package:flutter/material.dart';

import '/widgets/widgets.dart';

class CheckoutScreen extends StatelessWidget {
  static const String routeName = '/checkout';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => CheckoutScreen(),
    );
  }

  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailControler = TextEditingController();
    final TextEditingController nameControler = TextEditingController();
    final TextEditingController addressControler = TextEditingController();
    final TextEditingController cityControler = TextEditingController();
    final TextEditingController countryControler = TextEditingController();
    final TextEditingController zipCodeControler = TextEditingController();
    return Scaffold(
      appBar: CustomAppBar(title: 'Checkout'),
      bottomNavigationBar: const CustomNavBar(screen: routeName),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'CUSTOMER INDFORMATION',
              style: Theme.of(context).textTheme.headline3,
            ),
            _buildTextFormField(context, emailControler, 'Email'),
            _buildTextFormField(context, nameControler, 'Full Name'),
            Text(
              'DELIVERY INDFORMATION',
              style: Theme.of(context).textTheme.headline3,
            ),
            _buildTextFormField(context, addressControler, 'Address'),
            _buildTextFormField(context, cityControler, 'City'),
            _buildTextFormField(context, countryControler, 'Country'),
            _buildTextFormField(context, zipCodeControler, 'Zip Code'),
            Text(
              'ORDER INDFORMATION',
              style: Theme.of(context).textTheme.headline3,
            ),
            OrderSummary(),
          ],
        ),
      ),
    );
  }

  Padding _buildTextFormField(
    BuildContext context,
    TextEditingController controller,
    String labelText,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          SizedBox(
            width: 75,
            child: Text(
              labelText,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          Expanded(
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: const EdgeInsets.only(left: 4),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
