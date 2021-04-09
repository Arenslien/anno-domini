import 'package:calendar/constants.dart';
import 'package:calendar/screens/authentication/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_core/firebase_core.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    Future<bool> onPressed() async {
      bool _result = false;
      // final id = await findId(_id);
      // final pw = await findPassword(_id);

      if (_id != "admin") {
        print("존재하지 않는 아이디입니다."); 
      } else if (_pw != "master") {
        print("비밀번호가 틀렸습니다.");
      } else {
        print("성공적으로 로그인 했습니다.");
        _result = true;
      }
      return _result;
    }

    FirebaseAuth auth = FirebaseAuth.instance;
    GoogleSignIn googleSignIn = GoogleSignIn();

    
    

    Future<GoogleSignInAccount> getGoogleAccount() {
      return googleSignIn.signIn();
    }
    GoogleSignInAccount account = await getGoogleAccount();
    Future<GoogleSignInAuthentication> getGoogleAuthentication() {
      return account.authentication;
    }
    GoogleSignInAuthentication authentication = await getGoogleAuthentication();
    // Future<String> findId(String id) {
    //   // 서버에서 id를 찾는 함수

    // }

    // Future<String> findPassword(String id) {
    //   // 입력한 id를 기반으로 password를 찾음
    // }
    String _id = "";
    String _pw = "";

    

    

    
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'LOGIN',
              style: TextStyle(fontWeight: FontWeight.bold, color: kPrimaryLightColor),
            ),
            Container(
              width: size.width * 0.8,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person, color: Colors.white),
                  hintText: "ID",
                  hintStyle: TextStyle(color: Colors.grey[200]),
                  border: InputBorder.none
                ),
                onChanged: (id) {
                  setState(() {
                    _id = id;
                  });
                },
              ),
            ),
            Container(
              width: size.width * 0.8,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              margin: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  icon: Icon(Icons.lock, color: Colors.white),
                  hintText: "비밀번호",
                  hintStyle: TextStyle(color: Colors.grey[200]),
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.visibility, color: Colors.grey[200],)
                ),
                onChanged: (pw) {
                  _pw = pw;
                },
              ),
            ),
            
            ElevatedButton(
              child: Text("로그인"),
              style: ElevatedButton.styleFrom(
                primary: kPrimaryColor,
                minimumSize: Size(size.width * 0.8, 50),
                shape: StadiumBorder()
              ),
              onPressed: onPressed,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("ID가 없으신가요?"),
                TextButton(
                  child: Text("회원가입"),
                  style: TextButton.styleFrom(primary: kPrimaryLightColor),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
                  },
                )
              ],
            ),
            Divider(
              height: 20, 
              indent: size.width * 0.1,
              endIndent: size.width * 0.1,
              thickness: 2,
              color: kPrimaryLightColor,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 1),
                    color: kPrimaryLightColor,
                  ),
                  height: 20,
                  width: 20,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 1),
                    color: Colors.green[300],
                  ),
                  height: 20,
                  width: 20,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 1),
                    color: Colors.green[300],
                  ),
                  height: 20,
                  width: 20,
                ),
              ],
            ),
          ],
        )
      ),
    );
  }
}