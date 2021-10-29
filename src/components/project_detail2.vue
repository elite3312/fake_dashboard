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
          <q-tab
            name="modules"
            :label="$t('modules')"
            @click="onClickButton(1)"
          />
          <q-tab
            name="activities"
            :label="$t('activities')"
            @click="onClickButton(2)"
          />
          <q-tab
            name="applications"
            :label="$t('applications')"
            @click="onClickButton(3)"
          />
          <q-tab name="bills" :label="$t('bills')" @click="onClickButton(4)" />
          <q-tab
            name="members"
            :label="$t('members')"
            @click="onClickButton(5)"
          />
          <q-tab
            name="settings"
            :label="$t('settings')"
            @click="onClickButton(6)"
          />
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

            <ProjectDetail2_1
              @level_3_breadcrumb_set="onClickChild_level_3"
              @level_4_breadcrumb_set="onClickChild_level_4"
            ></ProjectDetail2_1>
          </q-tab-panel>

          <q-tab-panel name="activities">
            <div class="text-h4 q-mb-md">todo...</div>
          </q-tab-panel>
        </q-tab-panels>
      </template>
    </q-splitter>
  </q-card>
</template>

<script lang="ts">
import { defineComponent } from 'vue';
import { ref } from 'vue';
import ProjectDetail2_1 from 'src/components/project_detail2_1.vue';
export default defineComponent({
  name: 'ProjectDetail2',
  components: { ProjectDetail2_1 },
  setup() {
    return { tab: ref('q-card-2-top') };
  },
  methods: {
    onClickButton(p: number) {
      console.log(p);
      //alert(p);
      //I found out that in order for emit to work, I had to add the defineComponent declaration. Not sure why.
      this.$emit('level_2_breadcrumb_set', p);
    },
    onClickChild_level_3(value: number) {
      this.$emit('level_3_breadcrumb_set', value);
    },
    onClickChild_level_4(value: number) {
      this.$emit('level_4_breadcrumb_set', value);
    },
  },
});
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
