<template>
  <BreadCrumb1
    :project_name="get_project_name()"
    :level_2_breadcrumb="get_level_2_breadcrumb()"
    :level_3_breadcrumb="get_level_3_breadcrumb()"
  ></BreadCrumb1>
  <ProjectDetail1
    :project_name="get_project_name()"
    :cost="get_cost()"
    :cpu="get_cpu()"
    :gpu="get_gpu()"
    :vol="get_vol()"
    :ram="get_ram()"
    :module_name="get_module_name()"
  ></ProjectDetail1>
  <ProjectDetail2></ProjectDetail2>
</template>

<script lang="ts">
import BreadCrumb1 from 'src/components/breadcrumb.vue';
import ProjectDetail1 from 'src/components/project_detail1.vue';
import ProjectDetail2 from 'src/components/project_detail2.vue';
import { defineComponent } from 'vue';

export default defineComponent({
  components: { BreadCrumb1, ProjectDetail1, ProjectDetail2 },
  name: 'ProjectDetail',
  methods: {
    get_pid() {
      return this.pid;
    },
    get_project_name() {
      if (this.get_pid().toString() == 'p0') return 'project 0';
      else if (this.get_pid().toString() == 'p1') return 'project 1';
      else if (this.get_pid().toString() == 'p2') return 'project 2';
      else if (this.get_pid().toString() == 'p3') return 'project 3';
      else if (this.get_pid().toString() == 'p4') return 'project 4';
      else if (this.get_pid().toString() == 'p5') return 'project 5';
      else if (this.get_pid().toString() == 'p1') return 'project 6';
    },
    get_level_2_breadcrumb() {
      return this.$t('modules') + ':' + this.get_module_name();
    },
    get_level_3_breadcrumb() {
      return this.$t('device');
    },
    get_module_name() {
      if (this.get_pid().toString() == 'p0') return 'k8s';
      else if (this.get_pid().toString() == 'p1') return 'k8s';
      else if (this.get_pid().toString() == 'p2') return 'k8s';
      else if (this.get_pid().toString() == 'p3') return 'k8s';
      else if (this.get_pid().toString() == 'p4') return 'k8s';
      else if (this.get_pid().toString() == 'p5') return 'k8s';
      else if (this.get_pid().toString() == 'p1') return 'k8s';
      else return 'unknown';
    },
    get_cost() {
      return '1,500' + 'NTD';
    },
    get_cpu() {
      return '10' + 'cores';
    },

    get_ram() {
      return '10' + 'GB';
    },

    get_vol() {
      return '10' + 'GB';
    },

    get_gpu() {
      return '1';
    },
  },
  data() {
    return {
      pid: this.$route.params.id as string,
    };
  },
  setup() {
    return {};
  },
});
</script>

<style scoped></style>
