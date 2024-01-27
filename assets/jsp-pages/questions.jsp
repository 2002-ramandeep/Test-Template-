<%@ page import="java.util.Scanner,java.io.*" %>
<%  ServletContext context = application; 
    String test = context.getInitParameter("test");

    String physics = test+"test1/physics.txt";
    InputStream inputStream1 = context.getResourceAsStream(physics);
    
    String chemistry = test+"test1/chemistry.txt";
    InputStream inputStream2 = context.getResourceAsStream(chemistry);
    
    String maths = test+"test1/maths.txt";
    InputStream inputStream3 = context.getResourceAsStream(maths);
 %>
<div class="ques position-relative">
    <div class="timer position-absolute">
      <p id="time" class="time">
          03:00:00
      </p>
    </div>
    <div class="mcq position-absolute">
      <form id="test-form" action="assets/jsp-pages/result.jsp" method="post">
          <section id="phy">
            <%  int count1 = 0;
                Scanner sc1 = new Scanner(inputStream1);
                while(sc1.hasNextLine()){
                  count1++; %>
                  <div class="question">
                    <p><%= sc1.nextLine() %></p>
                    <%  String pv1 = sc1.nextLine();
                        String pv2 = sc1.nextLine();
                        String pv3 = sc1.nextLine();
                        String pv4 = sc1.nextLine(); %>
                    <div class="opt">
                        <input type="radio" name="p<%= count1 %>" value="<%= pv1 %>"><span><%= pv1 %></span>
                    </div>
                    <div class="opt">
                        <input type="radio" name="p<%= count1 %>" value="<%= pv2 %>"><span><%= pv2 %></span>
                    </div>
                    <div class="opt">
                        <input type="radio" name="p<%= count1 %>" value="<%= pv3 %>"><span><%= pv3 %></span>
                    </div>
                    <div class="opt">
                        <input type="radio" name="p<%= count1 %>" value="<%= pv4 %>"><span><%= pv4 %></span>
                    </div>
                  </divd=>
            <%  } 
                session.setAttribute("count",count1); %>
          </section>
          <section id="chm" style="display: none;">
            <%  int count2 = 0;
              Scanner sc2 = new Scanner(inputStream2);
              while(sc2.hasNextLine()){
                count2++; %>
                <div class="question">
                  <p><%= sc2.nextLine() %></p>
                  <%  String cv1 = sc2.nextLine();
                      String cv2 = sc2.nextLine();
                      String cv3 = sc2.nextLine();
                      String cv4 = sc2.nextLine(); %>
                  <div class="opt">
                      <input type="radio" name="c<%= count2 %>" value="<%= cv1 %>"><span><%= cv1 %></span>
                  </div>
                  <div class="opt">
                      <input type="radio" name="c<%= count2 %>" value="<%= cv2 %>"><span><%= cv2 %></span>
                  </div>
                  <div class="opt">
                      <input type="radio" name="c<%= count2 %>" value="<%= cv3 %>"><span><%= cv3 %></span>
                  </div>
                  <div class="opt">
                      <input type="radio" name="c<%= count2 %>" value="<%= cv4 %>"><span><%= cv4 %></span>
                  </div>
                </div>
          <%  } %>
          </section>
          <section id="math" style="display: none;">
            <%  int count3 = 0;
              Scanner sc3 = new Scanner(inputStream3);
              while(sc3.hasNextLine()){
                count3++; %>
                <div class="question">
                  <p><%= sc3.nextLine() %></p>
                  <%  String mv1 = sc3.nextLine();
                      String mv2 = sc3.nextLine();
                      String mv3 = sc3.nextLine();
                      String mv4 = sc3.nextLine(); %>
                  <div class="opt">
                      <input type="radio" name="m<%= count3 %>" value="<%= mv1 %>"><span><%= mv1 %></span>
                  </div>
                  <div class="opt">
                      <input type="radio" name="m<%= count3 %>" value="<%= mv2 %>"><span><%= mv2 %></span>
                  </div>
                  <div class="opt">
                      <input type="radio" name="m<%= count3 %>" value="<%= mv3 %>"><span><%= mv3 %></span>
                  </div>
                  <div class="opt">
                      <input type="radio" name="m<%= count3 %>" value="<%= mv4 %>"><span><%= mv4 %></span>
                  </div>
                </div>
          <%  } %>
          </section>
      </form>
    </div>
</div>