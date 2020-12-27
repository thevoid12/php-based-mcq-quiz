<?php session_start();
?>
<script>
    function pickAnswer(qno, answer) {
        document.getElementById("correct_answer_" + qno).value = answer;

    }
</script>
<form name="frm" action="quiz_process.php" method="POST">

    <?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "myquiz";

    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);
    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $a = "select * from quiz_master";
    $result = $conn->query($a);
    if ($result->num_rows > 0) {
        // output data of each row
        $qno = 1;
        while ($row = $result->fetch_assoc()) {
            echo "$qno" . ".";
            echo "$row[question]";

    ?>
            <!------------------------Four Radio buttons for options------------------->
            <br>
            <input type="radio" name="answers_<?php echo $qno; ?>" id="answers" onclick="pickAnswer(<?php echo $qno; ?>, 'a')"> <?php echo $row['opt-a']; ?>
            <input type="radio" name="answers_<?php echo $qno; ?>" id="answers" onclick="pickAnswer(<?php echo $qno; ?>, 'b')"> <?php echo $row['opt-b']; ?>
            <input type="radio" name="answers_<?php echo $qno; ?>" id="answers" onclick="pickAnswer(<?php echo $qno; ?>, 'c')"> <?php echo $row['opt-c']; ?>
            <input type="radio" name="answers_<?php echo $qno; ?>" id="answers" onclick="pickAnswer(<?php echo $qno; ?>, 'd')"> <?php echo $row['opt-d']; ?>
            <br><br>


            <!-----------------getting the correct answer through Javascript--------------->
            <input type="hidden" name="correct_answer_<?php echo $qno; ?>" id="correct_answer_<?php echo $qno; ?>" />



    <?php
            $qno++;
        }
    } ?>

    <input type="submit" value=" Submit the quiz" />

</form>