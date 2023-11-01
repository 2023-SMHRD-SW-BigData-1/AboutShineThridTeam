package com.example.shine.VO

import android.provider.ContactsContract.CommonDataKinds.Nickname
import android.provider.ContactsContract.CommonDataKinds.Phone

data class ShineMember(var userNm : String,
                       var userEmail : String,
                       var userNick: String,
                       var userAdd : String,
                       var userPw :String,
                       var userPhone: String)
