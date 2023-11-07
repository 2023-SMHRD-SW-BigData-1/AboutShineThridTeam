package com.example.shine

import com.android.volley.VolleyError

interface VolleyMultipartRequestCallback {
    fun onResponse(response: String?)
    fun onErrorResponse(error: VolleyError)
}