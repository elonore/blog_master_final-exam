<?php 

    if (isset($_POST['submit-contact'])) {
        $email = $_POST['email'];
        $message = $_POST['message'];

        $errorEmpty = false;
        $errorEmail = false;

        if (empty($email) || empty($message)) {
            echo "<span class= 'form-error'>Fill in all the fields</span>";
            $errorEmpty = true;
        } 
            elseif (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
                echo "<span class= 'form-error'>Write a valid email address!</span>";
                $errorEmail = true;
            }
            else {
                echo "<span class= 'form-success'>Field in all fields!</span>";
            }
    }
            else {
                echo "<span class= 'form-success'>There was an error!</span>";
        } 
?>

<script>
    $("#mail-email", "#mail-message").removeClass("input-error");

    var errorEmpty = "<?php echo $errorEmpty ?>";
    var errorEmail = "<?php echo $errorEmail ?>";

    if (errorEmpty == true) {
        $("#mail-email", "#mail-message").addClass("input-error");
    }
    if (errorEmail == true) {
        $("#mail-email").addClass("input-error");
    }
    if (errorEmpty == false && emailMail == false) {
        $("#mail-email", "#mail-message").val("");
    }
</script>