---
title: Competiton Teams
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
			<h2>Competition Teams</h2>
		</header>
<h4 class="center">Welcome, one and all, to Innovate Trent's Compeition Teams page!
Here you'll find a list of our current teams, their members, and the badges they have earned.
<br />
<br />
Want to be a part of one of these fine teams? Perhaps you could consider <a href="{{ site.url}}/join">joining us!</a></h4>

</div>
</article>

<!-- The section below is for the Vue instance -->

<article id="vue" v-bind:style="{ backgroundColor: teamColour }" class="center">
    <h3>(( teamName ))</h3>
    <img class="team-logo" :src="teamLogo" :alt="teamName">
    <br />
    <br />
    <p>
      (( teamMotto ))
    </p>
    <h4>Members: </h4>
    <ul class="outta-bullets">
      <div class="inline" v-for="(member, index) in teamMembers" :key="index">
        <li class="member-picture">
        <img :src="member.picture" :alt="member.name" />
        </li>
        <span></span>
      </div>
      <br />
      <div class="inline" v-for="(member, index) in teamMembers" :key="index">
        <li class="member-name">(( member.name ))</li>
        <span></span>
      </div>
      <br />
      <div class="inline" v-for="(member, index) in teamMembers" :key="index">
        <li class="member-name">
        <div v-if="member.socials.linkedin">
          <a class="icon alt fab fa-dev" :href="member.socials.linkedin" rel="noreferrer nofollower" target="_blank"><span class="label">(( member.name ))'s LinkedIn</span></a>
        </div>
        <div v-if="member.socials.facebook">
          <a class="icon alt fab fa-facebook" :href="member.socials.facebook" rel="noreferrer nofollower" target="_blank"><span class="label">(( member.name ))'s Facebook</span></a>
        </div>
        <div v-if="member.socials.twitter">
          <a class="icon alt fab fa-twitter" :href="member.socials.twitter" rel="noreferrer nofollower" target="_blank"><span class="label">(( member.name ))'s Twitter</span></a>
        </div>
        <div v-if="member.socials.github">
          <a class="icon alt fab fa-github" :href="member.socials.github" rel="norefernofollower" target="_blank"><span class="label">(( member.name ))'s GitHub</span></a>
        </div>
        <div v-if="member.socials.instagram">
          <a class="icon alt fab fa-github" :href="member.socials.instagram" rel="norefernofollower" target="_blank"><span class="label">(( member.name ))'s Instagram</span></a>
        </div>
        <div v-if="member.socials.dev">
          <a class="icon alt fab fa-dev" :href="member.socials.dev" rel="noreferrer nofollower" target="_blank"><span class="label">(( member.name ))'s Dev.to</span></a>
        </div>
        <div v-if="member.socials.website">
          <div class="www"><a :href="member.socials.website" rel="noreferrer nofollower" target="_blank"><small>WWW</small></a></div>    
        </div>
        </li>
        <span></span>
      </div>
    </ul>
    <h4>Badges: (( teamBadges == 'Waiting for Team Badges...' ? teamBadges : '' ))</h4>
    <div v-if="teamBadges != 'Waiting for Team Badges...'">
      <ul class="outta-bullets">
        <div class="inline" v-for="(badge, index) in teamBadges" :key="index">
          <li class="badge">
            <img :src="`https://raw.githubusercontent.com/trent-innovate/design-teams-data/master/img/badges/${badge.name}`" :alt="badge.description" :data-tooltip="badge.description" />
          </li>
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
<script src="https://unpkg.com/vue-material"></script>

<script>

Vue.use(VueMaterial.default)

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
      teamMembers: [],
      teamLogo: '',
      teamMotto: '',
      showDialog: false
    }
  },
    created: function() {
      Vue.axios.get(api).then(function(response) {
        console.log(response)
        instance.teamName = response.data.teams[0].name
        instance.teamLogo = "https://raw.githubusercontent.com/trent-innovate/design-teams-data/master/img/logos/" + response.data.teams[0].logo
        instance.teamMotto = response.data.teams[0].motto
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