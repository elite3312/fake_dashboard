<template>
  <BreadCrumb1
    :project_name="get_project_name()"
    :level_2_breadcrumb="get_level_2_breadcrumb() + get_level_3_breadcrumb()"
    :level_3_breadcrumb="get_level_4_breadcrumb()"
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

  <ProjectDetail2
    @level_2_breadcrumb_set="onClickChild_level_2"
    @level_3_breadcrumb_set="onClickChild_level_3"
    @level_4_breadcrumb_set="onClickChild_level_4"
  ></ProjectDetail2>
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
    get_project_name() {
      //we will be using dummy project names until axios is up
      if (this.pid.toString() == 'p0') return 'project 0';
      else if (this.pid.toString() == 'p1') return 'project 1';
      else if (this.pid.toString() == 'p2') return 'project 2';
      else if (this.pid.toString() == 'p3') return 'project 3';
      else if (this.pid.toString() == 'p4') return 'project 4';
      else if (this.pid.toString() == 'p5') return 'project 5';
      else if (this.pid.toString() == 'p6') return 'project 6';
    },
    get_level_2_breadcrumb() {
      return this.level_2_breadcrumb;
    },
    get_level_3_breadcrumb() {
      return this.level_3_breadcrumb;
    },
    get_level_4_breadcrumb() {
      return this.level_4_breadcrumb;
    },
    get_module_name() {
      //we will be using dummy module names until axios is up
      if (this.pid.toString() == 'p0') return 'k8s';
      else if (this.pid.toString() == 'p1') return 'k8s';
      else if (this.pid.toString() == 'p2') return 'k8s';
      else if (this.pid.toString() == 'p3') return 'k8s';
      else if (this.pid.toString() == 'p4') return 'k8s';
      else if (this.pid.toString() == 'p5') return 'k8s';
      else if (this.pid.toString() == 'p6') return 'k8s';
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
    onClickChild_level_2(value: string) {
      console.log(value);
      this.level_2_breadcrumb = value; //we will be recieving data from the child's 'emit'
      this.level_3_breadcrumb = '';
      this.level_4_breadcrumb = '';
    },
    onClickChild_level_3(value: string) {
      console.log(value);
      this.level_3_breadcrumb = value; //we will be recieving data from the child's 'emit'
      this.level_4_breadcrumb = '';
    },
    onClickChild_level_4(value: string) {
      console.log(value);
      this.level_4_breadcrumb = value; //we will be recieving data from the child's 'emit'
    },
  },

  data() {
    return {
      pid: this.$route.params.id as string,
      level_2_breadcrumb: '' as string,
      level_3_breadcrumb: '' as string, //similar to the relationship above, only this time it is with the second layer
      level_4_breadcrumb: '' as string, //similar to the relationship above, only this time it is with the third layer
    };
  },

  setup() {
    return {};
  },
});
</script>

<style scoped>
#test {
  position: relative;
}
</style>
