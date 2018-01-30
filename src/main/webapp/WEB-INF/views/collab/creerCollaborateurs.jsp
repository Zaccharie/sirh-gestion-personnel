<%@ page import="java.util.List"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>SGP - App</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body class="container-fluid">

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Logo</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
            aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <a class="nav-item nav-link active" href="index.html">Collaborateurs
                    <span class="sr-only">(current)</span>
                </a>
                <a class="nav-item nav-link" href="statistiques.html">Statistiques</a>
                <a class="nav-item nav-link" href="activités.html">Activités</a>
            </div>
        </div>
    </nav>

    <div class="container-fluid">

        <div class="row">
            <div class="col">
                <h1>Nouveau collaborateur</h1>
            </div>
        </div>
        <br/>
        <div class="row">
            <div class="container">
                <form class="needs-validation" novalidate method="post" action="<%=request.getContextPath()%>/collaborateurs/editer">
                    <div class="form-group row">
                        <label for="colFormLabelLg" class="col-md-5 col-sm-12 col-form-label col-form-label-lg">Nom</label>
                        <div class="col-sm-12 col-md-7">
                            <input type="text" class="form-control form-control-lg" id="nom" name="nom" placeholder="" required>
                            <div class="invalid-feedback">
                                Le nom est obligatoire.
                            </div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="colFormLabelLg" class="col-md-5 col-sm-12 col-form-label col-form-label-lg">Prénom</label>
                        <div class="col-sm-12 col-md-7">
                            <input type="text" class="form-control form-control-lg" id="prenom" name="prenom" placeholder="" required>
                            <div class="invalid-feedback">
                                Le prénom est obligatoire.
                            </div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="colFormLabelLg" class="col-md-5 col-sm-12 col-form-label col-form-label-lg">Date de naissance</label>
                        <div class="col-sm-12 col-md-7">
                            <input type="date" class="form-control form-control-lg" id="dateNaissance" name="dateNaissance" placeholder="" required>
                            <div class="invalid-feedback">
                                Le date de naissance est obligatoire.
                            </div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="colFormLabelLg" class="col-md-5 col-sm-12 col-form-label col-form-label-lg">Adresse</label>
                        <div class="col-sm-12 col-md-7">
                            <input type="text" class="form-control form-control-lg" id="adresse" name="adresse" placeholder="" required>
                            <div class="invalid-feedback">
                                L'adresse est obligatoire.
                            </div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="colFormLabelLg" class="col-md-5 col-sm-12 col-form-label col-form-label-lg">Numéro de sécurité sociale</label>
                        <div class="col-sm-12 col-md-7">
                            <input type="text" class="form-control form-control-lg" id="numeroSecu" name="numeroSecu" placeholder="" required>
                            <div class="invalid-feedback">
                                Le numéro de sécurité sociale est obligatoire.
                            </div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-12">
                            <div class="float-right">
                                <button type="button" onClick="isParamMissing()" class="btn btn-dark" data-toggle="modal" data-target="#exampleModal">Créer</button>
                            </div>
                        </div>

                    </div>
                </form>
            </div>
        </div>

        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Création d'un collaborateur</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <p class="col">Vous êtes sur le point de créer un nouveau collaborateur :</p>
                        </div>
                        <div class="row">
                            <p class="col-6">Nom:</p>
                            <p class="col-6" id="nomModal"></p>
                        </div>
                        <div class="row">
                            <p class="col-6">Prénom:</p>
                            <p class="col-6" id="prenomModal"></p>
                        </div>
                        <div class="row">
                            <p class="col-6">Date de naissance:</p>
                            <p class="col-6" id="dateNaissanceModal"></p>
                        </div>
                        <div class="row">
                            <p class="col-6">Adresse:</p>
                            <p class="col-6" id="adresseModal"></p>
                        </div>
                        <div class="row">
                            <p class="col-6">Numéro de sécurité sociale:</p>
                            <p class="col-6" id="secuModal"></p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Annuler</button>
                        <button type="button" onClick="valider()" class="btn btn-primary">Confirmer</button>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
    <script>
        {
            var urlSearch = document.location.search;	
            if (urlSearch === "?errors") {
            	
            	var nom = document.getElementById("nom");
            	var prenom = document.getElementById("prenom");
            	var dateNaissance = document.getElementById("dateNaissance");
            	var adresse = document.getElementById("adresse");
            	var numeroSecu = document.getElementById("numeroSecu");
            	
            	if(nom.value === ""){
            		nom.className = "form-control is-invalid";
            	}
            	if(prenom.value === ""){
            		prenom.className = "form-control is-invalid";
            	}
            	if(dateNaissance.value === ""){
            		dateNaissance.className = "form-control is-invalid";
            	}
            	if(adresse.value === ""){
            		adresse.className = "form-control is-invalid";
            	}
            	if(numeroSecu.value === ""){
            		numeroSecu.className = "form-control is-invalid";
            	}
            }
            
            function isParamMissing(){
            	var nom = document.getElementById("nom").value;
            	var prenom = document.getElementById("prenom").value;
            	var dateNaissance = document.getElementById("dateNaissance").value;
            	var adresse = document.getElementById("adresse").value;
            	var numeroSecu = document.getElementById("numeroSecu").value;
            	
            	if(nom === "" || prenom === "" || dateNaissance === "" || adresse === "" || numeroSecu === ""  ){
            		if(document.location.search == "?errors"){
            			window.location.replace(document.location.href);
            		}
            		else{
            			console.log(document.location)
            			window.location.replace(document.location.href+"?errors");	
            		}
            	}
            	else {
            		document.getElementById("nomModal").innerHTML = nom;
            		document.getElementById("prenomModal").innerHTML = prenom;
            		document.getElementById("dateNaissanceModal").innerHTML = dateNaissance;
            		document.getElementById("adresseModal").innerHTML = adresse;
            		document.getElementById("secuModal").innerHTML = numeroSecu;
            	}

            }
            
            function valider(){
            	document.forms[0].submit();
            }
        }
    </script>
</body>

</html>