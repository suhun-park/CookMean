import 'package:cookmean/controller/mainpage_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../controller/index_controller.dart';
import '../login/kakao_model.dart';
import '../login/login.dart';
import '../login/social_login.dart';

class UserView extends GetView<Index> {
  const UserView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   final controller = Get.put(Index());
   final viewModel = KakaoModel(KakaoLogin());
    return
      SafeArea(child:
      Scaffold(
        body: Center(
          child:
          Form(
          child:Container(
          height: 1000,
          child: Column(
              children: [
                SizedBox(height: 30,),
                const Text("이름",style: TextStyle(fontSize: 20),),
                SizedBox(height: 10,),
                Container(
                  width: 200,
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                  child:
                TextFormField(
                  controller: controller.nameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "필수 입력해주세요!";
                    }
                    return null;
                  },
                    textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    counterText: '',
                    hintText: '박수훈',hintStyle: TextStyle(fontSize: 20,color: Colors.blue),
                    border: OutlineInputBorder(),
                  ),
                  maxLength: 10,
                  minLines: 1,
                  maxLines: 1,
                  onChanged: controller.name
                ),
                ),
                Text("닉네임",style: TextStyle(fontSize: 20),),
                SizedBox(height: 10,),
                Container(
                  width: 200,
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                  child:
                  TextFormField(
                      controller: controller.nicknameController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "필수 입력해주세요!";
                        }
                        return null;
                      },
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        counterText: '',
                        hintText: '박수훈',hintStyle: TextStyle(fontSize: 20,color: Colors.blue),
                        border: OutlineInputBorder(),
                      ),
                      maxLength: 10,
                      minLines: 1,
                      maxLines: 1,
                      onChanged: controller.nickname
                  ),
                ),
                SizedBox(height: 10,),
                Text("이메일",style: TextStyle(fontSize: 20),),
                SizedBox(height: 10,),
                Container(
                  width: 200,
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                  child:
                  TextFormField(
                      controller: controller.idController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "필수 입력해주세요!";
                        }
                        return null;
                      },
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        counterText: '',
                        hintText: 'suhunhope@naver.com',hintStyle: TextStyle(fontSize: 20,color: Colors.blue),
                        border: OutlineInputBorder(),
                      ),
                      maxLength: 10,
                      minLines: 1,
                      maxLines: 1,
                      onChanged: controller.id
                  ),
                ),
                SizedBox(height: 10,),
                Text("비밀번호",style: TextStyle(fontSize: 20),),
                SizedBox(height: 10,),
                Container(
                  width: 200,
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                  child:
                  TextFormField(
                      controller: controller.pwdController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "필수 입력해주세요!";
                        }
                        return null;
                      },
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        counterText: '',
                        hintText: '*****',hintStyle: TextStyle(fontSize: 20,color: Colors.blue),
                        border: OutlineInputBorder(),
                      ),
                      maxLength: 10,
                      minLines: 1,
                      maxLines: 1,
                      onChanged: controller.pwd
                  ),
                ),
                TextButton(onPressed: (){
                  viewModel.logout();
                  Get.to(Login());
                }, child: Text("로그아웃"))
            ],
          )
          ),
          ),
        ),
      ),
      );

  }
}