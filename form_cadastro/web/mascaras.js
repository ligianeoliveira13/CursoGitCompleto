 function mascara(o,f){ //vai verificar o tipo de mascara que o usuario vai digitar
        v_obj=o
        v_fun=f
        setTimeout("execmascara()",1)
    }
    
    /*FunÃ§ao que Executa os objetos*/
    function execmascara(){
        v_obj.value=v_fun(v_obj.value)
    }
    
    /*FunÃ§ao que Determina as expressoes regulares dos objetos*/
    function leech(v){
        v=v.replace(/o/gi,"0")
        v=v.replace(/i/gi,"1")
        v=v.replace(/z/gi,"2")
        v=v.replace(/e/gi,"3")
        v=v.replace(/a/gi,"4")
        v=v.replace(/s/gi,"5")
        v=v.replace(/t/gi,"7")
        return v
    }
    
    /*FunÃ§ao que permite apenas numeros*/
    function m_integer(v){
        return v.replace(/\D/g,"")
    }
    
    /*FunÃ§ao que padroniza telefone (11) 4184-1241*/
    function m_telfixo(v){
        v=v.replace(/\D/g,"")                 
        v=v.replace(/^(\d\d)(\d)/g,"($1)$2") 
        v=v.replace(/(\d{4})(\d)/,"$1-$2")    
        return v
    }
    
    function m_telmovel(v){
        v=v.replace(/\D/g,"")                 
        v=v.replace(/^(\d\d)(\d)/g,"($1)$2") 
        v=v.replace(/(\d{5})(\d)/,"$1-$2")    
        return v
    }
    
    
    /*FunÃ§ao que padroniza CPF*/
    function m_cpf(v){
        v=v.replace(/\D/g,"")                    
        v=v.replace(/(\d{3})(\d)/,"$1.$2")       
        v=v.replace(/(\d{3})(\d)/,"$1.$2")       
                                                 
        v=v.replace(/(\d{3})(\d{1,2})$/,"$1-$2") 
        return v
    }
    
    /*FunÃ§ao que padroniza CEP*/
    function m_cep(v){
        v=v.replace(/D/g,"")                
        v=v.replace(/^(\d{5})(\d)/,"$1-$2") 
        return v
    }
    
    /*FunÃ§ao que padroniza CNPJ*/
    function m_cnpj(v){
        v=v.replace(/\D/g,"")                   
        v=v.replace(/^(\d{2})(\d)/,"$1.$2")     
        v=v.replace(/^(\d{2})\.(\d{3})(\d)/,"$1.$2.$3") 
        v=v.replace(/\.(\d{3})(\d)/,".$1/$2")           
        v=v.replace(/(\d{4})(\d)/,"$1-$2")              
        return v
    }
	 /*FunÃ§ao que padroniza DATA*/
    function m_data(v){
        v=v.replace(/\D/g,"") 
        v=v.replace(/(\d{2})(\d)/,"$1/$2") 
        v=v.replace(/(\d{2})(\d)/,"$1/$2") 
        return v
    }
    
    /*FunÃ§ao que padroniza DATA*/
    function m_hora(v){
        v=v.replace(/\D/g,"") 
        v=v.replace(/(\d{2})(\d)/,"$1:$2")  
        return v
    }
    
    /*FunÃ§ao que padroniza valor monÃ©tario*/
    function m_valor(v){
        v=v.replace(/\D/g,"") //Remove tudo o que nao Ã© dÃ­gito
        v=v.replace(/^([0-9]{3}\.?){3}-[0-9]{2}$/,"$1.$2");
        //v=v.replace(/(\d{3})(\d)/g,"$1,$2")
        v=v.replace(/(\d)(\d{2})$/,"$1.$2") //Coloca ponto antes dos 2 Ãºltimos digitos
        return v
    }
   