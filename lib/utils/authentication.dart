// import 'dart:convert';
// import 'dart:math';

// import 'package:flutter/cupertino.dart';

// class Authentication {
//   static Future<User?> signInWithGoogle() async {
//     FirebaseAuth auth = FirebaseAuth.instance;
//     User? user;

//     try {
//       final GoogleSignIn googleSignIn = GoogleSignIn();
//       final GoogleSignInAccount? googleSignInAccount =
//           await googleSignIn.signIn();

//       if (googleSignInAccount != null) {
//         final GoogleSignInAuthentication googleSignInAuthentication =
//             await googleSignInAccount.authentication;

//         final AuthCredential credential = GoogleAuthProvider.credential(
//           accessToken: googleSignInAuthentication.accessToken,
//           idToken: googleSignInAuthentication.idToken,
//         );

//         try {
//           final UserCredential userCredential =
//               await auth.signInWithCredential(credential);

//           user = userCredential.user;
//         } on FirebaseAuthException catch (e) {
//           if (e.code == 'account-exists-with-different-credential') {
//             showDialogInformationMyApp('$e');
//           } else if (e.code == 'invalid-credential') {
//             showDialogInformationMyApp('$e');
//           } else {
//             showDialogInformationMyApp('$e');
//           }
//         } catch (e) {
//           // showDialogInformationMyApp(
//           //     context, '$e');
//         }
//       }

//       if (user?.displayName != '') {}
//       googleSignInAccount?.clearAuthCache();
//     } catch (e) {
//       showDialogInformationMyApp('$e');
//     }

//     return user;
//   }

//   static Future<User?> signOut({required BuildContext context}) async {
//     final GoogleSignIn googleSignIn = GoogleSignIn();
//     try {
//       await googleSignIn.disconnect();
//     } catch (e) {
//       // handle the error here
//     }
//   }

//   static Future<User?> signInWithApple() async {
//     FirebaseAuth auth = FirebaseAuth.instance;
//     User? user;

//     String generateNonce([int length = 32]) {
//       const charset =
//           '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
//       final random = Random.secure();
//       return List.generate(
//           length, (_) => charset[random.nextInt(charset.length)]).join();
//     }

//     String sha256ofString(String input) {
//       final bytes = utf8.encode(input);
//       final digest = sha256.convert(bytes);
//       return digest.toString();
//     }

//     final rawNonce = generateNonce();
//     final nonce = sha256ofString(rawNonce);

//     try {
//       final appleCredential = await SignInWithApple.getAppleIDCredential(
//         scopes: [
//           AppleIDAuthorizationScopes.email,
//           AppleIDAuthorizationScopes.fullName,
//         ],
//         nonce: nonce,
//       );

//       final fixDisplayNameFromApple = [
//         appleCredential.givenName ?? '',
//         appleCredential.familyName ?? '',
//       ].join(' ').trim();

//       if (fixDisplayNameFromApple.toString() != '') {
//         // GetIt.I<AuthPrefRepository>().pinEntity.appleDisplayName =
//         //     fixDisplayNameFromApple.toString();
//       }

//       final oauthCredential = OAuthProvider("apple.com").credential(
//         idToken: appleCredential.identityToken,
//         rawNonce: rawNonce,
//       );

//       final authResult = await auth.signInWithCredential(oauthCredential);

//       user = authResult.user;
//     } catch (exception) {
//       showDialogInformationMyApp('$exception');
//     }
//     return user;
//   }
// }
