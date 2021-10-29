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
        <q-tab
          name="kaohsiung1"
          :label="$t('kaohsiung_k8s')"
          @click="onClickButton(1)"
        />
        <q-tab
          name="kaohsiung2"
          :label="$t('kaohsiung_k8s2')"
          @click="onClickButton(2)"
        />
        <q-tab
          name="kaohsiung3"
          :label="$t('kaohsiung_openstack')"
          @click="onClickButton(3)"
        />
        <q-tab
          name="taichung1"
          :label="$t('taichung_openstack')"
          @click="onClickButton(4)"
        />
        <q-tab
          name="taichung2"
          :label="$t('taichung_openstack2')"
          @click="onClickButton(5)"
        />
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
          <ProjectDetail2_1_1
            @level_4_breadcrumb_set="onClickChild_level_4"
          ></ProjectDetail2_1_1>
        </q-tab-panel>
      </q-tab-panels>
    </template>
  </q-splitter>
</template>

<script lang="ts">
import { defineComponent } from 'vue';
import { ref } from 'vue';
import ProjectDetail2_1_1 from 'src/components/project_detail2_1_1.vue';
export default defineComponent({
  name: 'ProjectDetail2_1',
  components: { ProjectDetail2_1_1 },
  methods: {
    onClickButton(p: number) {
      this.$emit('level_3_breadcrumb_set', p);
    },
    onClickChild_level_4(p: number) {
      this.$emit('level_4_breadcrumb_set', p);
    },
  },
  setup() {
    return { tab1: ref('q-card-2_1-top') };
  },
});
</script>
