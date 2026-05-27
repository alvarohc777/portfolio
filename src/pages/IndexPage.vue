<template>
  <q-page class="column flex flex-center justify-around">
    <div class="column" style="margin-top: 30px; margin-bottom: 20px">
      <q-avatar size="320px" round>
        <img src="~assets/profilePic.png" alt="profile-picture" />
      </q-avatar>
      <q-item>
        <q-item-section class="text-center">
          <q-item-label overline style="font-size: 20px">{{
            personalInfo.name
          }}</q-item-label>
          <q-item-label caption lines="2">{{
            personalInfo.careerInterests
          }}</q-item-label>
          <q-item-label caption lines="3">{{
            personalInfo.location
          }}</q-item-label>
        </q-item-section>
      </q-item>
    </div>
    <div id="aboutme" class="section-container">
      <q-separator inset />
      <div class="q-pa-md row justify-between q-gutter-md">
        <q-item-label overline style="font-size: 20px">About me</q-item-label>
      </div>
      <AboutMe></AboutMe>
    </div>
    <div id="publications" class="section-container">
      <q-separator inset />
      <div class="q-pa-md row justify-between q-gutter-md">
        <q-item-label overline style="font-size: 20px"
          >Publications</q-item-label
        >
      </div>
      <PublicationsCards></PublicationsCards>
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

    <!-- <div id="workExperience" class="section-container">
      <q-separator inset />
      <div class="q-pa-md row justify-between q-gutter-md">
        <q-item-label overline style="font-size: 20px"
          >Work Experience</q-item-label
        >
      </div>
      <q-scroll-area visible="false" style="height: 500px; width: 100%">
        <div class="q-pa-md row justify-center q-gutter-md">
          <WorkExperience></WorkExperience>
        </div>
      </q-scroll-area>
    </div> -->

    <div id="certifications" class="section-container">
      <q-separator inset />
      <div class="q-pa-md row justify-between q-gutter-md">
        <q-item-label overline style="font-size: 20px"
          >Specializations & Courses
        </q-item-label>
      </div>

      <q-scroll-area visible="false" style="height: 270px; width: 100%">
        <div class="q-pa-md row justify-start q-gutter-md">
          <CertificationsCards></CertificationsCards>
        </div>
      </q-scroll-area>
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
          src="https://open.spotify.com/embed/playlist/07Pj4tgcmZRAAtao8XsZDb?utm_source=generator"
          class="spotify"
          frameBorder="0"
          allowfullscreen=""
          allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture"
          loading="lazy"
        ></iframe>
        <iframe
          src="https://open.spotify.com/embed/playlist/586QkT4kj3AZjoBNUZrSWL?utm_source=generator"
          class="spotify"
          frameBorder="0"
          allowfullscreen=""
          allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture"
          loading="lazy"
        ></iframe>
        <iframe
          src="https://open.spotify.com/embed/playlist/34LHIvTQSbStSyeBuHt2Ef?utm_source=generator"
          class="spotify"
          frameBorder="0"
          allowfullscreen=""
          allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture"
          loading="lazy"
        ></iframe>
        <iframe
          data-testid="embed-iframe"
          class="spotify"
          src="https://open.spotify.com/embed/playlist/3Cssg2lh5q7xXnaO9lmwQg?utm_source=generator&theme=0"
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
.spotify {
  border-radius: 12px;
  max-width: 535px;
  height: 152px;
  width: 100%;
}
</style>
<script setup>
import ProjectsCards from 'components/ProjectsCards.vue'
import AboutMe from 'components/AboutMe.vue'
import CertificationsCards from 'components/CertificationsCards.vue'
import PublicationsCards from 'components/PublicationsCards.vue'
// import WorkExperience from 'src/components/WorkExperience.vue'
import { ref } from 'vue'
const personalInfo = ref([])
// const spotifyHeight = '152'
personalInfo.value = {
  name: 'Alvaro Herrada Coronell',
  career: 'Electrical Engineer',
  careerInterests: 'Data Science | Machine Learning | Web Dev ',
  location: 'Bern, Switzerland'
}
</script>
