<template>
  <q-layout view="hHh lpr fFf">
    <q-header elevated>
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
        <q-item-label header> Essential Links </q-item-label>

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
    <q-footer reveal> hola </q-footer>
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
    title: 'Finale FC',
    caption: 'Sunday League Team',
    icon: 'fa-regular fa-futbol',
    link: 'https://www.instagram.com/fcfinale_/'
  },
  {
    title: 'Email',
    caption: 'outlook.com',
    icon: 'email',
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
