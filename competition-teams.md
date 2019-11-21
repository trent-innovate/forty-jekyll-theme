---
title: Competiton Teams
layout: page
description: Meet the Teams
image: assets/images/gzowski.jpg
nav-menu: true
showit: 3
---

<style>
/* #F69D5C,  #6db17f, #b7d7de */

  #main1 {
    background-color: #f0eeeb;
    background-color: #b7d7de;
  }

  #vue1 {
    width: 80vw;
    margin: auto;
    padding: 2rem;
    box-shadow: 0px 0px 5px 0px #8cb9c3;
  }

  .comp-team {
    display: flex;
    flex-wrap: wrap;
    justify-content: flex-start;
    padding-left: 1.45rem;
  }

  .comp-team button, .comp-team button:hover {
    box-shadow: none;
    outline: none;
  }

  .comp-team button.comp-team-container:hover {
    border-top: 10px solid #F69D5C;
    border-bottom: 10px solid #F69D5C;
    transition: 0.5s;
  }

  .comp-team-container {
    height: 15rem;
    width: 15rem;
    text-align: center;
    margin: 1.2rem;
    border-top: 10px solid #1d1c1c;
    border-bottom: 10px solid #1d1c1c;
    border-radius: 15px;
  }
  
  .comp-team-generate-team:nth-child(even) {
    margin-top: 7.5rem;
  }

  .comp-team-name {
    color: #f0f2f2;
    display: flex;
    justify-content: center;
  }
  
  .comp-team-logo {
    height: 40%;
    width: 60%;
    margin: 0 auto;
  }

.modal {
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.8); /* Black w/ opacity */
}

.modal-exit {
  display: flex;
  justify-content: center;
  flex-direction: row;
  margin-top: 1%;
}

.modal-content {
  width: 60vw;
  height: 100vh;
  padding-top: 4rem;
  position: relative;
  z-index: 100;
  color: #1d1c1c;
  background-color:rgba(230, 228, 223, 0.74);
  margin: 0 auto;
  display: flex;
  flex-direction: column;
}

.modal-container {
    width: 60vw;
  background-color:rgba(230, 228, 223, 0.74);
  display: flex;
}

.modal-team-name {
  margin: 0;
  padding-left: 1.4rem;
  text-shadow: 1px 1px black;
}

.modal-img {
  height: 150px;
  width: 150px;
}

.modal-left, .modal-left-mobile {
  padding: 1.5rem;
  width: 40vw;
  height: 75vh;
  flex-wrap: wrap;
  background-color: #b7d7de;
  border-top: 3px solid #1d1c1c59;
  border-bottom: 3px solid #1d1c1c59;
  border-right: 3px solid #1d1c1c59;
}

.modal-team-badge {
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
  justify-content: space-evenly;
  margin: 0 auto;
  margin-top: 2rem;
  padding: 2rem;
  height: 45vh;
  overflow: scroll;

}

.badge-container {
  height: 50px;
  width: 50px;
  margin-bottom: 1rem;
}

.modal-badge-img {
  height: 50px;
  width: 50px;
  border-top: 5px solid rgba(35, 75, 204);
  border-bottom: 5px solid rgba(35, 75, 204);
  border-radius: 5px 10px;
  background-size:     cover;                     
  background-repeat:   no-repeat;
  background-position: center center;  
}

.modal-badge-img-locked {
  height: 50px;
  width: 50px;
  background-size:     cover;                      
  background-repeat:   no-repeat;
  background-position: center center;  
  border-top: 5px solid #6f7872;
  border-bottom: 5px solid #6f7872;
  border-radius: 5px 10px;
  overflow: hidden;
}

.locked {
  font-size: 8rem;
  text-align: center;
  position: relative;
  bottom: 6rem;
  color: #6f7872;
  text-shadow: 0px 3px black;
}


.modal-member-img {
  height: 100px;
  width: 100px;
  border-radius: 10px;
  align-self: center;
  margin-right: 1rem;
}


.modal-team-info {
  display: flex;
  justify-content: space-evenly;
  height: 20vh;
}

.modal-team-motto {
  font-style: italic;
  margin: 0;
  margin-left: 3%;
  margin-top: 3%;
}

