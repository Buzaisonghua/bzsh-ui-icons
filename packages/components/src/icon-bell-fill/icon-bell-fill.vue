<template>
  <svg viewBox="0 0 24 24"  xmlns="http://www.w3.org/2000/svg" :class="cls" :style="innerStyle" :fill="fill" @click="onClick"><path d="m13.414 10.586.48.486.464.485.46.492c3.458 3.764 5.472 7.218 4.607 8.083-.4.4-1.356.184-2.64-.507a9.006 9.006 0 0 1-10.403-.592l2.98-2.98a2 2 0 1 0-1.45-1.569l.035.155-2.979 2.98a9.007 9.007 0 0 1-.592-10.405c-.692-1.283-.908-2.238-.508-2.639.977-.976 5.25 1.715 9.546 6.01Zm6.364-6.364a2 2 0 0 1-.165 2.976 9.015 9.015 0 0 1 .608 8.47c-1.189-1.954-3.07-4.173-5.393-6.496l-.537-.532c-2.128-2.078-4.156-3.764-5.958-4.86a9.015 9.015 0 0 1 8.471.607 2 2 0 0 1 2.974-.165Z"></path></svg>
</template>

<script lang="ts" setup>
import { computed, CSSProperties } from "vue";

defineOptions({ name: "IconBellFill"});
const props = defineProps({
  size: { type: String, default: "18px" },
  fill: { type: String, default: "#595959" },
  spin: { type: Boolean, default: false },
  rotate: { type: Number },
});
const emits = defineEmits(["click"]);

const name = "bp-icon";
const cls = computed(() => [name, `${name}-icon-bell-fill`, { [`${name}-spin`]: props.spin }]);

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

