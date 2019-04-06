---
layout: page
title: News
description: What we're working on
image: assets/images/eastbank.jpg
nav-menu: true
showit: 1
---

<!-- Main -->
<div id="main" class="alt">

<!-- One -->
<div class="inner">
		<header class="major">
			<h1>News</h1>
		</header>
</div>

<section id="two">
	<div class="inner">
	<span>
          {% for post in site.posts %}
	  {% if post.title != 404 %}
	  <header class="major">
	    <h2>{{ post.title }}</h2>
	  </header>
	  {% if post.date %}<p>{{ post.date }}</p>{% endif %} - <a href="{{ post.url }}">Read More</a>
		   
		      
		         
	  {% endif %}
          {% endfor %}
	</span>
	</div>	
</section>

</div>
