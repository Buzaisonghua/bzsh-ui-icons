<template>
  <svg viewBox="0 0 24 24"  xmlns="http://www.w3.org/2000/svg" :class="cls" :style="innerStyle" :fill="fill" @click="onClick"><path d="M3.34 17a10.017 10.017 0 0 1-.979-2.326 3 3 0 0 0 .003-5.347 9.99 9.99 0 0 1 2.5-4.337 3 3 0 0 0 4.632-2.674 9.99 9.99 0 0 1 5.007.003 3 3 0 0 0 4.632 2.671c.578.59 1.093 1.262 1.525 2.01.432.749.757 1.53.978 2.326a3 3 0 0 0-.002 5.347 9.99 9.99 0 0 1-2.501 4.337 3 3 0 0 0-4.632 2.674 9.99 9.99 0 0 1-5.007-.002 3 3 0 0 0-4.631-2.672A10.018 10.018 0 0 1 3.339 17Zm5.66.196a4.992 4.992 0 0 1 2.25 2.77c.499.047 1 .048 1.499.002a4.993 4.993 0 0 1 2.25-2.772 4.993 4.993 0 0 1 3.526-.564c.29-.408.54-.843.748-1.298A4.993 4.993 0 0 1 18 12c0-1.26.47-2.437 1.273-3.334a8.152 8.152 0 0 0-.75-1.298A4.993 4.993 0 0 1 15 6.804a4.993 4.993 0 0 1-2.25-2.77c-.5-.047-1-.048-1.5-.001A4.993 4.993 0 0 1 9 6.804a4.993 4.993 0 0 1-3.526.564c-.29.408-.54.843-.747 1.298A4.993 4.993 0 0 1 6 12c0 1.26-.471 2.437-1.273 3.334a8.16 8.16 0 0 0 .75 1.298A4.993 4.993 0 0 1 9 17.196ZM12 15a3 3 0 1 1 0-6 3 3 0 0 1 0 6Zm0-2a1 1 0 1 0 0-2 1 1 0 0 0 0 2Z"></path></svg>
</template>

<script lang="ts" setup>
import { computed, CSSProperties } from "vue";

defineOptions({ name: "IconSettings3Line"});
const props = defineProps({
  size: { type: String, default: "18px" },
  fill: { type: String, default: "#595959" },
  spin: { type: Boolean, default: false },
  rotate: { type: Number },
});
const emits = defineEmits(["click"]);

const name = "bp-icon";
const cls = computed(() => [name, `${name}-icon-settings3line`, { [`${name}-spin`]: props.spin }]);

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

