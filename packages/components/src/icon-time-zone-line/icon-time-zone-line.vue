<template>
  <svg viewBox="0 0 24 24"  xmlns="http://www.w3.org/2000/svg" :class="cls" :style="innerStyle" :fill="fill" @click="onClick"><path d="M4 12c0-2.154.851-4.109 2.235-5.547.122.111.227.252.306.43.204.457.204.928.204 1.345 0 .328 0 .64.105.865.144.308.766.44 1.315.554l.02.005c.19.04.385.08.563.13.506.14.898.595 1.211.96.13.151.323.374.42.43.05-.036.211-.211.29-.498.062-.22.044-.414-.045-.52-.56-.66-.529-1.93-.356-2.399.272-.739 1.122-.684 1.744-.644h.006c.23.015.446.03.608.009.471-.06.695-.616.835-.964.045-.111.081-.201.114-.246.265-.363 1.024-.892 1.577-1.265a8.024 8.024 0 0 1 4.424 4.779c.854.29 1.642.72 2.339 1.263C21.272 5.785 17.078 2 12 2 6.477 2 2 6.477 2 12c0 5.078 3.785 9.272 8.687 9.915a7.984 7.984 0 0 1-1.263-2.339A8.003 8.003 0 0 1 4 12Zm13 1a4 4 0 1 0 0 8 4 4 0 0 0 0-8Zm-6 4a6 6 0 1 1 12 0 6 6 0 0 1-12 0Zm5-3v4h4v-2h-2v-2h-2Z"></path></svg>
</template>

<script lang="ts" setup>
import { computed, CSSProperties } from "vue";

defineOptions({ name: "IconTimeZoneLine"});
const props = defineProps({
  size: { type: String, default: "18px" },
  fill: { type: String, default: "#595959" },
  spin: { type: Boolean, default: false },
  rotate: { type: Number },
});
const emits = defineEmits(["click"]);

const name = "bp-icon";
const cls = computed(() => [name, `${name}-icon-time-zone-line`, { [`${name}-spin`]: props.spin }]);

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

