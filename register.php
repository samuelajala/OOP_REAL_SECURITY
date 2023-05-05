<?php
  require_once 'core/init.php';

  if (Input::exists()) {
    if (Token::check(Input::get('token'))) {
      $validate = new Validate();
      $validation = $validate->check($_POST, array(
          'username' => array(
          'required' => true,
          'min' => 2,
          'max' => 20,
          'unique' => 'users'
        ),
        'password' => array(
          'required' => true,
          'min' => 6
        ),
        'password_again' => array(
          'required' => true,
          'matches' => 'password'
        ),
        'name' => array(
          'required' => true,
          'min' => 2,
          'max' => 50
        ),
      ));

      if($validation->passed()){
        //register user
        //Session::flash('success', 'You registered sucessfully!');
        //header('Location: index.php');
        $user = new User();

        $salt = Hash::salt(32);

        try {
          $user->create(array(
            'username' => Input::get('username'),
            'password' => Hash::make(Input::get('password'), $salt),
            'salt' => $salt,
            'name' => Input::get('name'),
            'joined' => date('Y-m-d H:i:s'),
            'groups' => 1
          ));

          Session::flash('home','You have been registered and can now log in!');
          //header('Location: index.php');
          Redirect::to('index.php');
          //Redirect::to(404);
        } catch (Exception $e) {
          die($e->getMessage());
        }

      }else{
        //output errors
        foreach ($validation->errors() as $error) {
          echo $error, '<br>';
        }
      }
  }
}
?>

<form class="" action="" method="post">
  <div class="field">
    <label for="username">Username</label>
    <input type="text" name="username" id="username" value="<?php //  echo escape(Input::get('username')); ?>" autocomplete="off">
  </div>
  <div class="field">
    <label for="password">Enter a password</label>
    <input type="password" name="password" id="password">
  </div>
  <div class="field">
    <label for="password_again">Enter your password again</label>
    <input type="password" name="password_again" id="password_again" value="">
  </div>
  <div class="field">
    <label for="name">Your name</label>
    <input type="text" name="name" id="name" value="<?php //echo escape(Input::get('name')); ?>">
  </div>

  <input type="hidden" name="token" value="<?php echo Token::generate(); ?>">
  <input type="submit" name="submit" value="Register">
</form>