.modal-right, .modal-right-mobile {
  width: 60vw;
  height: 75vh;
  display: flex;
  flex-wrap: wrap;
  flex-direction: row;
  overflow: scroll;
  background-color: #b7d7de;
  border-top: 3px solid #1d1c1c59;
  border-bottom: 3px solid #1d1c1c59;
}


.modal-left-mobile, .modal-right-mobile {
  overflow: scroll;
  width: 100%;
}

.modal-member-container {
  width: 34vw;
  display: flex;
  height: 80%;
  flex-wrap: wrap;
}

.modal-member-content-img{
  width: 10vw;
  display: flex;
  flex-wrap: wrap;
  flex-direction: row;
  justify-content: center;
  padding-left: 1rem;
  margin-top: 1.25vh;
  margin-right: 0.5rem;
}

.modal-member-content-socials {
  width: 10vw;
  text-align: left;
  flex-wrap: wrap;
  display: flex;
  flex-direction: row;
  padding-left: 1rem;
  justify-content: space-evenly;
  margin-right: 0.5rem;
}

.modal-member-content-name {
  width: 18vw;
  flex-wrap: wrap;
  text-align: left;
  display: flex;
  flex-direction: column;
  justify-content: center;
  border-left: 2px solid #1d1c1c59;
}

.modal-member-content-more {
  width: 5vw;
  flex-wrap: wrap;
  display: flex;
  flex-direction: column;
  justify-content: center;
  text-align: left;
}

.modal-member-content-more button {
  color: black;
  margin: 0;
  outline: 0;
}
.modal-member-content-more button:hover {
  color: #F69D5C;
  margin: 0;
}

.modal-member-content-name p {
  margin: 0;
  padding-left: 2rem;
}

.modal-member-content-desc {
  font-size: 1rem;
}

.center {
  text-align: center;
}

.modal-header {
  display: flex;
  flex-wrap: wrap;
}
.modal-header-mobile {
  display: flex;
  flex-direction: column;
  text-align: center;
}

.modal-header-mobile h1 {
  margin: 0;
}

.color-border {
  color: #1d1c1c59;
}

.modal-member-icon, .modal-member-content-socials a {
  width: 25px;
  height: 25px;
  align-self: center;
  border-bottom: none;
}

.member-font-size {
  font-size: 1.2rem;
}

</style>

<!-- Main -->
<div id="main1">
  <div id="vue1">
    <div class="comp-team">
      <div class="comp-team-generate-team" v-for="team in teams">
        <team
            v-bind:name="team.name" 
            v-bind:logo="team.logo" 
            v-bind:color="team.color"
            v-bind:motto="team.motto"
            v-bind:badges="team.badges"
            v-bind:members="team.members"
        ></team> 
      </div>
    </div>



<!-- Jekyll doesn't like closing tags -->



<!-- Fetching the Vue, Axios, and Vue-Axios JS scripts -->
<script src="https://vuejs.org/js/vue.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.19.0/axios.min.js" type="text/javascript"></script>
<script src="https://unpkg.com/vue-axios@2.1.4/dist/vue-axios.min.js" type="text/javascript"></script>

<script>
// This variable stores the URL of the JSON file
var api = "https://raw.githubusercontent.com/trent-innovate/design-teams-data/master/offline_editor_data.json";
// This variable is the Vue instance
var instance = new Vue({
  el: '#vue1', // notice that we're making the section above the Vue element
  delimiters: ["((", "))"], // Because Jekyll doesn't like us using anything non-Liquid
  data: function () {
    return {
      teams: null
    }
  },
  created: function() {
    Vue.axios.get(api).then(response => {
      this.teams = response.data.teams;
    })
  }
});

Vue.component('badge', {
  delimiters: ["((", "))"],
  props: {
    name: String,
    image: String,
    desc: String,
    unlocked: false
  },
  template: `
    <div>
      <div v-if="unlocked || unlocked === 'true'" v-bind:style="{ 'background-image': 'url(' + image + ')' }" class="modal-badge-img"></div>
      <div v-else v-bind:style="{ 'background-image': 'url(' + image + ')' }" class="modal-badge-img-locked"><p class="locked">/</p></div>
    </div>
  `
});

