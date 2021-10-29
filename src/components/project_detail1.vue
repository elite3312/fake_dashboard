<template>
  <q-card id="q-card-1" bordered class="bg-white-9 my-card">
    <q-card-section horizontal>
      <div id="title-1" class="text-h6">{{ project_name }}</div>

      <q-btn icon="expand_more" flat id="expand_btn"> {{ $t('expand') }}</q-btn>
    </q-card-section>

    <q-separator />

    <q-card-section horizontal class="bg-white-9 my-card">
      <q-card-section id="q-card-1-cost" class="bg-white-9 my-card">
        <div class="text-h7">{{ $t('cost') }}</div>
        <div class="text-h7" id="usage_var">{{ cost }}</div>
      </q-card-section>
      <q-card-section id="q-card-1-cpu" class="bg-white-9 my-card">
        <div class="text-h7">CPU</div>
        <div class="text-h7" id="usage_var">{{ cpu }}</div>
      </q-card-section>
      <q-card-section id="q-card-1-ram" class="bg-white-9 my-card">
        <div class="text-h7">RAM</div>
        <div class="text-h7" id="usage_var">{{ ram }}</div>
      </q-card-section>
      <q-card-section id="q-card-1-vol" class="bg-white-9 my-card">
        <div id="q-card-vol-text" class="text-h7">{{ $t('vol_group') }}</div>
        <div class="text-h7" id="usage_var">{{ vol }}</div>
      </q-card-section>

      <q-card-section id="q-card-1-gpu" class="bg-white-9 my-card">
        <div class="text-h7">GPU</div>
        <div class="text-h7" id="usage_var">{{ gpu }}</div>
      </q-card-section>

      <q-card-section
        horizontal
        id="q-card-1-modules"
        class="bg-white-9 my-card"
      >
        <q-card-section
          ><div class="text-h7">{{ $t('modules') }}</div>
          <div class="text-h7" id="usage_var">
            {{ module_name }}
          </div></q-card-section
        >

        <q-tabs id="q-card-1-tab-1" v-model="tab" class="text-teal">
          <q-btn id="q-card-1-apply-btn" name="movies" :label="$t('apply')" />
        </q-tabs>
      </q-card-section>
    </q-card-section>
  </q-card>
</template>

<script >
export default {
  name: 'ProjectDetailQCard1',
  setup() {
    return {};
  },
  props: {
    project_name: {
      type: String,
    },

    cost: {
      type: String,
    },
    cpu: {
      type: String,
    },
    ram: {
      type: String,
    },
    vol: {
      type: String,
    },
    gpu: {
      type: String,
    },
    module_name: {
      type: String,
    },
  },
};
</script>
<style scoped>
#q-card-1 {
  position: absolute;
  top: 100px;
  left: 300px;
  width: 1200px;
}
#title-1 {
  color: #00c4b3;
  padding-top: 5px;
  padding-left: 10px;
}
#expand_btn {
  position: absolute;
  right: 3%;

  color: #00c4b3;
}
#q-card-1-cost {
  position: relative;
  padding-top: 2%;
  padding-left: 5%;
}
#q-card-1-cpu {
  position: relative;
  padding-top: 2%;
  padding-left: 5%;
}
#q-card-1-ram {
  position: relative;
  padding-top: 2%;
  padding-left: 5%;
}
#q-card-1-vol {
  position: relative;
  padding-top: 2%;
  padding-left: 5%;
}
#q-card-1-vol-text {
  width: 30px;
}
#q-card-1-gpu {
  position: relative;
  padding-top: 2%;
  padding-left: 5%;
}
#usage_var {
  color: #00c4b3;
}
#q-card-1-modules {
  position: absolute;
  right: 3%;
}
#q-card-1-apply-btn {
  background: #00c4b3;
  color: aliceblue;
}
</style>
