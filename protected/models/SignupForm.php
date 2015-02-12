<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class SignupForm extends CFormModel {

    public $firstname;
    public $lastname;
    public $username;
    public $email;
    public $mobile;
    
    /**
     * Declares the validation rules.
     * The rules state that username and password are required,
     * and password needs to be authenticated.
     */
    
    public function rules() {
        return array(
            // username and password are required
            array('fullname, username, email, mobile', 'required'),
            array('email', 'email'),        
        );
    }

    /**
     * Declares attribute labels.
     */
    public function attributeLabels() {
        return array(

        );
    }


}
