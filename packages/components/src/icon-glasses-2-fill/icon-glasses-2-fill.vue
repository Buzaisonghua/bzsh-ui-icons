<template>
  <svg viewBox="0 0 24 24"  xmlns="http://www.w3.org/2000/svg" :class="cls" :style="innerStyle" :fill="fill" @click="onClick"><path d="M3.031 10.976c.04-1.48.127-2.667.325-3.655.331-1.658.954-2.659 2.199-3.489l-1.11-1.664c-1.754 1.17-2.632 2.669-3.05 4.76C1 8.902 1 11.485 1 14.88V15a5 5 0 1 0 9.935-.806c.33-.125.69-.194 1.065-.194.376 0 .734.069 1.065.194A5 5 0 1 0 23 15v-.12c0-3.396 0-5.979-.394-7.951-.419-2.092-1.296-3.591-3.051-4.761l-1.11 1.664c1.246.83 1.868 1.831 2.2 3.49.197.987.285 2.173.324 3.654A4.978 4.978 0 0 0 18 10a4.995 4.995 0 0 0-4.225 2.325A4.99 4.99 0 0 0 12 12a4.99 4.99 0 0 0-1.775.325A4.995 4.995 0 0 0 6 10a4.978 4.978 0 0 0-2.969.976Z"></path></svg>
</template>

<script lang="ts" setup>
import { computed, CSSProperties } from "vue";

defineOptions({ name: "IconGlasses2Fill"});
const props = defineProps({
  size: { type: String, default: "18px" },
  fill: { type: String, default: "#595959" },
  spin: { type: Boolean, default: false },
  rotate: { type: Number },
});
const emits = defineEmits(["click"]);

const name = "bp-icon";
const cls = computed(() => [name, `${name}-icon-glasses2fill`, { [`${name}-spin`]: props.spin }]);

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

