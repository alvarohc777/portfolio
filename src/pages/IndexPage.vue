<template>
  <q-page class="column flex flex-center justify-around">
    <div class="column" style="margin-top: 30px; margin-bottom: 20px">
      <q-avatar size="320px" round>
        <img src="~assets/profilePicture3.png" alt="profile-picture" />
      </q-avatar>
      <q-item>
        <q-item-section class="text-center">
          <q-item-label overline style="font-size: 20px">{{
            personalInfo.name
          }}</q-item-label>
          <q-item-label caption lines="2">{{
            personalInfo.careerInterests
          }}</q-item-label>
        </q-item-section>
      </q-item>

      <!-- <div class="column justify-around">
        <q-img
          alt="profilePicture"
          src="~assets/profilePicture3.png"
          spinner-color="blue"
          width="350px"
          :img-style="{ borderRadius: '50%' }"
        />
        <div class="text-overline" style="padding-top: 15px; font-size: 20px">
          {{ personalInfo.name }}
        </div>
        <div class="text-caption">{{ personalInfo.career }}</div>
      </div> -->
    </div>
    <div id="aboutme" class="section-container">
      <q-separator inset />
      <div class="q-pa-md row justify-between q-gutter-md">
        <q-item-label overline style="font-size: 20px">About me</q-item-label>
      </div>
      <AboutMe></AboutMe>
      <!-- <div class="q-pa-md row justify-start q-gutter-md">
        <AboutMe></AboutMe>
      </div> -->
    </div>
    <div id="projects" class="section-container">
      <q-separator inset />
      <div class="q-pa-md row justify-between q-gutter-md">
        <q-item-label overline style="font-size: 20px">Projects</q-item-label>
      </div>
      <q-scroll-area visible="false" style="height: 950px; width: 100%">
        <div class="q-pa-md row justify-start q-gutter-md">
          <ProjectsCards></ProjectsCards>
        </div>
      </q-scroll-area>
    </div>

    <div id="certifications" class="section-container">
      <q-separator inset />
      <div class="q-pa-md row justify-between q-gutter-md">
        <q-item-label overline style="font-size: 20px"
          >Specializations & Courses
        </q-item-label>
      </div>
      <!-- <div class="q-pa-md row justify-start q-gutter-md">
        <CertificationsCards></CertificationsCards>
      </div> -->

      <CertificationsCards></CertificationsCards>
    </div>
    <div id="playlists" class="section-container">
      <q-separator inset />
      <div class="q-pa-md row justify-between q-gutter-md">
        <q-item-label overline style="font-size: 20px"
          >Playlists <q-icon name="fa-solid fa-headphones" />
        </q-item-label>
      </div>
      <div class="q-pa-md row justify-around q-gutter-sm">
        <iframe
          style="border-radius: 12px; max-width: 535px"
          src="https://open.spotify.com/embed/playlist/07Pj4tgcmZRAAtao8XsZDb?utm_source=generator"
          width="100%"
          height="152"
          frameBorder="0"
          allowfullscreen=""
          allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture"
          loading="lazy"
        ></iframe>
        <iframe
          style="border-radius: 12px; max-width: 535px"
          src="https://open.spotify.com/embed/playlist/586QkT4kj3AZjoBNUZrSWL?utm_source=generator"
          width="100%"
          height="152"
          frameBorder="0"
          allowfullscreen=""
          allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture"
          loading="lazy"
        ></iframe>
        <iframe
          style="border-radius: 12px; max-width: 535px"
          src="https://open.spotify.com/embed/playlist/34LHIvTQSbStSyeBuHt2Ef?utm_source=generator"
          width="100%"
          height="152"
          frameBorder="0"
          allowfullscreen=""
          allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture"
          loading="lazy"
        ></iframe>
        <iframe
          style="border-radius: 12px; max-width: 535px"
          src="https://open.spotify.com/embed/playlist/4J0YdGYZJW3VyM4cZYbtbQ?utm_source=generator"
          width="100%"
          height="152"
          frameBorder="0"
          allowfullscreen=""
          allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture"
          loading="lazy"
        ></iframe>
      </div>
    </div>
  </q-page>
</template>

<style>
.section-container {
  /* min-height: 600px; */
  width: 60%;
  min-width: 350px;
  margin-bottom: 40px;
}
</style>
<script setup>
import ProjectsCards from 'components/ProjectsCards.vue'
import AboutMe from 'components/AboutMe.vue'
import CertificationsCards from 'components/CertificationsCards.vue'
import { ref } from 'vue'
const personalInfo = ref([])
personalInfo.value = {
  name: 'Alvaro Herrada Coronell',
  career: 'Electrical Engineer',
  careerInterests: 'Data Science | Machine Learning | Web Dev '
}
</script>
