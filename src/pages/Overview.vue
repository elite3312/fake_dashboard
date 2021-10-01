<template>
  <q-page class="flex flex center">
    <div class="text-h6" id="inner-title-1">我的專案</div>

    <usageComponent
      :resource_name="rsrc_name_cpu"
      :usage_percentage="20"
      :usage="20"
      :quota="100"
      :unit_name="unit_name_cpu"
    >
    </usageComponent>
    <usageComponent
      :resource_name="rsrc_name_ram"
      :usage_percentage="10.5"
      :usage="105"
      :quota="1000"
      :unit_name="unit_name_gb"
    >
    </usageComponent>
    <usageComponent
      :resource_name="rsrc_name_vol"
      :usage_percentage="10.5"
      :usage="105"
      :quota="1000"
      :unit_name="unit_name_gb"
    >
    </usageComponent>
    <usageComponent
      :resource_name="rsrc_name_gpu"
      :usage_percentage="20"
      :usage="1"
      :quota="5"
      :unit_name="rsrc_name_gpu"
    >
    </usageComponent>

    <ProjectListComponent id="project-list-1"> </ProjectListComponent>

    <q-btn color="primary" id="new-project-btn">創建新專案</q-btn>
  </q-page>
</template>

<script lang="ts">
import UsageComponent from 'src/components/Usage.vue';
import ProjectListComponent from 'src/components/ProjectList.vue';
import { defineComponent } from 'vue';

//import Usage from './usage.vue';

export default defineComponent({
  name: 'PageIndex',
  components: { UsageComponent, ProjectListComponent },
  data() {
    return {
      rsrc_name_cpu: 'CPU', //if we want to assign a string name from the outer component to the inside, we have to pass it like this
      rsrc_name_gpu: 'GPU',
      rsrc_name_vol: '數據卷',
      rsrc_name_ram: 'RAM',

      unit_name_cpu: 'cores',
      unit_name_gpu: 'GPU',
      unit_name_gb: 'GB',
    };
  },
});
</script>
