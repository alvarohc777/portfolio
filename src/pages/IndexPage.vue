<template>
  <q-page class="column flex flex-center justify-around">
    <div class="column">
      <q-btn round>
        <q-avatar size="350px" round>
          <img src="~assets/profilePicture3.png" alt="profile-picture" />
        </q-avatar>
      </q-btn>
      <q-item style="padding-left: 0">
        <q-item-section>
          <q-item-label>{{ personalInfo.name }}</q-item-label>
          <q-item-label caption lines="2">{{
            personalInfo.career
          }}</q-item-label>
        </q-item-section>
      </q-item>
    </div>
    <div style="width: 80%">
      <ProjectsCards></ProjectsCards>
    </div>

    <!-- <div class="column justify-around flex-center">
      <q-img
        alt="profilePicture"
        src="~assets/profilePicture3.png"
        spinner-color="blue"
        width="350px"
        :img-style="{ borderRadius: '50%' }"
      />
      <div class="text-h4" style="padding-top: 10px">
        {{ personalInfo.name }}
      </div>
      <div class="text-caption">{{ personalInfo.career }}</div>
    </div> -->
  </q-page>
</template>

<script setup>
import ProjectsCards from 'components/ProjectsCards.vue'
import { ref } from 'vue'
const personalInfo = ref([])

personalInfo.value.name = 'Alvaro Herrada Coronell'
personalInfo.value.career = 'Electrical Engineer'
</script>
