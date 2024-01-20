<template>
  <q-page class="flex column flex-center">
    <!-- <img
        alt="Quasar logo"
        src="~assets/quasar-logo-vertical.svg"
        style="width: 200px; height: 200px"
      /> -->
    <div class="nav">
      <a href="#section1" class="btn">1</a>
      <a href="#section2" class="btn">2</a>
      <a href="#section3" class="btn">3</a>
      <a href="#section4" class="btn">4</a>
    </div>
    <section id="section1">
      <div class="section one">section 1</div>
    </section>
    <section id="section2">
      <div class="section two">section 2</div>
    </section>
    <section id="section3">
      <div class="section three">section 3</div>
    </section>
    <section id="section4">
      <div class="section four">section 4</div>
    </section>
  </q-page>
</template>
<style scoped>
* {
  margin: 0;
  padding: 0;
}

body {
  width: 100vw;
  height: 100vh;
}

.section {
  width: 100vw;
  height: 40vh;
  background-color: #ef5354;
  font-size: 50px;
  color: white;
  text-align: center;
  margin: 10px 5px;
}

.one,
.three {
  background-color: #e03b8b;
}

.nav {
  width: 100vw;
  height: 40vh;
  background-color: #3944f7;
  font-size: x-large;
  color: white;
  text-align: center;
  margin: 10px 5px;
  display: flex;
  flex-direction: row;
  justify-content: space-around;
  place-items: center;
}

.btn {
  color: white;
  background-color: #38cc77;
  height: 40px;
  width: 90px;
  padding: 2px;
  border: 2px solid black;
  text-decoration: none;
}
</style>

<script setup></script>
