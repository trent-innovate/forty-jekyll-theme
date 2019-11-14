<template>
  <div class="modal">
    <button @click="opener">Click Me to Open</button>
    <sweet-modal ref="modal" overlay-theme="dark" modal-theme="dark">
      {{ text }}
      <br />
      <br />
      <button @click="closer">Click Me to Close</button>
    </sweet-modal>
  </div>
</template>

<script>
import { SweetModal, SweetModalTab } from 'sweet-modal-vue'

export default {
  name: "modal",
  props: {
    text: {
      type: String,
      required: true
    }
  },
	components: {
		SweetModal,
		SweetModalTab
	},
  methods: {
    opener() {
      this.$refs.modal.open()
    },
    closer() {
      this.$refs.modal.close()
    }
  }
}
</script>

<style lang="scss">
button {
  text-align: center !important;
  display: block !important;
  margin-left: auto !important;
  margin-right: auto !important;
}

/* Some potentially-useful classes to target

.sweet-modal-overlay, .sweet-content , .sweet-modal-clickable,
.sweet-modal, .has-content {

}

*/

.theme-dark {
  background-color: hsla(217, 34%, 44%, 0.5) !important;
}

.sweet-action-close:hover {
  background-color: hsl(217, 34%, 44%) !important;
}

// So the close modal button isn't hidden on mobile
@media only screen and (max-width: 1024px) {
  .sweet-action-close {
    position: relative;
    top: 10vh;
  }
}
</style>
