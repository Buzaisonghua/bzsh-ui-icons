<template>
  <svg viewBox="0 0 24 24"  xmlns="http://www.w3.org/2000/svg" :class="cls" :style="innerStyle" :fill="fill" @click="onClick"><path d="m12 3.298 2.445-1.63 1.11 1.664L13 5.035v5.233L17.53 7.65l.198-3.064 1.996.13-.19 2.932 2.635 1.303-.886 1.792-2.753-1.36L14.001 12l4.53 2.616 2.753-1.36.886 1.792-2.634 1.303.19 2.932-1.997.129-.197-3.064L13 13.732v5.233l2.555 1.703-1.11 1.664L12 20.702l-2.446 1.63-1.109-1.664L11 18.965v-5.233l-4.532 2.616-.198 3.064-1.996-.128.19-2.933-2.635-1.303.887-1.793 2.752 1.361L10 12 5.468 9.383l-2.752 1.361-.887-1.793L4.464 7.65l-.19-2.933 1.997-.129.197 3.064L11 10.267V5.035L8.445 3.332l1.11-1.664L12 3.298Z"></path></svg>
</template>

<script lang="ts" setup>
import { computed, CSSProperties } from "vue";

defineOptions({ name: "IconSnowflakeFill"});
const props = defineProps({
  size: { type: String, default: "18px" },
  fill: { type: String, default: "#595959" },
  spin: { type: Boolean, default: false },
  rotate: { type: Number },
});
const emits = defineEmits(["click"]);

const name = "bp-icon";
const cls = computed(() => [name, `${name}-icon-snowflake-fill`, { [`${name}-spin`]: props.spin }]);

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

