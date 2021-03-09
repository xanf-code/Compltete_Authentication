import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:my_app/Widget/auth.dart';

class FirebaseService {
  Future getUserData(context, name, email) async {
    await FirebaseFirestore.instance
        .collection("users")
        .doc(Provider.of(context).auth.getCurrentUserUID())
        .set({
      "name": name,
      "email": email,
      "uid": Provider.of(context).auth.getCurrentUserUID(),
    });
  }
}
