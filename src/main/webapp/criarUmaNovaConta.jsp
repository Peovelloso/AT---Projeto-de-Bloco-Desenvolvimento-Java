<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<f:view>
    <html>
    <meta charset="ISO-8859-1">
    <title>Ventura HR Webapp</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container">
            <h1> Ventura HR Webapp - Criar Conta </h1>
        <form action="CriarContatoServlet" method="post">
            <div class="form-group">
                 <label>Nome:</label>
                  <input type="text" class="form-control" placeholder="Entre com seu nome" name="nome">
            </div> 
            
            <div class="form-group">
                 <label>Endereço:</label>
                  <input type="endereco" class="form-control" placeholder="Endereço" name="endereco">
            </div>
                
            <div class="form-group">
                 <label>Telefone:</label>
                  <input type="number" class="form-control" placeholder="Numero de Telefone" name="telefone">
            </div> 
    
            <div class="form-group">
                <label>Email:</label>
                 <input type="text" class="form-control" placeholder="Email" name="email">
           </div> 
            <div class="form-group">
                 <label>Senha:</label>
                  <input type="text" class="form-control" placeholder="Senha" name="senha">
            </div>  
    
            <div class="form-group">
                <label>Confirma Senha:</label>
                 <input type="text" class="form-control" placeholder="Confirmar senha!" name="senha2">
           </div>  
    
            <div class="form-group">		
                <label>Tipo de Conta:</label>
                    <div class="form-check-inline">
                    <label class="form-check-label">
                        <input type="radio" name="escolaridade" class="form-check-input" value="G"> Canditato
            
            </div>
            <div class="form-check-inline">		
                <label class="form-check-label">
                    <input type="radio" name="escolaridade" class="form-check-input" value="E"> Empresa
                  </label>
            </div>
    
      
            <div class="form-group">
                <label>CPF:</label>
                 <input type="number" class="form-control" placeholder="Numero do seu CPF" name="cpf">
           </div>  
       
           <div class="form-group">
                <label>Razão Social:</label>
                <input type="text" class="form-control" placeholder="Razão Social" name="razaosocial">
       </div>  
    
        <div class="form-group">
            <label>CNPJ:</label>
             <input type="number" class="form-control" placeholder="Numero do CNPJ" name="cnpj">
        </div> 
    
                 <button class="btn btn-primary" type="submit" >Criar Conta</button>
            </form>
        </div>
        
    </body>
</f:view>
