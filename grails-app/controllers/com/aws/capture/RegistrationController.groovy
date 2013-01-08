package com.aws.capture

import aws.capture.AwsUserCreatorService

class RegistrationController {

    AwsUserCreatorService awsUserCreatorService

    def index() {
        redirect(action: 'create')
    }

    def create() {}

    def save(){
        UserInfo info = new UserInfo(params)
        info.save();

        awsUserCreatorService.createIamUser(info);

        flash.message = "User created successfully please check your email at ${info.email} for your credentials."
        redirect(action: 'create')
    }

    def adminList(){
        [userInfoInstanceTotal : UserInfo.count(), userInfoInstanceList : UserInfo.list()]
    }

    def showUser(){
        [userInfoInstance : UserInfo.get(params.id)]
    }
}
