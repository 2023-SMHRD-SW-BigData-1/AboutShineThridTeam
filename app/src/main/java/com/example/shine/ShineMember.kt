package com.example.shine

import android.provider.ContactsContract.CommonDataKinds.Nickname
import android.provider.ContactsContract.CommonDataKinds.Phone

data class ShineMember(var name : String, var email : String, var nick: String, var add : String, var pw :String, var phone: String)
