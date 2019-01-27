<%-- 
    Document   : response
    Created on : 05/10/2013, 08:33:41
    Author     : 212214061
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Armazena dados no Banco de Dados</title>
    </head>
    <body>
        <h2>Salvando informações...</h2>
        </br></br>
        <%@ page language="java" import="java.sql.*"%> 
        <%@ page language="java" import="database.Conexao"%>
        <%
            
            String nome=request.getParameter("nome"); // ele busca a propriedade name no input
            String email=request.getParameter("email");
            String cpf=request.getParameter("cpf");
            String tel_fixo=request.getParameter("telfixo");
            String tel_movel=request.getParameter("telmovel");
            String endereco=request.getParameter("endereco");
            String bairro=request.getParameter("bairro");
            String cidade=request.getParameter("cidade");
            String uf=request.getParameter("estado");
            String cep=request.getParameter("cep");
            String data_nascimento=request.getParameter("dtnascimento");
            String sexo=request.getParameter("sexo");
            
            String ai_pr=request.getParameter("a1");
            String ai_bd=request.getParameter("a2");
            String ai_rd=request.getParameter("a3");
            String ai_so=request.getParameter("a4");
            String ai_ac=request.getParameter("a5");
            
            data_nascimento=data_nascimento.substring(6,10)+"-"+data_nascimento.substring(3,5)+"-"+data_nascimento.substring(0,2);
            
            
            if(ai_pr==null) ai_pr="0";
            if(ai_bd==null) ai_bd="0";
            if(ai_rd==null) ai_rd="0";
            if(ai_so==null) ai_so="0";
            if(ai_ac==null) ai_ac="0";
            
 
            
            
            try{
              // instancia classe de conexao
                Conexao conexao = new Conexao("localhost","ExemploForm","root","");
             // conectar ao banco
                Connection connection = conexao.connect();
            // cria o statement e realiza insercao
                Statement st = connection.createStatement();
            // armazena a query na variavel sql
                String sql = "insert into cadastro (nome,email, cpf, tel_fixo, tel_movel, endereco, bairro,"
                        +"cidade,uf,cep,data_nascimento,sexo,ai_pr,ai_bd,ai_rd,ai_so,ai_ac)"
                        +"values('"+nome+"','"+email+"','"+cpf+"','"+tel_fixo+"','"+tel_movel+"','"+endereco+"','"+bairro+"','"+cidade+"','"+uf+"','"+cep+"','"+data_nascimento+"','"+sexo+"','"+ai_pr+"','"+ai_bd+"','"+ai_rd+"','"+ai_so+"','"+ai_ac+"');";
                        
           // armazena a query para inserir registro no banco de dados
                int res = st.executeUpdate(sql);
           // a variavel res receberá "0" em caso de erro e "1" em caso de sucesso
                if(res==1){ // em caso de sucesso na inserção
                    out.println("Cadastro realizado com sucesso!");
                }
                else{ // em caso de erro
                    out.println("Falha no cadastro!");
                }
                conexao.close();
            }
            catch(Exception e){
                out.println(e.toString());  
            }
            
        %>
    </body>
</html>
