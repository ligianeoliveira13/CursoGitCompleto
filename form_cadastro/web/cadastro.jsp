<%-- 
    Document   : cadastro
    Created on : 27/09/2013, 21:39:50
    Author     : 212214061
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PAGINA DE CADASTRO</title>
        <script src="mascaras.js"></script>
        <script src="validacoes.js"></script>
                <script>
            function validaform(f){
             var nome=f.nome.value;

             var endereco=f.endereco.value;
             var bairro=f.bairro.value;
             var cidade=f.cidade.value;
         
  

                if(nome===""){
                 alert("Campo NOME precisa ser preenchido");
                 f.nome.focus();
                 return false;
                }
                //else if(email===""){
                 else if(valida_email(f.email)===false){
                 alert("O E-MAIL informado não é válido");
                 f.nome.focus();
                 return false;
                }
                //else if(cpf===""){
                 else if(valida_cpf(f.cpf)===false){
                 alert("O CPF informado não é válido");
                 f.nome.focus();
                 return false;
                }else if(f.telfixo.value.length<13){
                 alert("Campo TEL. FIXO precisa ser preenchido");
                 f.nome.focus();
                 return false;
                }else if(f.telmovel.value.length<14){
                 alert("Campo CELULAR precisa ser preenchido");
                 f.nome.focus();
                 return false;
                 }else if(endereco===""){
                 alert("Campo ENDEREÇO precisa ser preenchido");
                 f.nome.focus();
                 return false;
                 }else if(bairro===""){
                 alert("Campo BAIRRO precisa ser preenchido");
                 f.nome.focus();
                 return false;
                 }else if(cidade===""){
                 alert("Campo CIDADE precisa ser preenchido");
                 f.nome.focus();
                 return false;
                 }else if(f.cep.value.length<9){
                 alert("Campo CEP precisa ser preenchido");
                 f.cep.focus();
                 return false;
                 }
                 //else if(dtnascimento===""){
                 else if(valida_data(f.dtnascimento)===false){
                 alert("A Data de Nascimento informada não é válida");
                 f.dtnascimento.focus();
                 return false;
                }else if(f.estado.value==="0"){
                    alert("Favor preencher o campo ESTADO");
                    f.estado.focus();
                    return false;
                }else if((f.sexo[0].checked===false)&&(f.sexo[1].checked===false)){
                    alert("Favor preencher o campo SEXO");
                    return false;
                }else if((f.a1.checked===false)&&(f.a2.checked===false)&&(f.a3.checked===false)&&(f.a4.checked===false)&&(f.a5.checked===false)){
                    alert("Favor preencher pelo menos UMA opção de Area de Interesse");
                    return false;
                }else{
                    return true;
                }   
                
            } 
            
        function maiusculo(c){
            var texto=c.value;
            texto=texto.toUpperCase();
            c.value=texto;
            // c.value=c.value.toUpperCase();
        }
        </script>
    </head>
    <body background="madeira.jpg"><h2><p align="center">FORMULÁRIO DE CADASTRO</p></h2>
        <h2>Por favor, preencha seus dados pessoais:</h2><br>
        <form method="post" action="response.jsp" onsubmit="return validaform(this);">
                    Nome:  &nbsp &nbsp &nbsp<input type="text" name="nome" id="nome" size="50" maxlength="40" onkeypress="maiusculo(this);"><br><br>
                    E-mail: &nbsp &nbsp &nbsp<input type="text" name="email" id="email" size="50" maxlength="40"><br><br>
                    CPF:   &nbsp &nbsp &nbsp &nbsp<input type="text" name="cpf" id="cpf" size="50" maxlength="14" onkeypress="mascara(this,m_cpf);"><br><br>
                    Tel. Fixo: &nbsp<input type="text" name="telfixo" id="telfixo" size="50" maxlength="13" onkeypress="mascara(this,m_telfixo);"><br><br>
                    Celular: &nbsp &nbsp<input type="text" name="telmovel" id="telmovel" size="50" maxlength="14" onkeypress="mascara(this,m_telmovel);"><br><br>
                    Endereço:<input type="text" name="endereco" id="endereco" size="50" maxlength="50"><br><br>
                    Bairro:&nbsp &nbsp &nbsp<input type="text" name="bairro" id="bairro" size="50" maxlength="50"><br><br>
                    Cidade: &nbsp &nbsp<input type="text" name="cidade" id="cidade" size="50" maxlength="50"><br><br> 
          Estado:
           &nbsp<select name="estado" id="estado">
               <option value="0">Nenhum</option>
               <option value="AC">Acre</option>
               <option value="AL">Alagoa</option>
               <option value="AM">Amazônas</option> 
               <option value="AP">Amapá</option> 
               <option value="BA">Bahia</option> 
               <option value="CE">Ceará</option> 
               <option value="DF">Distrito Ferederal</option> 
               <option value="ES">Espírito Santo</option> 
               <option value="GO">Goias</option> 
               <option value="MA">Maranhão</option> 
               <option value="MG">Minas Gerais</option> 
               <option value="MS">Mato Grosso do Sul</option> 
               <option value="MT">Mato Grosso</option> 
               <option value="PA">Pará</option> 
               <option value="PB">Paraíba</option> 
               <option value="PE">Pernambuco</option> 
               <option value="PI">Piauí</option> 
               <option value="PR">Paraná</option> 
               <option value="RJ">Rio de Janeiro</option> 
               <option value="RN">Rio Grande do Norte</option> 
               <option value="RO">Rondônia</option> 
               <option value="RR">Roraima</option> 
               <option value="RS">Rio Grande do Sul</option> 
               <option value="SC">Santa Catarina</option>
               <option value="SE">Sergipe</option>
               <option value="SP">São Paulo</option>
               <option value="TO">Tocantins</option>  
           </select>      
           <br><br>
           
           CEP:&nbsp &nbsp &nbsp &nbsp<input type="text" name="cep" id="cep" size="50" maxlength="9" onkeypress="mascara(this,m_cep);"><br><br>
           Data de Nascimento: &nbsp &nbsp<input type="text" name="dtnascimento" id="dtnascimento" size="50" maxlength="50" onkeypress="mascara(this,m_data);"><br><br> 
           
           Sexo:<br>
           <input type="radio" id="sexo" name="sexo" value="M"> Masculino<br>
           <input type="radio" id="sexo" name="sexo" value="F"> Feminino<br>
           <br><br>
           
           Area de Interesse:<br>
           <input type="checkbox" name="a1" id="a1" value="1"> Programação<br>
           <input type="checkbox" name="a2" id="a2" value="1"> Banco de Dados<br>
           <input type="checkbox" name="a3" id="a3" value="1"> Redes<br>
           <input type="checkbox" name="a4" id="a4" value="1"> Sistemas Operacionais<br>
           <input type="checkbox" name="a5" id="a5" value="1"> Arquitetura de Computadores<br>
           <br><br>
           
           <input type="reset" value="Limpar">
           <input type="submit" value="Enviar">
           
        </form>      
    </body>
</html>
