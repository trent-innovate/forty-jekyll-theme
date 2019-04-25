---
title: Innovate Channels
layout: page
description: See what's happening at Trent
image: assets/images/gzowski.jpg
nav-menu: true
showit: 3
---

<!-- Main -->
<div id="main">

<!-- One -->
<section id="one">
	<div class="inner">
		<header class="major">
			<h2>Innovate Channels</h2>
		</header>
        
{% include searchbar.html %}
        
 <h3 class="center">All Channels:</h3>
       
</div>

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
</section></div>
