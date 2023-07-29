//card MM YY CVV surname firstname
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String cardNumber = '';
  String expiryDate = '';
  String cvv = '';

  bool isLoading =
      false; // Ödeme işlemi sırasında yükleniyor animasyonunu kontrol etmek için

  // Ödeme işlemi için tetikleyici metot
  void _performPayment() {
    setState(() {
      isLoading =
          true; // Ödeme işlemi başladığında yükleniyor animasyonunu başlat
    });

    // TODO: Ödeme işlemleri için gerekli API çağrıları ve işlemlerini burada gerçekleştir

    // Simüle edilen ödeme işleminin sonunda yükleniyor animasyonunu durdur
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
      });
      // TODO: Ödeme başarıyla tamamlandı, ilgili işlemleri burada yap
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:kGreyColor,
      appBar: AppBar(
        title: Text(
          'Payment',
          style: TextStyle(color: kBackgroundColor),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(195, 187, 187, 184),
        elevation: 0,
        iconTheme: IconThemeData(color: kBackgroundColor),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // TODO: Ödeme bilgilerinin girileceği formlar ve alanlar burada eklenecek
            // Örneğin: Kart numarası, son kullanma tarihi, CVV, vs.
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: TextField(
                decoration: InputDecoration(labelText: 'Card Number'),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    cardNumber = value;
                  });
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    width: 75,
                    child: TextField(
                      decoration: InputDecoration(labelText: 'MM'),
                      keyboardType: TextInputType.datetime,
                      onChanged: (value) {
                        setState(() {
                          expiryDate = value;
                        });
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    width: 75,
                    child: TextField(
                      decoration: InputDecoration(labelText: 'YY'),
                      keyboardType: TextInputType.datetime,
                      onChanged: (value) {
                        setState(() {
                          expiryDate = value;
                        });
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    width: 100,
                    child: TextField(
                      decoration: InputDecoration(labelText: 'CVV'),
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        setState(() {
                          cvv = value;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            
            SizedBox(height: 60,),
            if (isLoading)
              CircularProgressIndicator() // Yükleniyor animasyonunu göster
            else
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                          backgroundColor: kBackgroundColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          )
                        ),
                onPressed: _performPayment, // Ödeme işlemi tetikleyici metot
                child: Text('PAYMENT'),
              ),
          ],
        ),
      ),
    );
  }
}
