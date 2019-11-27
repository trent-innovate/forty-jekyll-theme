/* eslint-disable */

import Vue from 'vue'

import Particles from './components/particles'
import competitionTeams from './components/competition-teams'

Vue.component('particles', Particles)
Vue.component('competition-teams', competitionTeams)

new Vue({
  el: '#app'
})