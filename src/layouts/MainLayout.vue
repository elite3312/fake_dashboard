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
          <input type="text" :placeholder="$t('search')" />
          <q-btn flat color="white" :label="$t('search')" icon="search" />
          <q-btn
            flat
            color="white"
            label="中文版"
            icon="translate"
            @click="setLang_TW"
          />
          <q-btn
            flat
            color="white"
            label="English"
            icon="translate"
            @click="setLang_EN"
          />
        </div>
      </q-toolbar>
      <q-btn
        flat
        color="white"
        :label="$t('bell')"
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
        <q-btn push :label="$t('frontend')" icon="visibility" />
        <q-btn push :label="$t('backend')" icon="laptop" />
      </q-btn-group>
      <q-list>
        <q-item clickable v-ripple>
          <q-item-section> {{ $t('homepage') }} </q-item-section>
        </q-item>

        <q-item clickable v-ripple>
          <q-item-section> {{ $t('my_projects') }} </q-item-section>
        </q-item>

        <q-item clickable v-ripple>
          <q-item-section> {{ $t('pending_application') }} </q-item-section>
        </q-item>
        <q-item clickable v-ripple>
          <q-item-section> {{ $t('my_bills') }} </q-item-section>
        </q-item>
      </q-list>
    </q-drawer>

    <q-page-container>
      <router-view />
    </q-page-container>
  </q-layout>
</template>

<script lang="ts">
import { defineComponent, ref } from 'vue';

export default defineComponent({
  //i18n switch functions
  methods: {
    setLang_TW() {
      this.$i18n.locale = 'zh-tw';
    },
    setLang_EN() {
      this.$i18n.locale = 'en-us';
    },
  },
  name: 'MainLayout',

  setup() {
    const leftDrawerOpen = ref(false);

    return {
      leftDrawerOpen,
      toggleLeftDrawer() {
        leftDrawerOpen.value = !leftDrawerOpen.value;
      },
    };
  },
});
</script>
