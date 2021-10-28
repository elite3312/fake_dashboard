<template>
  <q-card bordered="true">
    <q-card-section>
      <div>
        <span id="inner-title-2" class="text-h7">{{ resource_name }}</span>
        &nbsp; &nbsp; &nbsp;
        <span class="text-h7">{{ usage_percentage }}%</span>
      </div>
      <p class="text-h7">{{ usage }}/{{ quota }} {{ unit_name }}</p>
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

<style scoped>
#inner-title-2 {
  color: #00c4b3;
}
</style>
