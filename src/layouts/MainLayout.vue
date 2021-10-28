<template>
  <q-layout view="lHh Lpr lFf">
    <q-toolbar id="top-panle-1">
      <q-btn flat dense round icon="apps" aria-label="apps" @click="to_do" />

      <div>
        <input type="text" :placeholder="$t('search')" />
        <q-btn flat :label="$t('search')" icon="search" />
        <q-btn flat label="中文版" icon="translate" @click="setLang_TW" />
        <q-btn flat label="English" @click="setLang_EN" />
      </div>
    </q-toolbar>
    <q-btn
      id="main_layout_btn_1"
      flat
      label="admin"
      icon="panorama_fish_eye"
      style="float: right"
    />
    <q-btn
      id="main_layout_btn_1"
      flat
      :label="$t('bell')"
      icon="notifications_none"
      style="float: right"
    />

    <div class="column" id="left-panel-1" show-if-above bordered>
      <q-item-label header id="garaotus-header"> GARAOTUS </q-item-label>
      <q-btn-group id="left-panel-btn-group-1">
        <q-btn
          push
          :label="$t('frontend')"
          icon="visibility"
          @click="show_frontend"
        />
        <q-btn
          push
          :label="$t('backend')"
          icon="laptop"
          @click="show_backend"
        />
      </q-btn-group>
      <q-list v-if="show_front_end">
        <q-item clickable v-ripple to="/">
          <GreyCropSquare></GreyCropSquare>
          <q-item-section id="left-panel-btn-1">
            {{ $t('homepage') }}
          </q-item-section>
        </q-item>

        <q-item clickable v-ripple to="/"
          ><GreyCropSquare></GreyCropSquare>
          <q-item-section id="left-panel-btn-1">
            {{ $t('my_projects') }}
          </q-item-section>
        </q-item>

        <q-item clickable v-ripple
          ><GreyCropSquare></GreyCropSquare>
          <q-item-section id="left-panel-btn-1">
            {{ $t('pending_application') }}
          </q-item-section>
        </q-item>
        <q-item clickable v-ripple
          ><GreyCropSquare></GreyCropSquare>
          <q-item-section id="left-panel-btn-1">
            {{ $t('my_bills') }}
          </q-item-section>
        </q-item>
      </q-list>
      <q-list v-else>
        <q-item clickable v-ripple
          ><GreyCropSquare></GreyCropSquare>
          <q-item-section id="left-panel-btn-1">
            {{ $t('cloud_admin') }}
          </q-item-section>
        </q-item>

        <q-item clickable v-ripple
          ><GreyCropSquare></GreyCropSquare>
          <q-item-section id="left-panel-btn-1">
            {{ $t('local_admin') }}
          </q-item-section>
        </q-item>

        <q-item clickable v-ripple
          ><GreyCropSquare></GreyCropSquare>
          <q-item-section id="left-panel-btn-1">
            {{ $t('iaas_admin') }}
          </q-item-section>
        </q-item>
        <q-item clickable v-ripple
          ><GreyCropSquare></GreyCropSquare>
          <q-item-section id="left-panel-btn-1">
            {{ $t('hpc_admin') }}
          </q-item-section> </q-item
        ><q-item clickable v-ripple
          ><GreyCropSquare></GreyCropSquare>
          <q-item-section id="left-panel-btn-1">
            {{ $t('flow_chart') }}
          </q-item-section>
        </q-item>
      </q-list>
    </div>

    <q-page-container>
      <router-view />
    </q-page-container>
  </q-layout>
</template>

<script lang="ts">
import { defineComponent } from 'vue';
import GreyCropSquare from 'src/components/svg_grey_crop_square.vue';
export default defineComponent({
  name: 'MainLayout',
  components: { GreyCropSquare },
  //i18n switch functions
  methods: {
    setLang_TW() {
      this.$i18n.locale = 'zh-tw';
    },
    setLang_EN() {
      this.$i18n.locale = 'en-us';
    },
    show_frontend() {
      if (!this.show_front_end) {
        this.show_front_end = true;
      }
    },
    show_backend() {
      if (this.show_front_end) {
        this.show_front_end = false;
      }
    },
  },

  data: () => {
    return {
      show_front_end: true,
    };
  },
});
</script>

<style scoped>
#main_layout_btn_1 {
  top: 20px;
}
#left-panel-1 {
  position: absolute;
  left: 0%;
  right: 84.38%;
  top: 0%;

  height: 120%;
  background: #012f44;
}
#garaotus-header {
  color: #00c4b3;
  height: 7.2px;
}
#left-panel-btn-group-1 {
  left: 0.54%;
  right: 84.81%;
  top: 6.11%;
  bottom: 90.42%;

  background: #ffffff;
  opacity: 0.5;
}
#left-panel-btn-1 {
  color: #ffffff;
}

#top-panle-1 {
  position: absolute;
  left: 15.62%;
  right: -0.1%;
  top: 0%;
  bottom: 89.6%;

  background: #cffff4;
}
</style>
