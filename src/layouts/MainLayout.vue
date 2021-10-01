<template>
  <q-layout view="lHh Lpr lFf">
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

        <div>
          <input type="text" placeholder="搜尋.." />
          <q-btn flat color="white" label="搜尋" icon="search" />
        </div>
      </q-toolbar>
      <q-btn
        flat
        color="white"
        label="提醒"
        icon="notifications_none"
        style="float: right"
      />
      <q-btn
        flat
        color="white"
        label="admin"
        icon="person"
        style="float: right"
      />
    </q-header>

    <q-drawer v-model="leftDrawerOpen" show-if-above bordered>
      <q-item-label header> GAROATUS </q-item-label>
      <q-btn-group>
        <q-btn push label="前台" icon="visibility" />
        <q-btn push label="後台" icon="laptop" />
      </q-btn-group>
      <q-list>
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
  </q-layout>
</template>

<script lang="ts">
import EssentialLink from 'components/EssentialLink.vue';

const linksList = [
  {
    title: '首頁',
    //caption: 'quasar.dev',
    icon: 'home',
    link: 'https://quasar.dev',
  },
  {
    title: '我的專案',
    //caption: 'github.com/quasarframework',
    icon: 'window',
    link: 'https://github.com/quasarframework',
  },
  {
    title: '我的審核',
    //caption: 'chat.quasar.dev',
    icon: 'done_outline',
    link: 'https://chat.quasar.dev',
  },
  {
    title: '我的帳單',
    //caption: 'forum.quasar.dev',
    icon: 'account_balance',
    link: 'https://forum.quasar.dev',
  },
];

import { defineComponent, ref } from 'vue';

export default defineComponent({
  name: 'MainLayout',

  components: {
    EssentialLink,
  },

  setup() {
    const leftDrawerOpen = ref(false);

    return {
      essentialLinks: linksList,
      leftDrawerOpen,
      toggleLeftDrawer() {
        leftDrawerOpen.value = !leftDrawerOpen.value;
      },
    };
  },
});
</script>
