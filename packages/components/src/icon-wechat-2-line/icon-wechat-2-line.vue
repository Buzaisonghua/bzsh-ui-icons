<template>
  <svg viewBox="0 0 24 24"  xmlns="http://www.w3.org/2000/svg" :class="cls" :style="innerStyle" :fill="fill" @click="onClick"><path d="M8.667 11.511a1.276 1.276 0 0 1-1.285-1.285c0-.718.568-1.286 1.285-1.286.718 0 1.285.568 1.285 1.286 0 .717-.567 1.285-1.285 1.285Zm6.667 0a1.276 1.276 0 0 1-1.285-1.285c0-.718.568-1.286 1.285-1.286s1.285.568 1.285 1.286c0 .717-.568 1.285-1.285 1.285Zm-8.511 7.704.715-.436a4 4 0 0 1 2.706-.536c.211.033.385.059.52.076.406.054.819.081 1.237.081 4.42 0 7.9-3.022 7.9-6.6S16.42 5.2 12 5.2c-4.421 0-7.9 3.022-7.9 6.6 0 1.365.5 2.673 1.431 3.78.049.058.12.138.215.236a4 4 0 0 1 1.1 3.102l-.024.297Zm-.63 2.727a1 1 0 0 1-1.527-.93l.189-2.26a2 2 0 0 0-.55-1.551 7.033 7.033 0 0 1-.303-.333C2.806 15.447 2.1 13.695 2.1 11.8c0-4.75 4.432-8.6 9.9-8.6 5.467 0 9.9 3.85 9.9 8.6s-4.433 8.6-9.9 8.6c-.51 0-1.01-.034-1.5-.098-.152-.02-.342-.048-.568-.084a2 2 0 0 0-1.353.268l-2.387 1.456Z"></path></svg>
</template>

<script lang="ts" setup>
import { computed, CSSProperties } from "vue";

defineOptions({ name: "IconWechat2Line"});
const props = defineProps({
  size: { type: String, default: "18px" },
  fill: { type: String, default: "#595959" },
  spin: { type: Boolean, default: false },
  rotate: { type: Number },
});
const emits = defineEmits(["click"]);

const name = "bp-icon";
const cls = computed(() => [name, `${name}-icon-wechat2line`, { [`${name}-spin`]: props.spin }]);

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

