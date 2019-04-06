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

<!-- Just a list of Posts
<section id="two">
	<div class="inner">
          {% for post in site.posts %}
	  {% if post.title != 404 %}
	  <header class="major">
	    <h2>{{ post.title }}</h2>
	  </header>
      <p>{{ post.synopsis }}</p>    
	  {% if post.date %}<p>{{ post.date }}</p>{% endif %}
	  <a href="{{ post.url }}">Read More</a>
      <hr />
      <br />
	  {% endif %}
      {% endfor %}   
</section>
	</div> 
-->

<section class="tiles">
  {% for post in site.posts %}
  <article>
    <span class="image">
      <img src="{{ post.image }}" alt="" />
    </span>
    <header class="major">
      <h3><a href="{{ post.url  | relative_url }}" class="link">{{ post.title }}</a></h3>
      <p>{{ post.synopsis | truncate: 150 }}</p>
    </header>
  </article>
  {% endfor %}
</section>
   
</div>
