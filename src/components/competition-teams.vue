<template>
  <div id="team-wrapper">
    <div class="comp-team">
      <div class="comp-team-generate-team" v-for="team in teams">
        <team
          :name="team.name" 
          :logo="team.logo" 
          :color="team.color"
          :motto="team.motto"
          :badges="team.badges"
          :members="team.members"
        >
        </team> 
      </div>
    </div>
  </div>
</template>

<script>
import Vue from 'vue'
import axios from 'axios'
import VueAxios from 'vue-axios'
 
Vue.use(VueAxios, axios)

const api = "https://raw.githubusercontent.com/trent-innovate/design-teams-data/master/offline_editor_data.json"

export default {
  name: 'competition-teams',
  data: function () {
    return {
      teams: null
    }
  },
  created: function() {
    this.axios.get(api).then((response) => {
      this.teams = response.data.teams
    })
  }
}

Vue.component('badge', {
  props: {
    name: String,
    image: String,
    desc: String,
    unlocked: false
  },
  template: `
    <div>
      <div v-if="unlocked || unlocked === 'true'" :style="{ 'background-image': 'url(' + image + ')' }" class="modal-badge-img"></div>
      <div v-else :style="{ 'background-image': 'url(' + image + ')' }" class="modal-badge-img-locked"><p class="locked">/</p></div>
    </div>
  `
})

Vue.component('member', {
  props: {
    name: String,
    image: String,
    desc: String,
  },
  data: function () {
    return {
      showDetails: false
    }
  },
  methods: {
    memberDetails: function() {
      this.showDetails = !this.showDetails
    }
  },
  template: `
    <div v-if="!showDetails" class="modal-member-container">
      <div class="center modal-member-content-img">
        <img :title="name" class="modal-member-img" :src="image" />
      </div>

      <div class="modal-member-content-name">
        <p>{{ name }}</p>
      </div>     
      <div class="modal-member-content-more">
        <button v-on:click="memberDetails" class="member-font-size">...</button>
      </div>     
    </div>

    <div class="modal-member-container" v-else>
      <div class="modal-member-content-socials">
	    <a href="{{ member.github_url }}" class="icon alt fab fa-github" target="_blank" rel="noreferrer"><span class="label modal-member-icon">GitHub</span></a>
	    <a href="{{ member.facebook_url }}" class="icon alt fab fa-facebook" target="_blank" rel="noreferrer"><span class="label modal-member-icon">Facebook</span></a>
	    <a href="{{ member.twitter_url }}" class="icon alt fab fa-twitter" target="_blank" rel="noreferrer"><span class="label modal-member-icon">Twitter</span></a>
      </div>

      <div :style="{ borderLeft: '2px solid #F69D5C', color: color }" class="modal-member-content-name">
        <p class="modal-member-content-desc">This will hold the description of the member. Perhaps their year, program of study, hobbies.</p>
      </div>     
      <div class="modal-member-content-more">
        <button :style="{ color: '#F69D5C' }" v-on:click="memberDetails" class="member-font-size">...</button>
      </div>   
    </div>
  `
})

Vue.component('team', {
  props: {
    name: String,
    color: String,
    logo: String,
    members: Array,
    badges: Array,
    motto: String
  },
  data: function () {
    return {
      show: false
    }
  },
  methods: {
    showMore: function() {
      this.show = !this.show
    },
    isMobile: function() {
      if(screen.width < 1200)
        return true
      else 
        return false
    }
  },
  template: `
<div>
  <button v-on:click="showMore" :style="{ backgroundColor: color }" class="comp-team-container">
     <h1 v-if="name.length > 7" :style="{fontSize: '1rem'}" class="comp-team-name">
      {{ name }}
     </h1>

     <h1 v-else class="comp-team-name">
      {{ name }}
     </h1>

     <img class="comp-team-logo" :src="logo" />    
  </button>


  <div class="modal" v-if="this.show">
    <div v-if="!isMobile()" class="modal-content">
      <div class="modal-header">
        <h1 :style="{ color: color }" class="modal-team-name">{{ name }}<span class="color-border">|</span> </h1>
        <p v-if="motto" class="modal-team-motto">"{{ motto }}"</p>
      </div>
      <div class="modal-container">
        <div class="modal-left">
          <div class="modal-team-info">
            <img class="modal-img" :src="logo" />    
          </div>
          <div class="modal-team-badge">
            <div class="badge-container" v-for="badge in badges">
              <badge
                :name="badge.badge_name"
                :desc="badge.badge_description"
                :image="badge.badge_image"
                :unlocked="badge.badge_isUnlocked"
                :points="badge.badge_points"
              ></badge>
            </div>
          </div>
        </div>

        <div class="modal-right">
          <div class="modal-members" v-for="member in members">
            <member
              :name="member.member_name"
              :image="member.member_picture"
            >
            </member>
          </div>
        </div>
      </div>
      <button v-on:click="showMore" class="modal-exit">Close</button>
    </div>
    
    <div v-else class="modal-content">
      <div class="modal-header-mobile">
        <h1 :style="{ color: color }" class="modal-team-name-mobile">{{ name }}</h1>
        <p v-if="motto" class="modal-team-motto">"{{ motto }}"</p>
      </div>

      <div class="modal-left-mobile">
        <div class="modal-team-info">
          <img class="modal-img" :src="logo" />    
        </div>
        <div class="modal-team-badge">
          <div class="badge-container" v-for="badge in badges">
            <badge
              :name="badge.badge_name"
              :desc="badge.badge_description"
              :image="badge.badge_image"
              :unlocked="badge.badge_isUnlocked"
              :points="badge.badge_points"
            ></badge>
          </div>
        </div>
      </div>

      <div class="modal-right-mobile">
        <div class="modal-members" v-for="member in members">
          <member
            :name="member.member_name"
            :image="member.member_picture"
          >
          </member>
        </div>
      </div>
      <button v-on:click="showMore" class="modal-exit">Close</button>
  </div>
</div>
</div>
  `
})
</script>
