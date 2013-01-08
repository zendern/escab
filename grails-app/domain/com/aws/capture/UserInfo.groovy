package com.aws.capture

class UserInfo {

    String name
    String initials
    String email
    String company

    String password
    String accessKeyId
    String secretAccessKey
    String consoleUrl

    static constraints = {
        name (blank: false)
        initials (blank: false, unique: true)
        email (blank: false,  email: true)
        company (blank: false)

        password(blank: true)
        accessKeyId(blank: true)
        secretAccessKey(blank: true)
        consoleUrl(blank: true)
    }

}
