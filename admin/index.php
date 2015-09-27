<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Resolve Aí - Painel Administrativo</title>

    <!-- Bootstrap Core CSS -->
    <link href="config/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="config/css/sb-admin.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="config/css/plugins/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="config/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Modificar</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html"><img src="../img/Logo.png" class="img-responsive" width="20%"></a>
            </div>
            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">
                
              
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> John Smith <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#"><i class="fa fa-fw fa-user"></i>Alterar</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-power-off"></i> Sair</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li class="active">
                        <a href="index.html"><i class="fa fa-fw fa-dashboard"></i> Principal</a>
                    </li>
                    
                    <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#demo"><i class="fa fa-user"></i> Usuário <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="demo" class="collapse">
                            <li>
                                <a href="/funcionarios/cadastro.php">Cadastrar</a>
                            </li>
                            <li>
                                <a href="/funcionarios/buscar.php">Pesquisar</a>
                            </li>
                            <li>
                                <a href="/funcionarios/alterar.php">Alterar</a>
                            </li>
                            <li>
                                <a href="/funcionarios/desativar.php">Desativar</a>
                            </li>
                        </ul>
                    </li>

                    <li>
                        <a a href="#"><i class="fa fa-table"></i> Agenda </a>
                        
                    </li>

                  <li>
                        <a a href="#"><i class="fa fa-wrench"></i> Ordem de Serviço </a>
                        
                    </li>    

                    <li>
                        <a href="blank-page.html"><i class="fa fa-fw fa-question"></i> Sobre</a>
                    </li>                    
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>

        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
               
                </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="config/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="config/js/bootstrap.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="config/js/plugins/morris/raphael.min.js"></script>
    <script src="config/js/plugins/morris/morris.min.js"></script>
    <script src="config/js/plugins/morris/morris-data.js"></script>

</body>

</html>
