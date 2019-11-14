/* eslint-disable */

import Vue from 'vue'

import Particles from './components/particles'
import modal from './components/modal'

Vue.component('particles', Particles)
Vue.component('modal', modal)

new Vue({
  el: '#app'
})