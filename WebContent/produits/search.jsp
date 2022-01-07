<jsp:include page="../header1.jsp"></jsp:include>

 <!-- Content Row -->

                    <div class="row">

                        <!-- Area Chart -->
                        <div class="col-xl-8 col-lg-7">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div
                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Liste des categories</h6>
                                    
                                </div>
                                <!-- Card Body -->
                                                                <div class="card-body">
                                
  <table class="table table-striped">
 <tr>
 <th>ID</th>
 <th>Catégorie</th>
 <th>Date Création</th><th>Suppression<th>Edition</th>
 </tr>
 <c:forEach items="${model.categories}" var="cat">
 <tr> 
 <td>${cat.idCat }</td>
 <td>${cat.nomCat }</td>
 <td><fmt:formatDate pattern="dd/MM/yyyy" value="${cat.dateCreation}"/></td>
 <td><a onclick="return confirm('Etes-vous sûr ?')"
href="supprimerCat?id=${cat.idCat }">Supprimer</a></td>
 <td><a href="editerCat?id=${cat.idCat }">Edit</a></td>
 </tr>
 </c:forEach> 
 </table>
                            </div>
                        </div>

                        <!-- Pie Chart -->
                        <div class="col-xl-4 col-lg-5">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div
                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Recherche des categories</h6>
                                    
                                </div>
                                <!-- Card Body -->
                                <div class="card-body">

 <div class="card-header">
 Recherche des categories
 </div>
 <div class="card-body">
 <form action="chercher.do" method="get">
 <label>Mot Clé</label>
 <input type="text" name="motCle" value="${model.motCle}" />
 <button type="submit" class="btn btn-primary">Chercher</button>
 </form> 
 
 </div>
</div>
</div>                                        
                                 
                                </div>
                            </div>
                        

<jsp:include page="../footer.jsp"></jsp:include>
 
   
    

  