<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="pt-br">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="css/style.css" rel="stylesheet">

		<title>Cadastro de países!</title>
	</head>
	<body>
		<c:import url="menu.jsp" />
		<div id="main" class="container">
			<h3 class="page-header">Incluir país</h3>
			<form action="ManterPais.do" method="post">
				<div class="row">
					<div class="form-group col-md-12">
						<label for="nome">Nome</label>
						<input type="text" class="form-control" name="nome" id="nome" required maxlength="100" placeholder="Nome do país"/>
					</div>
				</div>
				<div class="row">
					<div class="form-group col-md-6">
						<label for="populacao">População</label>
						<input type="text" class="form-control" name="populacao" id="populacao" maxlength="150" placeholder="População"/>
					</div>
					<div class="form-group col-md-6">
						<label for="area">Área</label>
						<input type="text" class="form-control" name="area" id="area" placeholder="Área"/>
					</div>
				</div>
				<hr/>
				<div id="actions" class="row">
					<div class="col-md-12">
						<button type="submit" class="btn btn-primary" name="acao" value="Criar">Salvar</button>

						<a href="index.jsp" class="btn btn-default">Cancelar</a>
					</div>
				</div>
			</form>
		</div>

		<script src="js/jquery-1.9.1.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
	</body>
</html>
