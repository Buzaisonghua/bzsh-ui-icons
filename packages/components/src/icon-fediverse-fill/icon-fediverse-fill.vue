<template>
  <svg viewBox="0 0 24 24"  xmlns="http://www.w3.org/2000/svg" :class="cls" :style="innerStyle" :fill="fill" @click="onClick"><path d="M11.268 1.555v.615l.252 4.016L8.17 3.959l-.533-.308-.733 1.27.534.307 3.603 1.79-3.603 1.788-.534.307.733 1.27.533-.308 3.351-2.227-.252 4.016v.615h1.465v-.615l-.253-4.016 3.351 2.227.533.307.733-1.269-.533-.307-3.604-1.789 3.604-1.789.533-.308-.733-1.269-.533.308-3.351 2.227.253-4.016v-.615h-1.465Zm-5.296 9.172v.615l.253 4.015-3.351-2.226-.533-.308-.733 1.27.533.307 3.605 1.789-3.605 1.788-.533.308.733 1.27.533-.308 3.351-2.227-.253 4.015v.616h1.465v-.616l-.252-4.015 3.351 2.227.533.307.733-1.269-.533-.308-3.604-1.788 3.604-1.79.533-.307-.733-1.27-.533.309-3.351 2.226.253-4.015v-.615H5.971Zm10.59 0v.615l.253 4.015-3.35-2.226-.533-.308-.733 1.27.532.307 3.605 1.789-3.605 1.788-.532.308.733 1.27.532-.308 3.351-2.227-.253 4.015v.616h1.466v-.616l-.253-4.015 3.352 2.227.532.307.733-1.269-.533-.308-3.604-1.788 3.604-1.79.533-.307-.733-1.27-.532.309-3.352 2.226.253-4.015v-.615h-1.465Z"></path></svg>
</template>

<script lang="ts" setup>
import { computed, CSSProperties } from "vue";

defineOptions({ name: "IconFediverseFill"});
const props = defineProps({
  size: { type: String, default: "18px" },
  fill: { type: String, default: "#595959" },
  spin: { type: Boolean, default: false },
  rotate: { type: Number },
});
const emits = defineEmits(["click"]);

const name = "bp-icon";
const cls = computed(() => [name, `${name}-icon-fediverse-fill`, { [`${name}-spin`]: props.spin }]);

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

