<template>
  <svg viewBox="0 0 24 24"  xmlns="http://www.w3.org/2000/svg" :class="cls" :style="innerStyle" :fill="fill" @click="onClick"><path d="M2.05 13h2.012a8.001 8.001 0 0 0 15.876 0h2.013c-.502 5.053-4.766 9-9.951 9-5.185 0-9.449-3.947-9.95-9Zm0-2C2.55 5.947 6.814 2 12 2s9.449 3.947 9.95 9h-2.012a8.001 8.001 0 0 0-15.876 0H2.049ZM12 14a2 2 0 1 1 0-4 2 2 0 0 1 0 4Z"></path></svg>
</template>

<script lang="ts" setup>
import { computed, CSSProperties } from "vue";

defineOptions({ name: "IconGradienterLine"});
const props = defineProps({
  size: { type: String, default: "18px" },
  fill: { type: String, default: "#595959" },
  spin: { type: Boolean, default: false },
  rotate: { type: Number },
});
const emits = defineEmits(["click"]);

const name = "bp-icon";
const cls = computed(() => [name, `${name}-icon-gradienter-line`, { [`${name}-spin`]: props.spin }]);

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

