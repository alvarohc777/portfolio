<template>
  <q-page class="column flex flex-center justify-around">
    <div class="column" style="margin-top: 30px; margin-bottom: 20px">
      <q-avatar size="320px" round>
        <img src="~assets/profilePicture3.png" alt="profile-picture" />
      </q-avatar>
      <q-item style="padding-left: 0">
        <q-item-section>
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
      <div class="q-pa-md row justify-start q-gutter-md">
        <ProjectsCards></ProjectsCards>
      </div>
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
