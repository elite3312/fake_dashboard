<template>
  <div class="q-pa-md">
    <q-table
      :title="$t('list_my_projects')"
      :rows="list_of_projects"
      :columns="columns"
      :rows-per-page-options="[2, 4, 10]"
      row-key="name"
    >
      <template v-slot:body="props">
        <q-tr :props="props">
          <q-td key="name" :props="props">
            {{ props.row.name }}
          </q-td>
          <q-td key="current_cost" :props="props">
            {{ props.row.current_cost }}
          </q-td>
          <q-td key="module_name" :props="props">
            <q-badge color="grey">{{ $t('taipei') }}</q-badge
            ><br />{{ props.row.module_name.taipei }}
            <br />
            <q-badge color="grey">{{ $t('taichung') }} </q-badge><br />
            {{ props.row.module_name.taichung }}
            <br />
            <q-badge color="grey">{{ $t('kaohsiung') }} </q-badge><br />
            {{ props.row.module_name.kaohsiung }}
          </q-td>
          <q-td key="latest_activity" :props="props">
            {{ props.row.latest_activity.taipei }}<br />
            {{ props.row.latest_activity.taipei_date }}<br />

            {{ props.row.latest_activity.taichung }}<br />
            {{ props.row.latest_activity.taichung_date }}<br />

            {{ props.row.latest_activity.kaohsiung }}<br />
            {{ props.row.latest_activity.taichung_date }}<br />
          </q-td>
          <q-td key="owner" :props="props">
            <q-icon v-if="props.row.owner" name="check_circle" />
            <q-icon v-else name="highlight_off" />
          </q-td>
          <q-td key="pinned" :props="props">
            <q-icon v-if="props.row.pinned" name="push_pin" />
            <q-icon v-else name="highlight_off" />
          </q-td>
          <q-td key="name" :props="props">
            <q-btn icon="forward" @click="goto(props.row.name)" />
          </q-td>
        </q-tr>
      </template>
    </q-table>
  </div>
</template>

<script lang="ts">
class info_pack {
  taipei: string;
  taichung: string;
  kaohsiung: string;
  taipei_date: string;
  taichung_date: string;
  kaohsiung_date: string;
  constructor(
    taipei: string,
    taichung: string,
    kaohsiung: string,
    taipei_date: string,
    taichung_date: string,
    kaohsiung_date: string
  ) {
    this.taipei = taipei;
    this.taichung = taichung;
    this.kaohsiung = kaohsiung;
    this.taipei_date = taipei_date;
    this.taichung_date = taichung_date;
    this.kaohsiung_date = kaohsiung_date;
  }
}
class project_row {
  name: string;
  current_cost: number;
  module_name: info_pack;
  latest_activity: info_pack;

  owner: boolean;
  pinned: boolean;
  constructor(
    name: string,
    current_cost: number,
    module_name: info_pack,
    latest_activity: info_pack,

    owner: boolean,
    pinned: boolean
  ) {
    this.name = name;
    this.current_cost = current_cost;
    this.module_name = module_name;
    this.latest_activity = latest_activity;

    this.owner = owner;
    this.pinned = pinned;
  }
}
let list_of_projects: Array<project_row> = [];
for (var i = 0; i < 7; i++) {
  var my_pin = false;
  if (i == 0 || i == 1) my_pin = true;
  var my_owner = false;
  if (i == 0) my_owner = true;
  list_of_projects.push(
    new project_row(
      'project_' + i.toString(),
      1500,
      new info_pack('k8s', 'k8s', 'k8s', '', '', ''),
      new info_pack(
        'type adjusted namespace',
        'type adjusted namespace',
        'canceled a request',
        '2021/09/05',
        '2021/10/08',
        '2021/09/01'
      ),
      my_owner,
      my_pin
    )
  );
}
export default {
  name: 'ProjectListComponent',
  data() {
    return {
      componentKey: 0,
    };
  },
  methods: {
    fill_data() {
      //
    },
  },
  setup() {
    return {
      list_of_projects,
    };
  },
};
</script>
