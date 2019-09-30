---
title: Design Teams
layout: page
description: Meet the Teams
image: assets/images/gzowski.jpg
nav-menu: true
showit: 3
---

<!-- Main -->
<div id="main">

<!-- One -->
<article id="one">
	<div class="inner">
		<header class="major">
			<h2>Design Teams</h2>
		</header>
<h4 class="center">Welcome, one and all, to Innovate Trent's Design Teams page!
Here you'll find a list of our current teams, their members, and the badges they have earned.
<br />
<br />
Want to be a part of one of these fine teams? Perhaps you could consider <a href="{{ site.url}}/join">joining us!</a></h4>
</div>
</article>

<!-- The section below is for the Vue instance -->

<article id="vue" v-bind:style="{ backgroundColor: teamColour }" class="center">
    <h3>(( teamName ))</h3>
    <h4>Members: </h4>
    <ul class="outta-bullets">
      <div class="inline" v-for="(member, index) in teamMembers" :key="index">
        <li class="member">(( member.name ))</li>
        <span></span>
      </div>
    </ul>
    <h4>Badges: (( teamBadges == 'Waiting for Team Badges...' ? teamBadges : '' ))</h4>
    <div v-if="teamBadges != 'Waiting for Team Badges...'">
      <ul class="outta-bullets">
        <div class="inline" v-for="(badge, index) in teamBadges" :key="index">
          <li class="badge">(( badge ))</li>
          <span></span>
        </div>
      </ul>
    <div>
    <br />
    <hr />

<!-- I know the closing section tag is missing. Jekyll
apparently doesn't like it, so I'm leaving it out. -->

<!-- Fetching the Vue, Axios, and Vue-Axios JS scripts -->
<script src="https://vuejs.org/js/vue.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.19.0/axios.min.js" type="text/javascript"></script>
<script src="https://unpkg.com/vue-axios@2.1.4/dist/vue-axios.min.js" type="text/javascript"></script>


<script>
// This variable stores the URL of the JSON file
var api = "https://raw.githubusercontent.com/trent-innovate/design-teams-data/master/teams.json";

// This variable is the Vue instance
var instance = new Vue({
  el: '#vue', // notice that we're making the section above the Vue element
  delimiters: ["((", "))"], // Because Jekyll doesn't like us using anything non-Liquid
  data: function () {
    return {
      teamName: 'Waiting for Team Name...',
      teamColour: 'Waiting for Team Colour...',
      teamBadges: 'Waiting for Team Badges...',
      teamMembers: []
    }
  },
    created: function() {
      Vue.axios.get(api).then(function(response) {
        instance.teamName = response.data.teams[0].name
        instance.teamColour = response.data.teams[0].colour
        instance.teamBadges = response.data.teams[0].badges
        instance.teamMembers = response.data.teams[0].members

        // The meat of the function; repeat this a couple times in a couple different ways
        // to make the whole thing work

        // Probably could replace this with a loop or a map()
      });
    }
});
</script>