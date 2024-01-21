<template>
  <q-layout view="hHh lpr fFf">
    <q-header elevated reveal>
      <q-toolbar>
        <q-btn
          flat
          dense
          round
          icon="menu"
          aria-label="Menu"
          @click="toggleLeftDrawer"
        />

        <q-toolbar-title class="text-overline" style="font-size: large">
          Alvaro Herrada
        </q-toolbar-title>

        <div>@alvarohc777</div>
      </q-toolbar>
    </q-header>

    <q-drawer v-model="leftDrawerOpen" bordered overlay>
      <q-list>
        <q-item-label header> Let's Connect </q-item-label>

        <EssentialLink
          v-for="link in essentialLinks"
          :key="link.title"
          v-bind="link"
        />
      </q-list>
    </q-drawer>

    <q-page-container>
      <router-view />
    </q-page-container>
    <!-- <q-footer reveal> hola </q-footer> -->
  </q-layout>
</template>

<script>
import { defineComponent, ref } from 'vue'
import EssentialLink from 'components/EssentialLink.vue'

const linksList = [
  {
    title: 'LinkedIn',
    caption: "Let's connect",
    icon: 'fa-brands fa-linkedin-in',
    link: 'https://chat.quasar.dev'
  },
  {
    title: 'Github',
    caption: 'github.com/alvarohc777',
    icon: 'fa-brands fa-github',
    link: 'https://github.com/alvarohc777'
  },
  {
    title: 'Instagram',
    caption: '@alvarohc777',
    icon: 'fa-brands fa-instagram',
    link: 'https://www.instagram.com/alvarohc777/'
  },
  {
    title: 'Finale F.C.',
    caption: 'Undergraduate Football Team',
    icon: 'fa-regular fa-futbol',
    link: 'https://www.instagram.com/fcfinale_/'
  },
  {
    title: 'Racing Uninorte F.C.',
    caption: 'Graduate Sundaly League Team',
    icon: 'fa-solid fa-futbol',
    link: 'https://www.instagram.com/racinguninorte/'
  },
  {
    title: 'Email',
    caption: 'aherrada@uninorte.edu.co',
    icon: 'fa-solid fa-envelope',
    link: 'mailto:aherrada@uninorte.edu.co'
  }
]

export default defineComponent({
  name: 'MainLayout',

  components: {
    EssentialLink
  },

  setup () {
    const leftDrawerOpen = ref(false)

    return {
      essentialLinks: linksList,
      leftDrawerOpen,
      toggleLeftDrawer () {
        leftDrawerOpen.value = !leftDrawerOpen.value
      }
    }
  }
})
</script>
