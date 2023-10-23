package com.shine.user.controller;

import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Transactional
@RequestMapping(method = RequestMethod.POST, path = "/sendEmail")
public class MailController {

}
