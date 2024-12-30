  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  
  
  <form id="search" method="GET" action="/search">
        <select name="filter">
         <option value="select">Select</option>
            <option value="mid">Id</option>
            <option value="mname">Name</option>
            <option value="memail">Email</option>
            <option value="mpass">Password</option>
        </select>
        <input type="text" name="query" placeholder="Search...">
        <button type="submit" input type="submit">Search</button>
    </form>
    <br>
    
    
    
  <h1>Manager Info</h1><div class="search-container">
    
  
  <table border="3px"  class="table table-success table-striped  table-bordered">
 <tr>
 <th>Id</th>
  <th>Name</th>
   <th>Email</th>
    <th>Password</th>
     <th>Confirm_password</th>
      <th>Gender</th>
      <th>State</th>
      <th>Images</th>
       <th>Action</th>
 </tr>
 
  <c:forEach items="${temp}" var="e">
 <tr>

 <td>${e.mid}</td>
  <td>${e.mname}</td>
   <td>${e.memail}</td>
    <td>${e.mpass}</td>
     <td>${e.mcpass}</td>
      <td>${e.mgender}</td>
       <td>${e.mstate}</td>
       <td>
       <img src="/images/${e.filename}" width="100px" height="60px">
      </td>
       <td>
       <a href="editpage/${e.mid}" class="btn btn-success">Edit</a>
       <a href="deldata/${e.mid}" class="btn btn-danger">delete</a>
       </td>
 </tr>
 </c:forEach>
 </table>
 <style>
   .search-container {
            display: flex;
            align-items: center;
            justify-content: center;
            margin-top: 100px
           margin-bottom: 50px
        }

        select {
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 4px 0 0 4px;
            outline: none;
        }

        input[type="text"] {
            width: 250px;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 0;
            outline: none;
        }

        button {
            padding: 10px 20px;
            font-size: 16px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 0 4px 4px 0;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3;
        }
 </style>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>