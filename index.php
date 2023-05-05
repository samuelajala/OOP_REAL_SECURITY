<?php
  require_once 'core/init.php';
/*for fetching datas from table.
  $user = DB::getInstance()->get('users', array('username', '=', 'alex'));

  if (!$user->count()) {
    echo 'No user';
  }else {
    To display all datas
    foreach($user->results() as $user){
      echo $user->username, '<br>';


    //to display a single data
    //echo $user->first()->username;
  }



  //for inserting data into table in database
  $userInsert = DB::getInstance()->insert('users', array(
    'username' => 'Dale',
    'password' => 'password',
    'salt' => 'salt'
  ));

  if ($userInsert) {
    echo "success";
  }else {
    echo "not successful";
  }


//now to update data in database
//here, we'll need to add the user id
$userUpdate = DB::getInstance()->update('users', 3, array(
  'username' => 'Dale2',
  'password' => 'newpassword'
));

if ($userUpdate) {
  echo "success";
}else {
  echo "not successful";
}


  //to delete data
  $userDelete = DB::getInstance()->delete('users', array('id', '=', '4'));

  if ($userDelete) {
    echo "success";
  }else {
    echo "not successful";
  }

*/
  if (Session::exists('home')) {
    echo '<p>'.Session::flash('home').'</p>';
  }

  //echo Session::get(Config::get('session/session_name'));
  $user = new User(); //current
  //$anotheruser = new User(6) //another user

  //echo $user->data()->username;
  if ($user->isLoggedIn()) {
    //echo $user->data()->username. " is Logged in";
?>
  <p>
    Hello <a href="#"><?php echo escape($user->data()->username); ?></a>
    <ul>
      <li><a href="update.php">Update details</a></li>
      <li><a href="change_password.php">Change Password</a></li>
      <li><a href="logout.php">Log out</a></li>
    </ul>
  </p>
<?php

  if ($user->hasPermission('admin')) {
    echo "<p>You are an administrator!.</p>";
  }
  }else {
    echo '<p>You need to <a href="login.php">log in</a> or <a href="register.php">register</a></p>';
  }

?>
