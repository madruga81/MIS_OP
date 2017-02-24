<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
		<title>Pagina Cadastro</title>
		<link href="./CSS/cadastro_pagina.css" rel="stylesheet" type="text/css" />
	</head>
<body id = "corpo">    
<div id="logo">
     <img src="./IMG/Planejamento.gif"/>      
</div>        
       <div id="cadastro">       
       	  <div id="cad" >
            <div id="cad_form">
            <form action="planejamento" method="post" id="form">
            	<div class="form_leb"><label>Nome:</label></div><div class="form_imp">
                <input type="text" name="nome" id="username" value="" size="50" />
                </div>
                <div class="form_leb"><label>E-mail:</label></div><div class="form_imp">
                <input type="text" name="email" id="username" value="" size="50" />
                </div>
                <div class="form_leb"><label>Senha:</label></div><div class="form_imp">
                <input type="password" name="senha" id="password" value="" size="30" />
                </div>
                <div class="form_leb"><label>Confirme a Senha:</label></div><div class="form_imp">
                <input type="password" name="confirma_senha" id="password" value="" size="30" />
                </div>
                 <input type="hidden" name="logica" value="CadastrarUsuario"/>
                <div id="button">
                <input name="Submit" type="submit" id="botao_form" value="Enviar" />
                </div>
            </form>
            </div>    
            </div>  
       </div>   	
</body>
</html>