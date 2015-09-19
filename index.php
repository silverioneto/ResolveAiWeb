<!DOCTYPE html>
<html lang="PT-BR">
<head>
    <meta charset="utf-8">
	<title>Login - Resolve Aí</title>
	<link href="css/login.css" rel="stylesheet">
	<link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/errologin.css" rel="stylesheet">
    <script type="text/javascript" src="js/login.js"></script>
    <script type="text/javascript" src="js/jquery-1.11.3.js"></script>
    <script type="text/javascript" src="js/dialog.js"></script>

    
</head>

<body>
<div class="container">    
        
    <div id="loginbox" class="mainbox col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3"> 
        
        <div class="row">                
            <div class="img-responsive" align="center">
              <img src="img/Logo.png" class="img-responsive" width="50%">
            </div>
        </div>
        <br>

        <div class="panel panel-default" >
            <div class="panel-heading">
                <div class="panel-title text-center">Painel Administrativo</div>
            </div>     

            <div class="panel-body" >

                <form name="form" id="form" class="form-horizontal" enctype="multipart/form-data" method="POST">
                   
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <input id="user" type="text" class="form-control" name="user" value="" placeholder="Email">                                        
                    </div>

                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                        <input id="password" type="password" class="form-control" name="password" placeholder="Senha">
                    </div> 

                    <div id='errologin' class="msg msg-warning msg-danger-text" style="display: none"> <span class="glyphicon glyphicon-exclamation-sign"></span> Usuário ou Senha incorretos!</div>                                                                 

                    <div class="form-group">
                        <!-- Button -->
                        <div class="col-sm-12 controls">
                            <button type="button" onclick="verificaLogin()" class="btn btn-primary pull-right"><i class="glyphicon glyphicon-log-in"></i>&nbspLogin</button>                          
                        </div>
                    </div>

                </form>     

            </div>                     
        </div>  
    </div>
</div>


</body>
</html>