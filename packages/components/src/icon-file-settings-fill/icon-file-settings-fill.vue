<template>
  <svg viewBox="0 0 24 24"  xmlns="http://www.w3.org/2000/svg" :class="cls" :style="innerStyle" :fill="fill" @click="onClick"><path d="m16 2 5 5v14.008a.993.993 0 0 1-.993.992H3.993A1 1 0 0 1 3 21.008V2.992C3 2.444 3.445 2 3.993 2H16ZM8.595 12.812l-.992.572 1 1.732.992-.573c.393.372.873.654 1.405.812V16.5h2v-1.145a3.495 3.495 0 0 0 1.405-.812l.992.573 1-1.732-.991-.573a3.51 3.51 0 0 0 0-1.623l.991-.572-1-1.732-.992.573A3.496 3.496 0 0 0 13 8.645V7.5h-2v1.145a3.496 3.496 0 0 0-1.405.812l-.992-.573-1 1.732.992.573a3.51 3.51 0 0 0 0 1.623ZM12 13.5a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3Z"></path></svg>
</template>

<script lang="ts" setup>
import { computed, CSSProperties } from "vue";

defineOptions({ name: "IconFileSettingsFill"});
const props = defineProps({
  size: { type: String, default: "18px" },
  fill: { type: String, default: "#595959" },
  spin: { type: Boolean, default: false },
  rotate: { type: Number },
});
const emits = defineEmits(["click"]);

const name = "bp-icon";
const cls = computed(() => [name, `${name}-icon-file-settings-fill`, { [`${name}-spin`]: props.spin }]);

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

