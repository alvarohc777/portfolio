<template>
  <q-card class="my-card" v-for="project in projects" :key="project.name">
    <q-item
      clickable
      style="padding: 0px"
      :href="'https://' + project.link"
      target="_blank"
    >
      <q-img ratio="1.5" :fit="project.imgFit" :src="project.img">
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
  imgFit: 'fill',
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
  imgFit: 'fill',
  img: 'projects/finaleApp.png',
  onDev: 'App on development'
}
const SEM = {
  name: 'SEM',
  description:
    'ATP-EMTP fault and event simulation automation tool. I refactored it by decoupling frontend and backend (previously PyQT), and implemented multiprocessing, reducing simulation time to 25%',
  organization: ' | Universidad del Norte',
  stack: 'Python + NumPy + Pandas + ATP-EMTP + CMD/batch',
  link: 'github.com/alvarohc777/SEM',
  imgFit: 'contain',
  img: 'projects/SEM.jpg'
}
const LSTMFaultDetector = {
  name: 'LSTM Fault Detector',
  description:
    'LSTM based Fault Detector for Microgrids (MG) and Active Distribution Networks (ADN) for my thesis. Use Jupyter Notebooks to document all progress. Dataset was created using SEM automation tool.',
  organization: ' | Universidad del Norte',
  stack: 'Python + Pytorch + NumPy Stack + Jupyter notebooks',
  link: 'github.com/alvarohc777/pyTorch',
  imgFit: 'contain',
  img: 'projects/LSTMFaultDetector.png'
}
const utilsTesisPackage = {
  name: 'Thesis Utils Package',
  description:
    'Utils-tesis is a Python package that provides a collection of auxiliary functions for various tasks commonly encountered in thesis and research projects.',
  organization: ' | Universidad del Norte',
  stack: 'Numpy + Pandas + SciPy + Matplotlib + Github Actions + PyPi ',
  link: 'pypi.org/project/utils-tesis/',
  imgFit: 'cover',
  img: 'projects/utilsTesis.png'
}
const projects = ref([])
projects.value = [
  faultDetectorAPP,
  finaleApp,
  SEM,
  LSTMFaultDetector,
  utilsTesisPackage
]
</script>
