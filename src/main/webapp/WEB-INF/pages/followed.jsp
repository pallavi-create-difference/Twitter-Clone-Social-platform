<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en"><head>
      <meta charset="UTF-8">
      <title>Clone - New Twitter 2019 but for dad jokes #cpc-dad-joke #challenge</title>
      <link href="https://fonts.googleapis.com/css?family=DM+Sans&amp;display=swap" rel="stylesheet">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
       <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
       <link rel="stylesheet" href="/static/css/recommendation.css">

      <script>
         window.console = window.console || function(t) {};
      </script>
      <script>
         if (document.location.search.match(/type=embed/gi)) {
           window.parent.postMessage("resize", "*");
         }
      </script>
   </head>

   <body translate="no">
      <div id="root">
         <div>
            <div class="layout">
               <div class="layout_wrapper">
                  <div class="layout_header">
                                        <jsp:include page="templates/navebar.jsp"/>

                  </div>
                  <div class="layout_content">
                     <div class="feed">
                        <div class="feed_header">
                           <h1 class="feed_title">Followed :)</h1>
                        </div>








                        <c:forEach var="member" items="${FOLLOWED}">
                         <div class="feed_item">
                                    <div class="joke">
                                       <div class="joke_wrapper">
                                          <div class="joke_block joke_block--header">
                                             <span class="joke_element joke_element--author-name">${member.name}</span>
                                             <span class="joke_element joke_element--author-username">${member.email}</span>
                                             <div class="joke_element joke_element--author-img"><img src="/static/images/img.png"></div>
                                          </div>
                                          <button class="follow-member followed-button" member-id="${member.id}" type="submit" tabindex="0" style="margin-top: 17px;">
                                                    <span tabindex="-1">Followed</span>
                                                </button>

                                       </div>
                                    </div>
                                 </div>
                        </c:forEach>




                        <div class="feed_footer">
                           <div class="pagination pagination--infinite-scroll"><button class="pagination_button_next">Load more...</button></div>
                        </div>
                     </div>
                  </div>

                  <jsp:include page="templates/sidebar.jsp"/>

               </div>
            </div>
         </div>
      </div>

    <script type="text/javascript" src="/static/js/user.js"> </script>
</body></html>