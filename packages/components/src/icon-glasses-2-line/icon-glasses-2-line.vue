<template>
  <svg viewBox="0 0 24 24"  xmlns="http://www.w3.org/2000/svg" :class="cls" :style="innerStyle" :fill="fill" @click="onClick"><path d="M3.015 10.988c.03-1.535.11-2.52.34-3.667.331-1.658.954-2.659 2.2-3.489l-1.11-1.664c-1.755 1.17-2.633 2.669-3.051 4.76-.52 2.6-.398 7.936-.395 8.07V15a5 5 0 1 0 9.935-.806c.33-.125.69-.194 1.065-.194.376 0 .734.069 1.065.194a5 5 0 1 0 9.935.806s.132-5.439-.394-8.071c-.419-2.092-1.296-3.591-3.05-4.761l-1.11 1.664c1.245.83 1.867 1.831 2.199 3.49.229 1.145.31 2.131.34 3.666A4.978 4.978 0 0 0 17.998 10a4.995 4.995 0 0 0-4.224 2.325A4.99 4.99 0 0 0 11.998 12a4.99 4.99 0 0 0-1.775.325A4.996 4.996 0 0 0 5.999 10a4.978 4.978 0 0 0-2.984.988ZM3 15a3 3 0 1 1 6 0 3 3 0 0 1-6 0Zm12.168-.994A3.002 3.002 0 0 1 21 15a3 3 0 1 1-5.832-.994Z"></path></svg>
</template>

<script lang="ts" setup>
import { computed, CSSProperties } from "vue";

defineOptions({ name: "IconGlasses2Line"});
const props = defineProps({
  size: { type: String, default: "18px" },
  fill: { type: String, default: "#595959" },
  spin: { type: Boolean, default: false },
  rotate: { type: Number },
});
const emits = defineEmits(["click"]);

const name = "bp-icon";
const cls = computed(() => [name, `${name}-icon-glasses2line`, { [`${name}-spin`]: props.spin }]);

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

