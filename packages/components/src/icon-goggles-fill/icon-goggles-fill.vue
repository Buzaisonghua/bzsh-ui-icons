<template>
  <svg viewBox="0 0 24 24"  xmlns="http://www.w3.org/2000/svg" :class="cls" :style="innerStyle" :fill="fill" @click="onClick"><path d="M4.952 6.942C7.08 6.118 9.75 6 12 6c2.249 0 4.92.118 7.049.942 1.08.419 2.08 1.04 2.81 1.974C22.596 9.862 23 11.054 23 12.5c0 1.47-.525 2.933-1.38 4.042C20.77 17.647 19.503 18.5 18 18.5c-1.425 0-2.656-.79-3.575-1.38C13.72 16.667 12.883 16 12 16c-.883 0-1.72.667-2.425 1.12-.919.59-2.15 1.38-3.575 1.38-1.503 0-2.769-.852-3.62-1.958A6.744 6.744 0 0 1 1 12.5c0-1.446.402-2.638 1.142-3.584.729-.933 1.728-1.555 2.81-1.974Z"></path></svg>
</template>

<script lang="ts" setup>
import { computed, CSSProperties } from "vue";

defineOptions({ name: "IconGogglesFill"});
const props = defineProps({
  size: { type: String, default: "18px" },
  fill: { type: String, default: "#595959" },
  spin: { type: Boolean, default: false },
  rotate: { type: Number },
});
const emits = defineEmits(["click"]);

const name = "bp-icon";
const cls = computed(() => [name, `${name}-icon-goggles-fill`, { [`${name}-spin`]: props.spin }]);

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

