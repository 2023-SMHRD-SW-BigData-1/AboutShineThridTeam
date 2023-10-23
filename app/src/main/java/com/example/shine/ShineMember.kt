package com.example.shine

import android.provider.ContactsContract.CommonDataKinds.Nickname
import android.provider.ContactsContract.CommonDataKinds.Phone

data class ShineMember(var user_name : String, var user_email : String, var user_nick: String, var user_add : String, var user_pw :String, var user_phone: String)
