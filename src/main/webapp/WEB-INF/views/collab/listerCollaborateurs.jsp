<%@ page import="java.util.List"%>
<%@ page import="dev.sgp.entite.Collaborateur" %>
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
                <div class="float-right">
                    <a class="btn btn-dark" href="creer-collab.html" role="button">Ajouter un collaborateur</a>
                </div>
            </div>

        </div>

        <div class="row">
            <div class="col">
                <h1>Les collaborateurs</h1>
            </div>
        </div>

        <div class="row">
            <div class="container">
                <div class="col-12">
                    <form>
                        <div class="form-row">
                            <div class="col-12 col-md-3">
                                <label for="inputName" class="col">Rechercher un nom ou prénom qui commence par :</label>
                            </div>
                            <div class="col-12 col-md-3">
                                <input type="text" class="form-control" id="inputName" placeholder="">
                            </div>
                            <div class="col-12 col-md-3">
                                <button type="submit" class="btn btn-dark">Rechercher</button>
                            </div>
                            <div class="form-check col-md-3">
                                <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
                                <label class="form-check-label" for="defaultCheck1">
                                    Voir les collaborateurs désactivés
                                </label>
                            </div>
                        </div>
                        <br>
                        <div class="form-row">
                            <div class="col-12 col-md-3">
                                <label for="inputName" class="col">Filtrer par département:</label>
                            </div>
                            <div class="col-12 col-md-3">
                                <select class="custom-select">
                                    <option selected>Tous</option>
                                    <option value="1">Comptabilité</option>
                                    <option value="2">Ressources Humaines</option>
                                    <option value="3">Informatique</option>
                                </select>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <br/>
        <div class="row">
            <div class="col-md-4 col-12">
                <div class="card">
                    <div class="card-header">
                        NOM Prénom
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-12 col-xl-6">
                                <img src="./img/thumbnail.png" alt="..." class="img-thumbnail">
                            </div>
                            <div class="col-12 col-xl-6">
                                <p class="card-text">Fonction</p>
                                <p class="card-text">Département</p>
                                <p class="card-text">Email</p>
                                <p class="card-text">Téléphone</p>
                                <a href="editer-collab.html" class="btn btn-dark float-right" role="button">Editer</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-12">
                <div class="card">
                    <div class="card-header">
                        NOM Prénom
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-12 col-xl-6">
                                <img src="./img/thumbnail.png" alt="..." class="img-thumbnail">
                            </div>
                            <div class="col-12 col-xl-6">
                                <p class="card-text">Fonction</p>
                                <p class="card-text">Département</p>
                                <p class="card-text">Email</p>
                                <p class="card-text">Téléphone</p>

                                <div class="float-right">
                                    <a href="editer-collab.html" class="btn btn-dark">Editer</a>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-12">
                <div class="card">
                    <div class="card-header">
                        NOM Prénom
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-12 col-xl-6">
                                <img src="./img/thumbnail.png" alt="..." class="img-thumbnail">
                            </div>
                            <div class="col-12 col-xl-6">
                                <p class="card-text">Fonction</p>
                                <p class="card-text">Département</p>
                                <p class="card-text">Email</p>
                                <p class="card-text">Téléphone</p>

                                <div class="float-right">
                                    <a href="editer-collab.html" class="btn btn-dark">Editer</a>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br/>
        <div class="row">
            <div class="col-md-4 col-12">
                <div class="card">
                    <div class="card-header">
                        NOM Prénom
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-12 col-xl-6">
                                <img src="./img/thumbnail.png" alt="..." class="img-thumbnail">
                            </div>
                            <div class="col-12 col-xl-6">
                                <p class="card-text">Fonction</p>
                                <p class="card-text">Département</p>
                                <p class="card-text">Email</p>
                                <p class="card-text">Téléphone</p>

                                <div class="float-right">
                                    <a href="editer-collab.html" class="btn btn-dark">Editer</a>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-12">
                <div class="card">
                    <div class="card-header">
                        NOM Prénom
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-12 col-xl-6">
                                <img src="./img/thumbnail.png" alt="..." class="img-thumbnail">
                            </div>
                            <div class="col-12 col-xl-6">
                                <p class="card-text">Fonction</p>
                                <p class="card-text">Département</p>
                                <p class="card-text">Email</p>
                                <p class="card-text">Téléphone</p>

                                <div class="float-right">
                                    <a href="editer-collab.html" class="btn btn-dark">Editer</a>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-12">
                <div class="card">
                    <div class="card-header">
                        NOM Prénom
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-12 col-xl-6">
                                <img src="./img/thumbnail.png" alt="..." class="img-thumbnail">
                            </div>
                            <div class="col-12 col-xl-6">
                                <p class="card-text">Fonction</p>
                                <p class="card-text">Département</p>
                                <p class="card-text">Email</p>
                                <p class="card-text">Téléphone</p>

                                <div class="float-right">
                                    <a href="editer-collab.html" class="btn btn-dark">Editer</a>
                                </div>

                            </div>
                        </div>
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
</body>

</html>