//package controller;
// 
//import java.io.IOException;
// 
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
// 
//public class ControllerServlet extends HttpServlet{
//    //1단계 - HTTP 요청을 받음(GET/POST)
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//        throws ServletException, IOException{
//        processRequest(request, response);
//    }
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException{
//        processRequest(request, response);            
//    }
//    private void processRequest(HttpServletRequest request, 
//            HttpServletResponse response)
//        throws ServletException, IOException{
//        //2단계 요청 분석
//        //request 객체로부터 사용자의 요청을 분석하는 코드 작성
//        //...
//        //3단계 모델을 사용하여 분석된 요청을 처리
//        //...
//        //4단계 request나 session에 처리된 결과를 저장
//        /*
//         * request.setAttribute("ret", retObject);
//         * session.setAttribute("ret", retObject);
//         * 위와 같은 형태의 코드이다.
//         * ...
//         */
//        //5단계 RequestDispatcher를 사용하여 알맞은 뷰로 포워딩 | 리다이렉트
//        /*
//         * RequestDispatcher dispatcher = 
//         *         request.getRequestDispatcher("/view.jsp");
//         * dispatcher.forward(request, response);
//         * 위와 같은 형태의 코드
//         */
//    }
//}