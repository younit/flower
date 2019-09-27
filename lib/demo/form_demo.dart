import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form'),
      ),
      body: Theme(
        data: ThemeData( //  定制当前页面主题
          primaryColor: Colors.black
        ),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RegisterForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> { //  表单

  final registerFormKey = GlobalKey<FormState>();

  String username, password;

  bool autovalidate = false;

  void submitRegistorForm () {
    if (registerFormKey.currentState.validate()) { //  自动验证
      registerFormKey.currentState.save(); //  保存当前输入的数据
      
      debugPrint('username: $username');
      debugPrint('password: $password');
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text('Registor...'),
        )
      );
    } else {
      setState(() {
        autovalidate = true;
      });
    }
  }

  String validateUsername(value) {
    if (value.isEmpty) {
      return 'Username is required';
    }

    return null;
  }

  String validatePassword(value) {
    if (value.isEmpty) {
      return 'Password is required';
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.person),
              labelText: 'UserName',
              helperText: '',
            ),
            onSaved: (value) => {
              username = value
            },
            validator: validateUsername,
            autovalidate: autovalidate, //  自动验证
          ),
          TextFormField(
            obscureText: true,
            maxLength: 12,
            decoration: InputDecoration(
              icon: Icon(Icons.lock),
              labelText: 'password',
              helperText: '',
            ),
            onSaved: (value) => {
              password = value
            },
            validator: validatePassword,
            autovalidate: autovalidate,
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text(
                'Ragistor',
                style: TextStyle(
                  color:Colors.white
                ),
              ),
              elevation: 0.0,
              onPressed: submitRegistorForm,
            ),
          )
        ],
      ),
    );
  }
}

class TextFileDemo extends StatefulWidget { //  文本字段
  @override
  _TextFileDemoState createState() => _TextFileDemoState();
}

class _TextFileDemoState extends State<TextFileDemo> {

  final textEditingController = TextEditingController();

  @override
  void dispose() { //  用完销毁监听器
    textEditingController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // textEditingController.text = 'hi'; //  设置初始数据
    textEditingController.addListener(
      () {
        debugPrint('input: ${textEditingController.text}');
      }
    );
  }


  @override
  Widget build(BuildContext context) {
    return TextField( //  文本字段样式
      controller: textEditingController, // 使用 TextEditingController 监听文本字段变化
      onChanged: (value) { //  监视文本字段的值得变化
        debugPrint('input: $value');
      },
      onSubmitted: (value) {
        debugPrint('submit: $value');
      },
      decoration: InputDecoration(
        icon: Icon(Icons.person),
        labelText: 'User',
        hintText: 'Enter your userName',
      ),
    );
  }
}

class ThemeDemo extends StatelessWidget { //  主题
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor, //  设置主题颜色
    );
  }
}
