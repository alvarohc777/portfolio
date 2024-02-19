<template>
  <q-list class="rounded-borders" style="max-width: 100%">
    <q-item
      clickable
      :href="certificate.link"
      target="_blank"
      v-for="certificate in certifications"
      :key="certificate"
    >
      <q-item-section avatar top>
        <q-icon color="black" size="34px">
          <img :src="certificate.img" alt="bluetabLogo" />
        </q-icon>
      </q-item-section>

      <q-item-section top>
        <q-item-label lines="1">
          <span class="text-weight-medium"> {{ certificate.name }} </span>
          <span class="text-grey-8"> - {{ certificate.instructor }}</span>
        </q-item-label>
        <q-item-label caption lines="1">
          {{ certificate.platform }}
        </q-item-label>
        <q-item-label
          lines="1"
          class="q-mt-xs text-body2 text-weight-bold text-primary text-uppercase"
        >
        </q-item-label>
      </q-item-section>
    </q-item>

    <!-- <q-separator spaced /> -->
  </q-list>
</template>

<script setup>
import { ref } from 'vue'

const certifications = ref([])
const deepLearningSpecialization = {
  name: 'Deep Learning Specialization',
  instructor: 'DeepLearning.AI',
  platform: 'Coursera',
  img: 'specializations/deeplearningaiLogo.png',
  link: 'https://www.coursera.org/account/accomplishments/specialization/certificate/6NNTSPRF9N2A'
}
const DjangoSpecialization = {
  name: 'Django for Everybody Specialization',
  instructor: 'University of Michigan',
  platform: 'Coursera',
  img: 'specializations/universityOfMichigan.png',
  link: 'https://www.coursera.org/account/accomplishments/specialization/certificate/VTUXU6QVBX8F'
}
const LinearAlgebraCourse = {
  name: 'Linear Algebra for Machine Learning and Data Science',
  instructor: 'DeepLearning.AI',
  platform: 'Coursera',
  img: 'specializations/deeplearningaiLogo.png',
  link: 'https://www.coursera.org/account/accomplishments/certificate/RPJC49UZUZV2'
}
const CalculusCourse = {
  name: 'Calculus for Machine Learning and Data Science',
  instructor: 'DeepLearning.AI',
  platform: 'Coursera',
  img: 'specializations/deeplearningaiLogo.png',
  link: 'https://www.coursera.org/account/accomplishments/certificate/RA667DS32AWU'
}
const googleCloud = {
  name: 'Digital Transformation with Google Cloud',
  instructor: 'Google Cloud',
  platform: 'Coursera',
  img: 'specializations/googleCloudLogo.png',
  link: 'https://www.coursera.org/account/accomplishments/certificate/TCUKAXLCTR4D'
}
const jetsonNanoNvidia = {
  name: 'Getting Started with AI on Jetson Nano',
  instructor: 'Deep Learning Institute',
  platform: 'NVIDIA',
  img: 'specializations/nvidiaLogo.png',
  link: 'https://courses.nvidia.com/certificates/d4e424a8e24947028b48f25202a11e3c/'
}
certifications.value = [
  deepLearningSpecialization,
  DjangoSpecialization,
  LinearAlgebraCourse,
  CalculusCourse,
  googleCloud,
  jetsonNanoNvidia
]
</script>
