<html>

<head>
<link rel="shortcut icon" type="image/png" href="/static/images/favicon.ico"/>
<style>
@import url("https://fonts.googleapis.com/css2?family=Inconsolata:wght@300;400;500;600;700&display=swap");
* {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

body {
  width: 90%;
  height: 100vh;
  margin: 0 auto;
  font-family: "Inconsolata", monospace;
}
body header {
  height: 5%;
  display: flex;
  align-items: center;
}
body header h4 {
  text-transform: uppercase;
  color: #333333;
}
body main {
  height: 90%;
  width: 100%;
  display: grid;
  grid-template-columns: 1fr 1fr;
  column-gap: 50px;
  align-items: center;
}
body main section:first-of-type {
  display: flex;
  justify-content: center;
}
body main section:first-of-type img {
  width: 90%;
}
body main section:last-of-type {
  display: flex;
  flex-direction: column;
  row-gap: 30px;
}
body main section:last-of-type h5 {
  font-size: 35px;
  line-height: 50px;
}
body main section:last-of-type p {
  font-size: 16px;
  width: 80%;
  line-height: 25px;
}
body main section:last-of-type button {
  width: fit-content;
  padding: 12px 20px;
  background-color: #333333;
  color: #fff;
  text-transform: uppercase;
  font-size: 10px;
  border: 0;
  cursor: pointer;
}
body footer {
  height: 5%;
  color: #BDBDBD;
  display: grid;
  place-items: center;
  font-size: 12px;
}
body footer a {
  text-decoration: none;
  color: inherit;
}

@media only screen and (max-width: 375px) {
  body main {
    display: flex;
    flex-direction: column;
    justify-content: center;
    row-gap: 30px;
  }
  body main section:first-of-type img {
    width: 80%;
  }
}
</style>
</head>
<body>


	<header>
		<h4>404 not found</h4>
	</header>

	<main>
		<section class="section--image">
			<img src="https://vetri-suriya.web.app/devchallenges/404-not-found/Scarecrow.png" alt="">
		</section>
		<section class="section--content">
			<h5>I have bad news for you</h5>
			<p>The page you are looking for might be removed or is temporarily unavailable</p>
			<button>back to homepage</button>
		</section>
	</main>

	<footer>
		<p>Created by - <a href="https://vetri-suriya.web.app/"><span>Vetri Suriya</span></a></p>
	</footer>


</body>
</html>