<?php

/**
 * UserIdentity represents the data needed to identity a user.
 * It contains the authentication method that checks if the provided
 * data can identity the user.
 */
class UserIdentity extends CUserIdentity {

    /**
     * Authenticates a user.
     * The example implementation makes sure if the username and password
     * are both 'demo'.
     * In practical applications, this should be changed to authenticate
     * against some persistent user identity storage (e.g. database).
     * @return boolean whether authentication succeeds.

      public function authenticate()
      {
      $users=array(
      // username => password
      'demo'=>'demo',
      'admin'=>'admin',
      );
      if(!isset($users[$this->username]))
      $this->errorCode=self::ERROR_USERNAME_INVALID;
      elseif($users[$this->username]!==$this->password)
      $this->errorCode=self::ERROR_PASSWORD_INVALID;
      else
      $this->errorCode=self::ERROR_NONE;
      return !$this->errorCode;
      }
     */
    private $_id;

    public function authenticate() {
        $record = UserAccount::model()->with('member')->findByAttributes(array('username' => $this->username), 'user_type="Member"');

        /* Debug Section  */
//        echo "<pre>";
//        print_r($record);
//        echo "</pre>";
//        if (count($record) > 0) {
//            echo $record->passkey;
//            echo $record->member->member_firstname;
//        } else {
//            echo "0";
//        }
//        die();
        /* End Debug Section  */
        
        if ($record === null) {
            $this->_id = "n/a";
            $this->errorCode = self::ERROR_USERNAME_INVALID;
        } else if ($record->passkey !== md5($this->password)) {
            $this->_id = $record->user_id;
            $this->errorCode = self::ERROR_PASSWORD_INVALID;
        } else {
            if ($record->user_status !== 'Active') {
                $this->errorCode = self::ERROR_UNKNOWN_IDENTITY;
                $this->errorMessage = Yii::t('home', 'err_login_disable');
            } else {
                $this->_id = $record->member->member_id;
//                $_SESSION['id'] = $record->member->member_id;
//                $this->setState('s_name_th', $record->member->member_firstname . " " . $record->member->member_lastname);
//                $this->setState('s_profile_pic', $record->member->member_pic_profile);
//                $this->setState('s_email', $record->member->member_company_email);
                $this->errorCode = self::ERROR_NONE;
            }
        }
        return !$this->errorCode;
    }

    public function getId() {
        return $this->_id;
    }

}
