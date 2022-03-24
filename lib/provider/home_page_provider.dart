import 'package:flutter/cupertino.dart';
import 'package:flutter_provider/api/callApi.dart';

class HomePageProvider with ChangeNotifier {
  bool? isEligible;
  String? eligibilityMessage = "Hello Provider!";

  void checkEligibility(String ids) {
    switch (ids) {
      case "BTC":
        {
          isEligible = true;
          CallApi().getData("bitcoin");
          notifyListeners();
        }
        break;

      case "ETH":
        {
          isEligible = false;
          CallApi().getData("ethereum");
          notifyListeners();
        }
        break;

      case "BNB":
        {
          isEligible = true;
          CallApi().getData("binancecoin");
          notifyListeners();
        }
        break;

      case "SOL":
        {
          isEligible = true;
          CallApi().getData("solana");
          notifyListeners();
        }
        break;

      default:
        {
          print("Invalid choice");
        }
        break;
    }
  }
}
