<template>
  <svg viewBox="0 0 24 24"  xmlns="http://www.w3.org/2000/svg" :class="cls" :style="innerStyle" :fill="fill" @click="onClick"><path d="M12 18c.714 0 1.37.25 1.886.666L12 21l-1.886-2.334A2.988 2.988 0 0 1 12 18ZM2.808 1.393l17.677 17.678-1.414 1.414-5.18-5.18a5.995 5.995 0 0 0-1.89-.305c-1.43 0-2.74.499-3.771 1.332l-1.256-1.556a7.964 7.964 0 0 1 4.622-1.766L9 10.414a10.97 10.97 0 0 0-3.912 2.029L3.83 10.887A12.983 12.983 0 0 1 7.416 8.83L5.132 6.545a16.01 16.01 0 0 0-3.185 2.007L.689 6.997c.915-.74 1.903-1.391 2.952-1.942L1.393 2.808l1.415-1.415ZM14.5 10.285l-2.284-2.283L12 8c3.095 0 5.937 1.081 8.17 2.887l-1.258 1.556a10.961 10.961 0 0 0-4.412-2.158ZM12 3c4.285 0 8.22 1.497 11.31 3.997l-1.257 1.555A15.933 15.933 0 0 0 12 5c-.878 0-1.74.07-2.58.207L7.726 3.51C9.095 3.177 10.527 3 12 3Z"></path></svg>
</template>

<script lang="ts" setup>
import { computed, CSSProperties } from "vue";

defineOptions({ name: "IconWifiOffLine"});
const props = defineProps({
  size: { type: String, default: "18px" },
  fill: { type: String, default: "#595959" },
  spin: { type: Boolean, default: false },
  rotate: { type: Number },
});
const emits = defineEmits(["click"]);

const name = "bp-icon";
const cls = computed(() => [name, `${name}-icon-wifi-off-line`, { [`${name}-spin`]: props.spin }]);

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

