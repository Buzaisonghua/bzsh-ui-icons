<template>
  <svg viewBox="0 0 24 24"  xmlns="http://www.w3.org/2000/svg" :class="cls" :style="innerStyle" :fill="fill" @click="onClick"><path d="M19.8 3.77a6.25 6.25 0 0 0-8.63-1.913L6.11 5.081a6.25 6.25 0 0 0-1.973 8.532 6.25 6.25 0 0 0 8.693 8.53l5.06-3.224a6.25 6.25 0 0 0 1.974-8.533A6.25 6.25 0 0 0 19.8 3.77Zm-1.352 5.004A6.255 6.255 0 0 0 15.65 7.5a1 1 0 0 0-1.525-1.003L9.066 9.72a1 1 0 1 0 1.075 1.686l2.109-1.343a4.25 4.25 0 1 1 4.567 7.17l-5.06 3.223a4.25 4.25 0 0 1-6.203-5.23A6.254 6.254 0 0 0 8.35 16.5a1 1 0 0 0 1.525 1.003l5.06-3.224a1 1 0 0 0-1.074-1.687l-2.109 1.344a4.25 4.25 0 0 1-4.567-7.17l5.06-3.223a4.25 4.25 0 0 1 6.203 5.23Z"></path></svg>
</template>

<script lang="ts" setup>
import { computed, CSSProperties } from "vue";

defineOptions({ name: "IconSvelteLine"});
const props = defineProps({
  size: { type: String, default: "18px" },
  fill: { type: String, default: "#595959" },
  spin: { type: Boolean, default: false },
  rotate: { type: Number },
});
const emits = defineEmits(["click"]);

const name = "bp-icon";
const cls = computed(() => [name, `${name}-icon-svelte-line`, { [`${name}-spin`]: props.spin }]);

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

