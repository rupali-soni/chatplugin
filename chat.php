<!DOCTYPE html>
<html>
    <meta charset="utf-8">
    <title>Chat</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <head>
        <title>
            Chat Page
        </title>

		<?php
		error_reporting(0);
		$ses = null; // Return null if user is not logged in 
		$_SESSION['userid'] = $userId = $_GET['sid'];
		$receiverId = $_GET['rid'];
		if(isset($_SESSION['userid']))
		{ 
		  if($_SESSION['userid'] != null) // Here null is guest 
		  { 
		   $ses=$_SESSION['userid']; //LOOK, now userid will be passed to FreiChat 
		  } 
		} 
		if(!function_exists("freichatx_get_hash")){
		function freichatx_get_hash($ses){
			   if(is_file("hardcode.php")){
					require "hardcode.php";
					$temp_id =  $ses . $uid;
					return md5($temp_id);
			   }
			   else {
					echo "<script>alert('hardcode.php file not found!');</script>";
			   }

			   return 0;
		}
		}
		
		/*if($userId) { 
			$ses = $userId; //tell plugin the userid of the current user
			setcookie("freichat_user", "LOGGED_IN", time()+3600, "/");
		} else {
			$ses = null; //tell plugin that the current user is a guest
			setcookie("freichat_user", null, time()+3600, "/");
		}*/ 
		?>
		<script type="text/javascript" language="javascipt" src="client/main.php?id=<?php echo $ses;?>&xhash=<?php echo freichatx_get_hash($ses); ?>"></script>
		<link rel="stylesheet" href="client/jquery/freichat_themes/freichatcss.php" type="text/css">  
		<script type="text/javascript">
		setTimeout(function(){ $jn("#frei_user_brand").find("div").last().remove(); }, 2);
		<?php if($_GET['rid'] && $_GET['msg']) { 
			//fetch receiver's first name and last name from database
			$to_name = 'John '.$_GET['rid'];
		?>
		$jn( document ).ready(function() {
			$jn.post(freidefines.GEN.url + "server/freichat.php?freimode=post", {
                passBYpost: true,
                time: FreiChat.time,
                xhash: freidefines.xhash,
                id: <?php echo $userId;?>,
                to: <?php echo $_GET['rid'];?>,
                chatroom_mesg_time: FreiChat.chatroom_mesg_time,
                message_type: 0,
                'message[]': ['<?php echo $_GET['msg'].' '.$userId.'-->'.$_GET['rid'];?>?'],
                to_name: '<?php echo $to_name;?>',
                custom_mesg: FreiChat.custom_mesg,
                in_room: -1,
                GMT_time: FreiChat.getGMT_time()
            }, function(data) {
                
            }, 'json').complete(function() {
                console.log('done');
                FreiChat.analyse();
            });
		});
		<?php }?>
		</script>          
	</head>
	
	<body>
	</body>
	
</html>