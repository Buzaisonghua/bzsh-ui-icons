<template>
  <svg viewBox="0 0 24 24"  xmlns="http://www.w3.org/2000/svg" :class="cls" :style="innerStyle" :fill="fill" @click="onClick"><path d="M11.752 21.997c-5.221-.128-9.45-4.257-9.736-9.438l-.012-.313 9.748 9.751ZM12 2a9.988 9.988 0 0 1 8.193 4.265l-1.638 1.148A8.003 8.003 0 0 0 4.535 9.12L14.88 19.466A8.018 8.018 0 0 0 19.749 14H15.5v-2H22c0 4.726-3.279 8.686-7.686 9.73L2.27 9.686C3.314 5.28 7.275 2 12 2Z"></path></svg>
</template>

<script lang="ts" setup>
import { computed, CSSProperties } from "vue";

defineOptions({ name: "IconGatsbyLine"});
const props = defineProps({
  size: { type: String, default: "18px" },
  fill: { type: String, default: "#595959" },
  spin: { type: Boolean, default: false },
  rotate: { type: Number },
});
const emits = defineEmits(["click"]);

const name = "bp-icon";
const cls = computed(() => [name, `${name}-icon-gatsby-line`, { [`${name}-spin`]: props.spin }]);

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

