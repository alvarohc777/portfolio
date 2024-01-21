<template>
  <q-card class="my-card" v-for="project in projects" :key="project.name">
    <q-item
      clickable
      style="padding: 0px"
      :href="'https://' + project.link"
      target="_blank"
    >
      <q-img ratio="1.5" fit="fill" :src="project.img">
        <q-icon
          v-if="project.onDev"
          class="absolute all-pointer-events"
          size="32px"
          name="warning"
          color="red"
          style="top: 6px; left: 6px"
        >
          <q-tooltip> {{ project.onDev }} </q-tooltip>
        </q-icon>
      </q-img>
    </q-item>

    <q-card-section class="q-pb-xs">
      <q-item-section top>
        <q-item-label lines="1">
          <span class="text-weight-medium">{{ project.name }}</span>
          <span class="text-grey-8"> {{ project.organization }}</span>
        </q-item-label>
        <q-item-label caption lines="1">
          {{ project.link }}
        </q-item-label>
        <q-item-label
          lines="1"
          class="q-mt-xs text-body2 text-weight-bold text-primary text-uppercase"
        >
        </q-item-label>
      </q-item-section>

      <q-item-label
        class="q-pt-sm"
        caption
        lines="4"
        style="min-height: 4.5rem"
      >
        <span class="text-black text-weight-regular">{{
          project.description
        }}</span>
      </q-item-label>

      <q-item-label class="text-center" header>
        {{ project.stack }}
      </q-item-label>
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
import { ref } from 'vue'

const faultDetectorAPP = {
  name: 'Fault Detector',
  description:
    'Web App for visualization of fault detection strategy based on harmonic distortion as part of research project INTEGRA.',
  organization: ' | Proyecto INTEGRA',
  stack: 'Vanilla JS + Django-Ninja + NumPy Stack',
  link: 'alvarohc777.github.io/',
  img: 'projects/faultDetectorApp.png'
}
const finaleApp = {
  name: 'Finale App',
  description:
    'Web App designed for football team management, simplifying team members’ data collection. Frontend and Backend conteinerized, togheter with DB hosted in Azure. ',
  organization: '',
  stack:
    'Quasar (VueJs) + ASP.NET + PostgreSQL + Docker/docker-compose + Azure ',
  link: 'finaleapp.azurewebsites.net/',
  img: 'projects/finaleApp.png',
  onDev: 'App on development'
}
const projects = ref([])
projects.value = [faultDetectorAPP, finaleApp]
</script>
