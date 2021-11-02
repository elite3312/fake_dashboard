<template>
  <q-card>
    <q-splitter v-model="splitterModel" horizontal style="height: 300px">
      <template v-slot:before>
        <q-tabs
          align="left"
          v-model="tab2"
          dense
          class="bg-primary text-white"
          active-color="white"
          indicator-color="primary"
          narrow-indicator
        >
          <q-tab
            name="device"
            :label="$t('device')"
            @click="onClickButton($t('device'))"
          />
          <q-tab
            name="container"
            :label="$t('container')"
            @click="onClickButton($t('container'))"
          />
          <q-tab
            name="vol_group"
            :label="$t('vol_group')"
            @click="onClickButton($t('vol_group'))"
          />
        </q-tabs>
      </template>

      <template v-slot:after>
        <q-tab-panels
          v-model="tab2"
          animated
          swipeable
          vertical
          transition-prev="jump-up"
          transition-next="jump-up"
          id="project_detail_1_1_tab1"
        >
          <q-tab-panel name="device"
            ><ProjectDetail2_1_1_1></ProjectDetail2_1_1_1>
          </q-tab-panel>
        </q-tab-panels>
      </template>
    </q-splitter>
  </q-card>
</template>

<script lang="ts">
import { ref } from 'vue';
import { defineComponent } from 'vue';
import ProjectDetail2_1_1_1 from 'src/components/project_detail2_1_1_1.vue';
export default defineComponent({
  name: 'ProjectDetail2_1_1',
  components: { ProjectDetail2_1_1_1 },
  methods: {
    onClickButton(p: string) {
      this.$emit('level_4_breadcrumb_set', p);
    },
  },
  setup() {
    return { tab2: ref('device') };
  },
});
</script>
<style scoped>
#project_detail_1_1_tab1 {
  height: 100%;
  background-color: #f2f2f2;
}
</style>
