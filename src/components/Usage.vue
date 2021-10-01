<template>
  <q-card class="my-card" bordered="true">
    <q-card-section color="white">
      <div class="text-h6">{{ resource_name }} {{ usage_percentage }}%</div>
      <br />
      <div class="text-h6">{{ usage }}/{{ quota }} {{ unit_name }}</div>
    </q-card-section>
  </q-card>
</template>

<script>
export default {
  name: 'UsageComponent',
  setup() {
    return {};
  },
  props: {
    resource_name: {
      type: String,
    },

    usage_percentage: {
      type: Number,
    },
    usage: {
      type: Number,
    },
    quota: {
      type: Number,
    },
    unit_name: {
      type: String,
    },
  },
};
</script>
