<template>
  <q-card class="my-card">
    <q-img ratio="1.5" fit="fill" src="~assets/faultDetectorApp.png">
      <div class="absolute-bottom text-h6" style="padding: 0">
        <q-item
          clickable
          style="padding: 16px"
          tag="detectorDeFallas"
          target="_blank"
          href="https://alvarohc777.github.io/"
        >
          {{ faultDetectorAPP.name }}
        </q-item>
      </div>
    </q-img>

    <q-card-section>
      {{ faultDetectorAPP.description }}
    </q-card-section>
  </q-card>

  <q-card class="my-card">
    <q-img ratio="1.5" fit="fill" src="~assets/finaleApp.png">
      <q-icon
        class="absolute all-pointer-events"
        size="32px"
        name="warning"
        color="red"
        style="top: 6px; left: 6px"
      >
        <q-tooltip> App on development </q-tooltip>
      </q-icon>
      <div class="absolute-bottom text-h6" style="padding: 0">
        <q-item
          clickable
          style="padding: 16px"
          tag="finaleApp"
          target="_blank"
          href="https://finaleapp.azurewebsites.net/"
        >
          {{ finaleAPP.name }}
        </q-item>
      </div>
    </q-img>

    <q-card-section>
      {{ finaleAPP.description }}
    </q-card-section>
  </q-card>

  <q-card class="my-card">
    <q-img src="https://cdn.quasar.dev/img/parallax2.jpg">
      <div class="absolute-bottom text-h6">Project X</div>
    </q-img>

    <q-card-section>
      {{ lorem }}
    </q-card-section>
  </q-card>
</template>

<style>
.my-card {
  width: 100%;
  max-width: 350px;
}
</style>

<script setup>
const lorem =
  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
const faultDetectorAPP = {
  name: 'Fault Detector',
  description:
    'Web App for visualization of fault detection strategy based on harmonic distortion as part of research project INTEGRA and my MSc thesis.\n \n Vanilla JS + Django-Ninja + NumPy Stack '
}
const finaleAPP = {
  name: 'Finale App',
  description:
    'Web App designed for football team management, simplifying team members’ data collection. Frontend and Backend conteinerized, togheter with DB hosted in Azure. Quasar (VueJs) + ASP.NET + docker-compose + Azure + PostgreSQL'
}
</script>
