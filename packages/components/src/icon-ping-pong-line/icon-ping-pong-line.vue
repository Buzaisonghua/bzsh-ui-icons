<template>
  <svg viewBox="0 0 24 24"  xmlns="http://www.w3.org/2000/svg" :class="cls" :style="innerStyle" :fill="fill" @click="onClick"><path d="M11.5 2a9.5 9.5 0 0 1 9.5 9.5c0 1.53-.361 2.974-1.003 4.254l2.463 2.464a1 1 0 0 1 0 1.414l-2.828 2.828a1 1 0 0 1-1.415 0l-2.463-2.463A9.462 9.462 0 0 1 11.5 21a9.5 9.5 0 0 1 0-19Zm5.303 13.388-1.414 1.414 3.536 3.535 1.414-1.414-3.536-3.535Zm1.864-6.105-9.384 9.384c.7.216 1.445.333 2.217.333a7.48 7.48 0 0 0 2.74-.516l-.972-.974a1 1 0 0 1 0-1.414l2.828-2.828a1 1 0 0 1 1.414 0l.974.972A7.48 7.48 0 0 0 19 11.5c0-.772-.117-1.516-.333-2.217ZM11.5 4a7.5 7.5 0 0 0-4.136 13.757L17.757 7.364A7.493 7.493 0 0 0 11.5 4Z"></path></svg>
</template>

<script lang="ts" setup>
import { computed, CSSProperties } from "vue";

defineOptions({ name: "IconPingPongLine"});
const props = defineProps({
  size: { type: String, default: "18px" },
  fill: { type: String, default: "#595959" },
  spin: { type: Boolean, default: false },
  rotate: { type: Number },
});
const emits = defineEmits(["click"]);

const name = "bp-icon";
const cls = computed(() => [name, `${name}-icon-ping-pong-line`, { [`${name}-spin`]: props.spin }]);

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

