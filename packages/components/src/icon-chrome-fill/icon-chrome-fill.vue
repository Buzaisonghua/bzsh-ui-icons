<template>
  <svg viewBox="0 0 24 24"  xmlns="http://www.w3.org/2000/svg" :class="cls" :style="innerStyle" :fill="fill" @click="onClick"><path d="M9.827 21.763C5.35 20.771 2 16.777 2 12c0-1.822.487-3.53 1.339-5.002l4.283 7.419a4.999 4.999 0 0 0 4.976 2.548l-2.77 4.798ZM12 22l4.287-7.425A4.977 4.977 0 0 0 17 12a4.978 4.978 0 0 0-1-3h5.542c.298.947.458 1.955.458 3 0 5.523-4.477 10-10 10Zm2.572-8.455a2.999 2.999 0 0 1-5.17-.045l-.029-.05a3 3 0 1 1 5.225.05l-.026.045Zm-9.94-8.306A9.974 9.974 0 0 1 12 2a9.996 9.996 0 0 1 8.662 5H12a5.001 5.001 0 0 0-4.599 3.034L4.632 5.24Z"></path></svg>
</template>

<script lang="ts" setup>
import { computed, CSSProperties } from "vue";

defineOptions({ name: "IconChromeFill"});
const props = defineProps({
  size: { type: String, default: "18px" },
  fill: { type: String, default: "#595959" },
  spin: { type: Boolean, default: false },
  rotate: { type: Number },
});
const emits = defineEmits(["click"]);

const name = "bp-icon";
const cls = computed(() => [name, `${name}-icon-chrome-fill`, { [`${name}-spin`]: props.spin }]);

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

