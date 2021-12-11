
package br.edu.infent.app;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.lang.StringUtils;



@WebServlet(name = "CriarContatoServlet", urlPatterns = {"/CriarContatoServlet"})
public class CriarContatoServlet extends HttpServlet {

 
   @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Ventura HR Webapp</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Ventura HR Webapp - Criar Uma Nova Conta </h1></h1>");
            out.println("hr />");
            //--
            String nome = request.getParameter("nome");
            String endereco = request.getParameter("endereco");
            String fone = request.getParameter("telefone");
            String email = request.getParameter("email");
            String senha = request.getParameter("senha");
            String senha2 = request.getParameter("senha2");
            String cpf = request.getParameter("cpf");
            String razaosocial = request.getParameter("razaosocial");
            String cnpj = request.getParameter("cnpj");
            

            //--
            ArrayList<String> erros = new ArrayList<>();
            if(StringUtils.isBlank(nome)){
               erros.add("Campo Obrigatorio");
            }
                        if(StringUtils.isBlank(email)){
                
                erros.add("Campo Obrigatorio");
            }
            //--
            if(StringUtils.isBlank(fone) && StringUtils.isNumeric(fone)){
                
                erros.add("Campo Obrigatorio");
            }
            //--
            if(erros.isEmpty()){
                
                out.println("<h3>Cadastro de " + nome + " realizado com Sucesso!!<h3>");
            } else {
                out.println("<h3>Cadastro com ERROS, consultar seu cadastro:<h3>");
                for(String erro : erros ){
                    out.println("<h3 style ='color: red' >ERROS, consultar seu cadastro:<h3>");

                }
            }
            
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
        }
    }
}
