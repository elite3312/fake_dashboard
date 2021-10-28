<template>
  <q-splitter v-model="splitterModel" horizontal style="height: 380px">
    <template v-slot:before>
      <q-tabs
        align="left"
        v-model="tab1"
        dense
        class="text-grey"
        active-color="primary"
        indicator-color="primary"
        narrow-indicator
      >
        <q-tab name="kaohsiung1" :label="$t('kaohsiung_k8s')" />
        <q-tab name="kaohsiung2" :label="$t('kaohsiung_k8s2')" />
        <q-tab name="kaohsiung3" :label="$t('kaohsiung_openstack')" />
        <q-tab name="taichung1" :label="$t('taichung_openstack')" />
        <q-tab name="taichung2" :label="$t('taichung_openstack2')" />
      </q-tabs>
    </template>

    <template v-slot:after>
      <q-tab-panels
        v-model="tab1"
        animated
        swipeable
        vertical
        transition-prev="jump-up"
        transition-next="jump-up"
      >
        <q-tab-panel name="kaohsiung1">
          <ProjectDetail2_1_1></ProjectDetail2_1_1>
        </q-tab-panel>
      </q-tab-panels>
    </template>
  </q-splitter>
</template>

<script>
import { ref } from 'vue';
import ProjectDetail2_1_1 from 'src/components/project_detail2_1_1.vue';
export default {
  name: 'ProjectDetail2_1',
  components: { ProjectDetail2_1_1 },
  setup() {
    return { tab1: ref('q-card-2_1-top') };
  },
};
</script>
