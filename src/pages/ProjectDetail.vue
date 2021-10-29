<template>
  <BreadCrumb1
    :project_name="get_project_name()"
    :level_2_breadcrumb="get_level_2_breadcrumb()"
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
  <!--
  <h1 id="test">{{ level_2_breadcrumb_data }}</h1>
  <h1 id="test">{{ level_2_breadcrumb }}</h1>
  -->
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
      switch (this.level_2_breadcrumb) {
        case 1:
          return this.$t('modules') + ':' + this.get_level_3_breadcrumb();
          break;
        case 2:
          return this.$t('activities');
          break;
        case 3:
          return this.$t('applications');
          break;

        case 4:
          return this.$t('bills');
          break;

        case 5:
          return this.$t('members');
          break;

        case 6:
          return this.$t('settings');
          break;

        default:
          return 'error retrieving breadcrumb';
          break;
      }
    },
    get_level_3_breadcrumb() {
      switch (this.level_3_breadcrumb) {
        case 1:
          return this.$t('kaohsiung_k8s');
          break;
        case 2:
          return this.$t('kaohsiung_k8s2');
          break;
        case 3:
          return this.$t('kaohsiung_openstack');
          break;

        case 4:
          return this.$t('taichung_openstack');
          break;

        case 5:
          return this.$t('taichung_openstack2');
          break;

        default:
          return 'error retrieving breadcrumb';
          break;
      }
    },
    get_level_4_breadcrumb() {
      switch (this.level_4_breadcrumb) {
        case 1:
          return this.$t('device');
          break;
        case 2:
          return this.$t('container');
          break;
        case 3:
          return this.$t('vol_group');
          break;

        default:
          return 'error retrieving breadcrumb';
          break;
      }
    },
    get_module_name() {
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
    onClickChild_level_2(value: number) {
      console.log(value);
      this.level_2_breadcrumb = value; //we will be recieving data from the child's 'emit'
    },
    onClickChild_level_3(value: number) {
      console.log(value);
      this.level_3_breadcrumb = value; //we will be recieving data from the child's 'emit'
    },
    onClickChild_level_4(value: number) {
      console.log(value);
      this.level_4_breadcrumb = value; //we will be recieving data from the child's 'emit'
    },
  },

  data() {
    return {
      pid: this.$route.params.id as string,
      level_2_breadcrumb: 1 as number, //1 for modules, 2 for activities, 3 for applications, 4 for bills, 5 for members, 6 for settings
      level_3_breadcrumb: 1 as number, //similar to the relationship above, only this time it is with the second layer
      level_4_breadcrumb: 1 as number, //similar to the relationship above, only this time it is with the third layer
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
