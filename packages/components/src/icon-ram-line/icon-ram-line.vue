<template>
  <svg viewBox="0 0 24 24"  xmlns="http://www.w3.org/2000/svg" :class="cls" :style="innerStyle" :fill="fill" @click="onClick"><path d="M3 7h18v10h-2v-2h-2v2h-2v-2h-2v2h-2v-2H9v2H7v-2H5v2H3V7ZM2 5a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h20a1 1 0 0 0 1-1V6a1 1 0 0 0-1-1H2Zm9 4H5v3h6V9Zm2 0h6v3h-6V9Z"></path></svg>
</template>

<script lang="ts" setup>
import { computed, CSSProperties } from "vue";

defineOptions({ name: "IconRamLine"});
const props = defineProps({
  size: { type: String, default: "18px" },
  fill: { type: String, default: "#595959" },
  spin: { type: Boolean, default: false },
  rotate: { type: Number },
});
const emits = defineEmits(["click"]);

const name = "bp-icon";
const cls = computed(() => [name, `${name}-icon-ram-line`, { [`${name}-spin`]: props.spin }]);

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

