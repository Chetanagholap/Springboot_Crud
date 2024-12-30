<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h1>Search Results</h1>

<c:if test="${not empty sr}">
    <div>
        <p>Manager ID: ${sr.mid}</p>
        <p>Manager Name: ${sr.mname}</p>
        <p>Manager Email: ${sr.memail}</p>
        <p>Manager Password: ${sr.mpass}</p>
         <p>Manager Confirm_password: ${sr.mcpass}</p>
         <p>Manager Gender: ${sr.mgender}</p>
        
         <p>Manager State: ${sr.mstate}</p>
          <p>Manager File: ${sr.filename}</p>
        
        
        
    </div>
</c:if>

<c:if test="${empty sr}">
    <p>No search results found.</p>
</c:if>
