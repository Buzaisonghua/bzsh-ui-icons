<template>
  <svg viewBox="0 0 24 24"  xmlns="http://www.w3.org/2000/svg" :class="cls" :style="innerStyle" :fill="fill" @click="onClick"><path d="M12 18c.714 0 1.37.25 1.886.666L12 21l-1.886-2.334A2.988 2.988 0 0 1 12 18ZM2.808 1.393l17.677 17.678-1.414 1.414-3.682-3.68-.246.306A4.98 4.98 0 0 0 12 16c-1.19 0-2.283.416-3.141 1.11l-1.885-2.334a7.963 7.963 0 0 1 4.622-1.766l-1.773-1.772a9.963 9.963 0 0 0-4.106 1.982L3.83 10.887A12.983 12.983 0 0 1 7.416 8.83L5.885 7.3a15 15 0 0 0-3.31 2.031L.689 6.997c.915-.74 1.903-1.391 2.952-1.942L1.393 2.808l1.415-1.415ZM16.084 11.87l-3.867-3.867L12 8c3.095 0 5.937 1.081 8.17 2.887l-1.886 2.333a10.001 10.001 0 0 0-2.2-1.35ZM12 3c4.285 0 8.22 1.498 11.31 3.998L21.426 9.33A14.937 14.937 0 0 0 12 6c-.572 0-1.136.032-1.69.094L7.724 3.511C9.095 3.177 10.527 3 12 3Z"></path></svg>
</template>

<script lang="ts" setup>
import { computed, CSSProperties } from "vue";

defineOptions({ name: "IconWifiOffFill"});
const props = defineProps({
  size: { type: String, default: "18px" },
  fill: { type: String, default: "#595959" },
  spin: { type: Boolean, default: false },
  rotate: { type: Number },
});
const emits = defineEmits(["click"]);

const name = "bp-icon";
const cls = computed(() => [name, `${name}-icon-wifi-off-fill`, { [`${name}-spin`]: props.spin }]);

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

