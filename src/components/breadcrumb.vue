<template>
  <div id="breadcrumb1" class="q-pa-md q-gutter-sm">
    <q-breadcrumbs active-color="black">
      <q-breadcrumbs-el :label="$t('my_projects')" icon="home" to="/" />
      <q-breadcrumbs-el :label="project_name" />
      <q-breadcrumbs-el :label="level_2_breadcrumb" />
      <q-breadcrumbs-el :label="level_3_breadcrumb" />
    </q-breadcrumbs>
  </div>
</template>

<script>
export default {
  name: 'BreadCrumb1',
  setup() {
    return {};
  },
  props: {
    project_name: {
      type: String,
    },
    level_2_breadcrumb: {
      type: String,
    },
    level_3_breadcrumb: {
      type: String,
    },
  },
};
</script>
<style scoped>
#breadcrumb1 {
  position: absolute;
  top: 60px;
  left: 230px;
}
</style>
