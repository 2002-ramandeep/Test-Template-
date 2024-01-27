<%@ page import="java.io.*,java.util.*,java.sql.*" %>

<%  session = request.getSession();
    String email = (String)session.getAttribute("email");
    int pScore=0;
    int cScore=0;
    int mScore=0;
    if(session.getAttribute("count")!=null){
        int count = (Integer)session.getAttribute("count");
        
        String[] physics = new String[count];
        String[] chemistry = new String[count];
        String[] mathematics = new String[count];

        ServletContext context = application;
        String test = context.getInitParameter("test");

        String pAnswers = test+"test1/physicsAnswers.txt";
        InputStream inputStream1 = context.getResourceAsStream(pAnswers);

        String cAnswers = test+"test1/chemistryAnswers.txt";
        InputStream inputStream2 = context.getResourceAsStream(cAnswers);

        String mAnswers = test+"test1/mathsAnswers.txt";
        InputStream inputStream3 = context.getResourceAsStream(mAnswers);

        for(int i=0;i<count;i++){
            String p = request.getParameter("p"+(i+1));
            if(p!=null){
                physics[i] = p;
            }
            else{
                physics[i] = "N/A";
            }
        }

        for(int i=0;i<count;i++){
            String c = request.getParameter("c"+(i+1));
            if(c!=null){
                chemistry[i] = c;
            }
            else{
                chemistry[i] = "N/A";
            }
        }

        for(int i=0;i<count;i++){
            String m = request.getParameter("m"+(i+1));
            if(m!=null){
                mathematics[i] = m;
            }
            else{
                mathematics[i] = "N/A";
            }
        }

        Scanner sc1 = new Scanner(inputStream1);
        int i=0;
        while(sc1.hasNextLine()){
            if(physics[i].equals(sc1.nextLine())){
                pScore++;
            }     
            i++;
        }
        i=0;
        Scanner sc2 = new Scanner(inputStream2);
        while(sc2.hasNextLine()){
            if(chemistry[i].equals(sc2.nextLine())){
                cScore++;
            }     
            i++;
        }
        i=0;
        Scanner sc3 = new Scanner(inputStream3);
        while(sc3.hasNextLine()){
            if(mathematics[i].equals(sc3.nextLine())){
                mScore++;
            }     
            i++;
        }
%>
<jsp:useBean id="rb1" class="model.ResultBean" >
    <jsp:setProperty name="rb1" property="physics" value="<%= pScore %>" />
    <jsp:setProperty name="rb1" property="chemistry" value="<%= cScore %>" />
    <jsp:setProperty name="rb1" property="maths" value="<%= mScore %>" />
    <jsp:setProperty name="rb1" property="email" value="<%= email %>" />
</jsp:useBean>
<%  rb1.storeResult(); %>
<%  } 
    else{ %>
        <jsp:useBean id="rb2" class="model.ResultBean" >
            <jsp:setProperty name="rb2" property="email" value="<%= email %>" />
        </jsp:useBean>
    <%  int[] res = rb2.getScore();
        pScore = res[0];
        cScore = res[1];
        mScore = res[2];
    }
%>