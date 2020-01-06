<template>
  <div id="app">
    <p>{{ message }}</p>
    <img alt="Vue logo" src="./assets/logo.png" @click="increment">
    <HelloWorld :msg="`Welcome to Your Vue.js + TypeScript App ${this.counter}`"/>
  </div>
</template>

<script lang="ts">
import { Component, Vue } from 'vue-property-decorator';
import HelloWorld from './components/HelloWorld.vue';

@Component({
  components: {
    HelloWorld,
  },
})
export default class App extends Vue {
  private get counter(): number {
    return this.$store.getters.getCounter();
  }

  private get message(): string {
    return this.$store.getters.getMessage();
  }

  private increment(): void {
    this.$store.dispatch('incrementAction');
    this.$store.dispatch('getMessageAction');
  }
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
