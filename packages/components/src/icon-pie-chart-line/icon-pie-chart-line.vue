<template>
  <svg viewBox="0 0 24 24"  xmlns="http://www.w3.org/2000/svg" :class="cls" :style="innerStyle" :fill="fill" @click="onClick"><path d="M9 2.458v2.124A8.003 8.003 0 0 0 12 20a8.003 8.003 0 0 0 7.419-5h2.123c-1.274 4.057-5.064 7-9.542 7-5.523 0-10-4.477-10-10 0-4.478 2.943-8.268 7-9.542ZM12 2c5.523 0 10 4.477 10 10 0 .338-.017.671-.05 1H11V2.05c.329-.033.662-.05 1-.05Zm1 2.062V11h6.938A8.004 8.004 0 0 0 13 4.062Z"></path></svg>
</template>

<script lang="ts" setup>
import { computed, CSSProperties } from "vue";

defineOptions({ name: "IconPieChartLine"});
const props = defineProps({
  size: { type: String, default: "18px" },
  fill: { type: String, default: "#595959" },
  spin: { type: Boolean, default: false },
  rotate: { type: Number },
});
const emits = defineEmits(["click"]);

const name = "bp-icon";
const cls = computed(() => [name, `${name}-icon-pie-chart-line`, { [`${name}-spin`]: props.spin }]);

const innerStyle = computed(() => {
  const styles: CSSProperties = {
    width: props.size,
    height: props.size,
    transform: props.rotate ? `rotate(${props.rotate}deg)` : undefined,
  };

  return styles;
});

const onClick = (ev: MouseEvent) => emits("click", ev);
</script>

