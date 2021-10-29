<template>
  <q-page class="flex center" id="inner-page-1">
    <div class="text-h6" id="inner-title-1">{{ $t('my_projects') }}</div>

    <usageComponent
      id="usgage-card-1"
      :resource_name="rsrc_name_cpu"
      :usage_percentage="20"
      :usage="20"
      :quota="100"
      :unit_name="unit_name_cpu"
    >
    </usageComponent>
    <usageComponent
      id="usgage-card-2"
      :resource_name="rsrc_name_ram"
      :usage_percentage="10.5"
      :usage="105"
      :quota="1000"
      :unit_name="unit_name_gb"
    >
    </usageComponent>
    <usageComponent
      id="usgage-card-3"
      :resource_name="$t('vol_group')"
      :usage_percentage="10.5"
      :usage="105"
      :quota="1000"
      :unit_name="unit_name_gb"
    >
    </usageComponent>
    <usageComponent
      id="usgage-card-4"
      :resource_name="rsrc_name_gpu"
      :usage_percentage="20"
      :usage="1"
      :quota="5"
      :unit_name="rsrc_name_gpu"
    >
    </usageComponent>

    <ProjectListComponent id="project-list-1"> </ProjectListComponent>

    <q-btn color="primary" id="new-project-btn">{{ $t('new_proj') }}</q-btn>
  </q-page>
</template>

<script lang="ts">
import UsageComponent from 'src/components/Usage.vue';
import ProjectListComponent from 'src/components/ProjectList.vue';
import { defineComponent } from 'vue';

//import Usage from './usage.vue';

export default defineComponent({
  name: 'Overview',
  components: { UsageComponent, ProjectListComponent },
  data() {
    return {
      //using v-bind to fill in attributes
      rsrc_name_cpu: 'CPU',
      rsrc_name_gpu: 'GPU',
      rsrc_name_vol: 'vol group',
      rsrc_name_ram: 'RAM',

      unit_name_cpu: 'cores',
      unit_name_gpu: 'GPU',
      unit_name_gb: 'GB',
    };
  },
});
</script>

<style scoped>
#inner-page-1 {
  position: absolute;
  left: 15.62%;
  right: 0%;
  top: 10.4%;
  bottom: 0.17%;
  height: 110%;
  background: #f2f2f2;
}
#inner-title-1 {
  position: relative;
  padding-left: 10px;
  padding-top: 10px;
}

#usgage-card-1 {
  padding-right: 10px;
  padding-left: 10px;

  position: absolute;
  width: 230px;
  height: 70px;
  left: 80px;
  top: 40px;
}

#usgage-card-2 {
  padding-right: 10px;
  padding-left: 10px;

  position: absolute;
  width: 230px;
  height: 70px;
  left: 328px;

  top: 40px;
}

#usgage-card-3 {
  padding-right: 10px;
  padding-left: 10px;

  position: absolute;
  width: 230px;
  height: 70px;

  left: 575px;

  top: 40px;
}

#usgage-card-4 {
  padding-right: 10px;
  padding-left: 10px;

  position: absolute;
  width: 230px;
  height: 70px;

  left: 820px;

  top: 40px;
}
#project-list-1 {
  position: absolute;
  width: 1100px;
  padding-left: 80px;
  top: 100px;
  padding-right: 50px;
}
#new-project-btn {
  position: absolute;
  right: 232px;
  top: 520px;
  width: 132px;
  height: 50px;
  border: 3px;
}
</style>