Vue.component('member', {
  delimiters: ["((", "))"],
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
      this.showDetails = !this.showDetails;
    }
  },
  template: `
    <div v-if="!showDetails" class="modal-member-container">
      <div class="center modal-member-content-img">
        <img v-bind:title="name" class="modal-member-img" v-bind:src="image" />
      </div>

      <div class="modal-member-content-name">
        <p>((name))</p>
      </div>     
      <div class="modal-member-content-more">
        <button v-on:click="memberDetails" class="member-font-size">...</button>
      </div>     
    </div>

    <div class="modal-member-container" v-else>
      <div class="modal-member-content-socials">
        <a href="#"><img class="modal-member-icon" src="./assets/images/svgs/github.svg" /></a>
        <a href="#"><img class="modal-member-icon" src="./assets/images/svgs/facebook.svg" /></a>
        <a href="#"><img class="modal-member-icon" src="./assets/images/svgs/twitter.svg" /></a>
      </div>

      <div v-bind:style="{ borderLeft: '2px solid #F69D5C' }" class="modal-member-content-name">
        <p class="modal-member-content-desc">This will hold the description of the member. Perhaps their year, program of study, hobbies. </p>
      </div>     
      <div class="modal-member-content-more">
        <button v-bind:style="{ color: '#F69D5C' }" v-on:click="memberDetails" class="member-font-size">...</button>
      </div>   
    </div>
  `
});


Vue.component('team', {
  delimiters: ["((", "))"], // Because Jekyll doesn't like us using anything non-Liquid
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
      this.show = !this.show;
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
  <button v-on:click="showMore" v-bind:style="{ backgroundColor: color }" class="comp-team-container">
     <h1 v-if="name.length > 7" v-bind:style="{fontSize: '1rem'}" class="comp-team-name">
      ((name))
     </h1>

     <h1 v-else class="comp-team-name">
      ((name))
     </h1>

     <img class="comp-team-logo" v-bind:src="((logo))" />    
  </button>


  <div class="modal" v-if="this.show">
    <div v-if="!isMobile()" class="modal-content">
      <div class="modal-header">
        <h1 v-bind:style="{ color: color }" class="modal-team-name">((name)) <span class="color-border">|</span> </h1>
        <p v-if="motto" class="modal-team-motto">"((motto))"</p>
      </div>
      <div class="modal-container">
        <div class="modal-left">
          <div class="modal-team-info">
            <img class="modal-img" v-bind:src="((logo))" />    
          </div>
          <div class="modal-team-badge">
            <div class="badge-container" v-for="badge in badges">
              <badge
                v-bind:name="badge.badge_name"
                v-bind:desc="badge.badge_description"
                v-bind:image="badge.badge_image"
                v-bind:unlocked="badge.badge_isUnlocked"
                v-bind:points="badge.badge_points"
              ></badge>
            </div>
          </div>
        </div>

        <div class="modal-right">
          <div class="modal-members" v-for="member in members">
            <member
              v-bind:name="member.member_name"
              v-bind:image="member.member_picture"
            >
            </member>
          </div>
        </div>
      </div>
      <button v-on:click="showMore" class="modal-exit">Close</button>
    </div>
    
    <div v-else class="modal-content">
      <div class="modal-header-mobile">
        <h1 v-bind:style="{ color: color }" class="modal-team-name-mobile">((name))</h1>
        <p v-if="motto" class="modal-team-motto">"((motto))"</p>
      </div>

      <div class="modal-left-mobile">
        <div class="modal-team-info">
          <img class="modal-img" v-bind:src="((logo))" />    
        </div>
        <div class="modal-team-badge">
          <div class="badge-container" v-for="badge in badges">
            <badge
              v-bind:name="badge.badge_name"
              v-bind:desc="badge.badge_description"
              v-bind:image="badge.badge_image"
              v-bind:unlocked="badge.badge_isUnlocked"
              v-bind:points="badge.badge_points"
            ></badge>
          </div>
        </div>
      </div>

      <div class="modal-right-mobile">
        <div class="modal-members" v-for="member in members">
          <member
            v-bind:name="member.member_name"
            v-bind:image="member.member_picture"
          >
          </member>
        </div>
      </div>
      <button v-on:click="showMore" class="modal-exit">Close</button>
  </div>
</div>
  `
});

</script>


