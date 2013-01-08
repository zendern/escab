package aws.capture

import com.amazonaws.services.identitymanagement.AmazonIdentityManagement
import com.amazonaws.services.identitymanagement.model.*
import com.aws.capture.UserInfo
import grails.plugin.mail.MailService

class AwsUserCreatorService {

    AmazonIdentityManagement awsIamClient

    MailService mailService

    def createIamUser(UserInfo userInfo) {

        CreateUserRequest createUserRequest = new CreateUserRequest()
                    .withUserName(userInfo.initials)
        CreateUserResult createUserResult =  awsIamClient.createUser(createUserRequest)

        User iamUser = createUserResult.getUser();

        CreateAccessKeyRequest createAccessKeyRequest = new CreateAccessKeyRequest()
                    .withUserName(iamUser.getUserName())
        CreateAccessKeyResult createAccessKeyResult = awsIamClient.createAccessKey(createAccessKeyRequest)

        AccessKey accessKey = createAccessKeyResult.accessKey

        userInfo.secretAccessKey = accessKey.secretAccessKey
        userInfo.accessKeyId = accessKey.accessKeyId


        AddUserToGroupRequest addUserToGroupRequest = new AddUserToGroupRequest()
                .withUserName(iamUser.getUserName())
                .withGroupName("developers")
        awsIamClient.addUserToGroup(addUserToGroupRequest)


        CreateLoginProfileRequest createLoginProfileRequest = new CreateLoginProfileRequest()
                .withUserName(iamUser.getUserName())
                .withPassword("codemash")
        awsIamClient.createLoginProfile(createLoginProfileRequest);
        userInfo.password = "codemash"
        userInfo.consoleUrl = "https://563700736850.signin.aws.amazon.com/console"


        userInfo.save()


        mailService.sendMail {
            to userInfo.email
            from  "aws@juddsolutions.com"
            subject  "Registration of User for Java in the Amazon Cloud"
            body (view:"/registration/registrationMail", model:[userInfo : userInfo])
        }
    }
}
