<jsp:include page="../header1.jsp"></jsp:include>

 <!-- Content Row -->

                    <div class="row">

                        <!-- Area Chart -->
                        <div class="col-xl-8 col-lg-7">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div
                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Liste des produits</h6>
                                </div>
                                <!-- Card Body -->
                                <div class="card-body">
                                
<table class="table table-striped">
 <tr>
 <th>ID</th><th>Nom Produit</th><th>Prix</th><th>Catégorie</th>
 </tr>
 <c:forEach items="${model.produits}" var="p">
 <tr>
 <td>${p.idProduit }</td>
 <td>${p.nomProduit }</td>
 <td>${p.prix }</td>
 <td>${p.categorie.nomCat }</td>
 <td><a onclick="return confirm('Etes-vous sûr ?')"
href="supprimer.do?id=${p.idProduit }">Supprimer</a></td>
 <td><a href="editer.do?id=${p.idProduit }">Edit</a></td>
 </tr>
 </c:forEach> 
 </table>                                </div>
                            </div>
                        </div>

                        <!-- Pie Chart -->
                        <div class="col-xl-4 col-lg-5">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div
                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Recherche de produit</h6>
                                    
                                </div>
                                <!-- Card Body -->
                                <div class="card-body">

 <div class="card-header">
 Recherche des Produits
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
 
   
    

  