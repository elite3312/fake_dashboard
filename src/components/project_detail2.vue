<template>
  <q-card id="q-card-2">
    <q-splitter v-model="splitterModel" horizontal style="height: 450px">
      <template v-slot:before>
        <q-tabs
          align="left"
          v-model="tab"
          dense
          class="text-grey"
          active-color="primary"
          indicator-color="primary"
          narrow-indicator
        >
          <q-tab name="modules" :label="$t('modules')" />
          <q-tab name="activities" :label="$t('activities')" />
          <q-tab name="applications" :label="$t('applications')" />
          <q-tab name="bills" :label="$t('bills')" />
          <q-tab name="members" :label="$t('members')" />
          <q-tab name="settings" :label="$t('settings')" />
        </q-tabs>
      </template>

      <template v-slot:after>
        <q-tab-panels
          v-model="tab"
          animated
          swipeable
          vertical
          transition-prev="jump-up"
          transition-next="jump-up"
        >
          <q-tab-panel name="modules"
            ><!-- modules tab-->

            <ProjectDetail2_1></ProjectDetail2_1>
          </q-tab-panel>

          <q-tab-panel name="activities">
            <div class="text-h4 q-mb-md">todo...</div>
          </q-tab-panel>
        </q-tab-panels>
      </template>
    </q-splitter>
  </q-card>
</template>

<script>
import { ref } from 'vue';
import ProjectDetail2_1 from 'src/components/project_detail2_1.vue';
export default {
  name: 'ProjectDetail2',
  components: { ProjectDetail2_1 },
  setup() {
    return { tab: ref('q-card-2-top') };
  },
};
</script>
<style scoped>
#q-card-2 {
  position: absolute;
  top: 230px;
  left: 300px;
  width: 1200px;
}
#q-card-2-module-btn {
  background: #00c4b3;
  color: aliceblue;
  width: 80px;
  height: 30px;
}
#q-card-2-module-btn-1 {
  background: #00c4b3;
  color: aliceblue;
  width: 100px;
  height: 30px;
}
#q-card-2-module-1 {
  position: relative;
  left: 0.5%;
}
#q-card-2-module-2 {
  position: relative;
  left: 1.5%;
}
#q-card-2-module-3 {
  position: relative;
  left: 2.5%;
}
#q-card-2-module-4 {
  position: relative;
  left: 3.5%;
}
#q-card-2-module-5 {
  position: relative;
  left: 4.5%;
}
</style>
