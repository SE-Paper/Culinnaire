<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="base"/>
    <title>Busqueda</title>
</head>
<body>
<div class="container">
    <div class="fill">
        <br>
        <p class="tit" id="" style="font-size: 40px">BUSCADOR</p>
        <div class="row">
            <div class="center-block ing" style="width:80%">
                <div class="input-group">
                    <div class="col-sm-3">
                        <span class="input-group-addon" id="ingredientes">Ingredientes:</span>
                    </div>
                    <div class="col-sm-9">
                        <input type="text" class="form-control campo" placeholder="" aria-describedby="basic-addon1">
                    </div>
                </div>
                <div class="input-group">
                    <div class="col-sm-3">
                        <span class="input-group-addon" id="categoria">Categoría:</span>
                    </div>
                    <div class="col-sm-9">
                        <!input type="text" class="form-control campo" placeholder="" aria-describedby="basic-addon1">
                        <label for="sel"></label>
                        <select class="form-control campo" id="sel">
                            <g:each var="category" in="${categories}">
                                <option>${category.name}</option>
                            </g:each>
                        </select>
                    </div>
                </div>
                <br>
                <hr style="width: 100%; color: #111160; height: 4px; background-color:#111160;" />
                <br>
                <div class="input-group">
                    <div class="col-sm-3">
                        <span class="input-group-addon" id="pais">País:</span>
                    </div>
                    <div class="col-sm-9">
                        <label for="sel2"></label>
                        <select class="form-control campo" id="sel2">
                            <g:each var="country" in="${countries}">
                                <option>${country.name}</option>
                            </g:each>
                        </select>
                    </div>
                </div>
                <div class="input-group">
                    <div class="col-sm-3">
                        <span class="input-group-addon" id="categoria2">Categoría:</span>
                    </div>
                    <div class="col-sm-9">
                        <!input type="text" class="form-control campo" placeholder="" aria-describedby="basic-addon1">
                        <label for="sel3"></label>
                        <select class="form-control campo" id="sel3">
                            <g:each var="category" in="${categories}">
                                <option>${category.name}</option>
                            </g:each>
                        </select>
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="col-sm-6">
                        <button type="button" class="btn btn-primary btn-lg center-block botones b2" style="margin-left: 2%">Aleatorio</button>
                    </div>
                    <div class="col-sm-6">
                        <button type="button" class="btn btn-primary btn-lg center-block botones b2" style="margin-right: 2%">Buscar</button>
                    </div>
                </div>
                <br>
            </div>
        </div>
    </div>
</div>
</body>
</html>