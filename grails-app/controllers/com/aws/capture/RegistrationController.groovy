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
    }

    def adminList(){
        [userInfoInstanceTotal : UserInfo.count(), userInfoInstanceList : UserInfo.list()]
    }
}
