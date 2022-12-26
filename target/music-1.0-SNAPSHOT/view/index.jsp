<%-- 
    Document   : index
    Created on : Dec 26, 2022, 9:51:07 PM
    Author     : haodeptrai
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"
	      integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w=="
	      crossorigin="anonymous" />
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="style.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
	      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<style>
	    :root {
		--primary-color: #ec1f55;
		--text-color: #333;
	    }

	    * {
		padding: 0;
		margin: 0;
		box-sizing: inherit;
	    }

	    body {
		background-color: #f5f5f5;
	    }

	    html {
		box-sizing: border-box;
		font-family: "Poppins", sans-serif;
	    }

	    .player {
		position: relative;
		max-width: 480px;
		margin: 0 auto;
	    }

	    .player .icon-pause {
		display: none;
	    }

	    .player.playing .icon-pause {
		display: inline-block;
	    }

	    .player.playing .icon-play {
		display: none;
	    }

	    .dashboard {
		padding: 16px 16px 14px;
		background-color: #fff;
		position: fixed;
		top: 0;
		width: 100%;
		max-width: 480px;
		border-bottom: 1px solid #ebebeb;
	    }

	    /* HEADER */
	    header {
		text-align: center;
		margin-bottom: 10px;
	    }

	    header h4 {
		color: var(--primary-color);
		font-size: 12px;
	    }

	    header h2 {
		color: var(--text-color);
		font-size: 20px;
	    }

	    /* CD */
	    .cd {
		display: flex;
		margin: auto;
		width: 200px;
	    }

	    .cd-thumb {
		width: 100%;
		padding-top: 100%;
		border-radius: 50%;
		background-color: #333;
		background-size: cover;
		margin: auto;
	    }

	    /* CONTROL */
	    .control {
		display: flex;
		align-items: center;
		justify-content: space-around;
		padding: 18px 0 8px 0;
	    }

	    .control .btn {
		color: #666;
		padding: 18px;
		font-size: 18px;
	    }

	    .control .btn.active {
		color: var(--primary-color);
	    }

	    .control .btn-toggle-play {
		width: 56px;
		height: 56px;
		border-radius: 50%;
		font-size: 24px;
		color: #fff;
		display: flex;
		align-items: center;
		justify-content: center;
		background-color: var(--primary-color);
	    }

	    .progress {
		width: 100%;
		-webkit-appearance: none;
		height: 6px;
		background: #d3d3d3;
		outline: none;
		opacity: 0.7;
		-webkit-transition: 0.2s;
		transition: opacity 0.2s;
	    }

	    .progress::-webkit-slider-thumb {
		-webkit-appearance: none;
		appearance: none;
		width: 12px;
		height: 6px;
		background-color: var(--primary-color);
		cursor: pointer;
	    }

	    /* PLAYLIST */
	    .playlist {
		margin-top: 408px;
		padding: 12px;
	    }

	    .song {
		display: flex;
		align-items: center;
		margin-bottom: 12px;
		background-color: #fff;
		padding: 8px 16px;
		border-radius: 5px;
		box-shadow: 0 2px 3px rgba(0, 0, 0, 0.1);
	    }

	    .song.active {
		background-color: var(--primary-color);
	    }

	    .song:active {
		opacity: 0.8;
	    }

	    .song.active .option,
	    .song.active .author,
	    .song.active .title {
		color: #fff;
	    }

	    .song .thumb {
		width: 44px;
		height: 44px;
		border-radius: 50%;
		background-size: cover;
		margin: 0 8px;
	    }

	    .song .body {
		flex: 1;
		padding: 0 16px;
	    }

	    .song .title {
		font-size: 18px;
		color: var(--text-color);
	    }

	    .song .author {
		font-size: 12px;
		color: #999;
	    }

	    .song .option {
		padding: 16px 8px;
		color: #999;
		font-size: 18px;
	    }
	</style>
    </head>
    <body>
	<nav class="navbar navbar-expand-lg bg-body-tertiary">
	    <div class="container-fluid">
		<a class="navbar-brand" href="index.jsp">Home</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
		    <ul class="navbar-nav me-auto mb-2 mb-lg-0">

			<li class="nav-item">
			    <a class="nav-link active" aria-current="page" href="view/login.jsp">Đăng Nhập</a>
			</li>

			<li class="nav-item">
			    <a class="nav-link" href="Register">Đăng Ký</a>
			</li>

			<li class="nav-item">
			    <a class="nav-link active" aria-current="page" href="Logout">Đăng Xuất</a>
			</li>


			<li class="nav-item">
			    <c:if test="${sessionScope.user_session ne null}">
				<a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/admin">Đăng Bài Hát</a>
			    </c:if>
			</li>


		    </ul>
		    <form class="d-flex" role="search">
			<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
			<button class="btn btn-outline-success" type="submit">Search</button>
		    </form>
		</div>
	    </div>
	</nav>
	<div class="player">
	    <!-- Dashboard -->
	    <div class="dashboard">
		<!-- Header -->
		<header>
		    <h2>String 57th & 9th</h2>
		</header>

		<!-- CD -->
		<div class="cd">
		    <div class="cd-thumb" style="background-image: url('https://avatar-ex-swe.nixcdn.com/singer/avatar/2021/01/14/7/d/d/9/1610608711237.jpg')">
		    </div>
		</div>

		<!-- Control -->
		<div class="control">
		    <div class="btn btn-repeat">
			<i class="fas fa-redo"></i>
		    </div>
		    <div class="btn btn-prev">
			<i class="fas fa-step-backward"></i>
		    </div>
		    <div class="btn btn-toggle-play">
			<i class="fas fa-pause icon-pause"></i>
			<i class="fas fa-play icon-play"></i>
		    </div>
		    <div class="btn btn-next">
			<i class="fas fa-step-forward"></i>
		    </div>
		    <div class="btn btn-random">
			<i class="fas fa-random"></i>
		    </div>
		</div>

		<input id="progress" class="progress" type="range" value="0" step="1" min="0" max="100">

	    </div>

	    <!-- Playlist -->
	    <div class="playlist">
		<c:forEach var="item" items="${listMusic}">
		    <div class="song active">
			<div class="thumb"
			     style="background-image: url('${item.image}')">
			</div>
			<div class="body">
			    <h3 class="title">${item.name}</h3>
			    <p class="author">${item.singer}</p>
			</div>

		    </div>
		    <audio controls>
			<source src="${item.path}" type="audio/mpeg">
		    </audio>
		</c:forEach>

	    </div>
	</div>
	<script src="js/index.js"></script>
    </body>
</html>
