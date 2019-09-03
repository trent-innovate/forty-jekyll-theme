---
layout: page
title: Innovate Trent - Meeting Minutes
---

<!-- Main -->
<div id="main" class="alt">

<!-- One -->
<section id="one">
	<div class="inner">
		<header class="major">
			<h1>{{ page.title }}</h1>
		</header>

  {% for minute in site.minutes %}
  <article>
    <header>
      <h3><a href="{{ site.url }}{{ minute.url }}">{{ minute.date | date: "%B %-d, %Y" }}</a></h3>
    </header>
    <br />
  </article>
  {% endfor %}
</div>
