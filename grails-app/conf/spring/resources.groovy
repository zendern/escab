import com.amazonaws.auth.BasicAWSCredentials
import com.amazonaws.services.identitymanagement.AmazonIdentityManagementClient

// Place your Spring DSL code here
beans = {

    awsCredentials(BasicAWSCredentials, "AKIAJX6K4PSUI3U4M66Q", "XX4X9MTBV3MDPGp8xavLpFsUDdNKwbYmp5yr2sXQ"){}

    awsIamClient(AmazonIdentityManagementClient, awsCredentials){}
}
