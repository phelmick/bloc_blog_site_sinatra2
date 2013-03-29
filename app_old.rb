#!/usr/bin/env ruby

require 'sinatra'

get '/' do
"
<!DOCTYPE html>
<html>
  <head>
    <meta charset='UTF-8'>
    <title>Bloc Head's Blog</title>
    <style type='text/css'>
    #container {
      text-align: center;
      padding: 1.25em 0 0.25em 0;
      position: relative;
    }
    
    #top_nav {
      position: absolute;
      top: 0; right: 0;
      width: 100%;
    }
    
    
    #top_nav ul {
      padding: 0;
      margin: 0;
      display: inline;
    }
    
    #top_nav li {
      display: inline;
      padding-left: 1em;
      margin-left: 1em;
      
    }
    
    
    
    section {
      margin: 5px 5px 5px 5px;
      padding: 5px 5px 5px 5px;
    }
    
    h1 {
      font: 16px Tahoma, sans-serif;
      color: blue;
    }
    
    article {
      border-style: solid;
      padding: 5px 5px 5px 5px;
      overflow: hidden; /* Contain child elements that have been floated. */
    }
    
    img {
      border-radius: 5px;
    }
    
    article img {
      padding: 0 5px 0 0;
    }
    
    article p {
      font: 14px Tahoma, sans-serif;
    }
    
    a:hover {
      color: black;
    }
    
    #title {
      font: 24px Tahoma, sans-serif;
      font-weight: bold;
      text-align: center;
    }
    
    #banner {
      width: 800px;
      margin: 0 auto;
      
    }
    
    .post {
      float: left;
    }

    </style>
  </head>
  
  <body>
    <header>
	  <div class='container'>
			<nav id='top_nav'>
				<ul>
						<li><a href='#'>Login</a></li> 
						<li><a href='#'>Register</a></li> 
						<li><a href='#'>Subscribe</a></li> 
						<li><a href='#'>Admin</a></li>
					</ul>
				</nav>
      <h1 id='title'>Ramblings of a Bloc Head</h1>
	  
	    <div id='banner'>
          <img src='http://placehold.it/800x100'>
		
	    </div>
	  
	  </div>
    </header>
   
    <section>
      <article>
        <header>
          <h1>Submit a Blog Entry:</h1>
        </header>
      	<div class='post'>
          <form action='/entry'>
            <textarea name='entry' placeholder='Type your entry...' rows = '20' cols = '60'></textarea>
            <input type='submit'>
          </form>
        </div>
      </article>
    </section>
    
    <section>
      <p><a href='#'>View Comments (nn)</a></p>
      <p><a href='#'>Post Comment</a></p>
    </section>
    
	<br />
	<br />
	
    <section>
      <footer>
			<hr>
        <p>A Blochead Production - <a href='#'>About</a></p>
      </footer>
    </section>
  </body>
</html>
"

end


get '/entry' do
"
<!DOCTYPE html>
<html>
  <head>
    <meta charset='UTF-8'>
    <title>Bloc Head's Blog</title>
    <style type='text/css'>
    #container {
      text-align: center;
      padding: 1.25em 0 0.25em 0;
      position: relative;
    }
    
    #top_nav {
      position: absolute;
      top: 0; right: 0;
      width: 100%;
    }
    
    
    #top_nav ul {
      padding: 0;
      margin: 0;
      display: inline;
    }
    
    #top_nav li {
      display: inline;
      padding-left: 1em;
      margin-left: 1em;
      
    }
    
    section {
      margin: 5px 5px 5px 5px;
      padding: 5px 5px 5px 5px;
    }
    
    h1 {
      font: 16px Tahoma, sans-serif;
      color: blue;
    }
    
    article {
      border-style: solid;
      padding: 5px 5px 5px 5px;
      overflow: hidden; /* Contain child elements that have been floated. */
    }
    
    img {
      border-radius: 5px;
    }
    
    article img {
      padding: 0 5px 0 0;
    }
    
    article p {
      font: 14px Tahoma, sans-serif;
    }
    
    a:hover {
      color: black;
    }
    
    #title {
      font: 24px Tahoma, sans-serif;
      font-weight: bold;
      text-align: center;
    }
    
    #banner {
      width: 800px;
      margin: 0 auto;
      
    }
    
    .post {
      float: left;
    }

    </style>
  </head>
  
  <body>
    <header>
	  <div class='container'>
			<nav id='top_nav'>
				<ul>
						<li><a href='#'>Login</a></li> 
						<li><a href='#'>Register</a></li> 
						<li><a href='#'>Subscribe</a></li> 
						<li><a href='#'>Admin</a></li>
					</ul>
				</nav>
      <h1 id='title'>Ramblings of a Bloc Head</h1>
	  
	    <div id='banner'>
          <img src='http://placehold.it/800x100'>
		
	    </div>
	  
	  </div>
    </header>
   
    <section>
      <article>
        <header>
          <h1>Blog Entry Created at #{ Time.now } containing #{ params[:entry].length } characters</h1>
        </header>
      	<div class='post'>
          <p>#{ params[:entry].gsub(/\n/, '<br />') }</p>
        </div>
      </article>
    </section>
    
    <section>
      <p><a href='#'>View Comments (nn)</a></p>
      <p><a href='#'>Post Comment</a></p>
    </section>
    
	<br />
	<br />
	
    <section>
      <footer>
			<hr>
        <p>A Blochead Production - <a href='#'>About</a></p>
      </footer>
    </section>
  </body>
</html>
"
  
end