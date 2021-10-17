<template>
  <div class="q-pa-md">
    <q-table
      :title="$t('list_my_projects')"
      :rows="rows"
      :columns="columns"
      row-key="name"
      selection="multiple"
      v-model:selected="selected"
    >
      <template v-slot:body-selection="scope">
        <q-toggle v-model="scope.selected" />
      </template>
    </q-table>
  </div>
</template>
<script>
import { ref } from 'vue';
const columns = [
  {
    name: 'name',
    required: true,
    label: 'name',
    align: 'left',
    // field: (row) => row.name,
    field: 'name',
    //format: (val) => `${val}`,
  },
  {
    name: 'current_cost',
    align: 'center',
    label: 'current cost',
    field: 'current_cost',
    sortable: true,
  },
  {
    name: 'module_name',
    label: 'module',
    field: 'module_name',
    sortable: true,
  },
  {
    name: 'recent_activity',
    label: 'latest activity',
    field: 'recent_activity',
  },
  { name: 'owner', label: 'owner', field: 'owner' },
  { name: 'pinned', label: 'pinned', field: 'pinned' },
];

const rows = [
  {
    name: 'project01',
    current_cost: 8000,
    module_name: '台中k8s 高雄k8s',
    recent_activity: 'cancelled a request:2021/09/10',
    owner: 'true',
    pinned: 'true',
  },
  {
    name: 'project02',
    current_cost: 5000,
    module_name: '台中testredis 高雄k8s',
    recent_activity: 'cancelled a request:2021/09/10',
    owner: 'true',
    pinned: 'true',
  },
  {
    name: 'project03',
    current_cost: 100,
    module_name: '台中k8s',
    recent_activity: 'cancelled a request:2021/09/10',
    owner: 'true',
    pinned: 'true',
  },
  {
    name: 'project04',
    current_cost: 9000,
    module_name: '台中k8s',
    recent_activity: 'cancelled a request:2021/09/10',
    owner: 'true',
    pinned: 'true',
  },
  {
    name: 'project20',
    current_cost: 1000,
    module_name: '台中k8s 高雄k8s',
    recent_activity: 'cancelled a request:2021/09/10',
    owner: 'true',
    pinned: 'true',
  },
  {
    name: 'project07',
    current_cost: 700,
    module_name: '台中k8s',
    recent_activity: 'cancelled a request:2021/09/10',
    owner: 'true',
    pinned: 'true',
  },
];

export default {
  name: 'ProjectListComponent',
  setup() {
    return {
      selected: ref([]),
      columns,
      rows,
    };
  },
};
</script>
