<template>
  <svg viewBox="0 0 24 24"  xmlns="http://www.w3.org/2000/svg" :class="cls" :style="innerStyle" :fill="fill" @click="onClick"><path d="M5.378 4.513a9.962 9.962 0 0 1 6.627-2.51c5.523 0 10 4.477 10 10a9.954 9.954 0 0 1-1.793 5.715l-2.707-5.715h2.5A8 8 0 0 0 6.279 6.415l-.9-1.902Zm13.253 14.98a9.962 9.962 0 0 1-6.626 2.51c-5.523 0-10-4.477-10-10 0-2.125.663-4.095 1.793-5.715l2.707 5.715h-2.5A8 8 0 0 0 17.73 17.59l.901 1.902Zm-5.626-5.955h3v2h-3v2h-2v-2h-3v-2h3v-1h-3v-2h2.586L8.469 8.417l1.415-1.414 2.12 2.121 2.122-2.121 1.414 1.414-2.12 2.121h2.585v2h-3v1Z"></path></svg>
</template>

<script lang="ts" setup>
import { computed, CSSProperties } from "vue";

defineOptions({ name: "IconExchangeCnyFill"});
const props = defineProps({
  size: { type: String, default: "18px" },
  fill: { type: String, default: "#595959" },
  spin: { type: Boolean, default: false },
  rotate: { type: Number },
});
const emits = defineEmits(["click"]);

const name = "bp-icon";
const cls = computed(() => [name, `${name}-icon-exchange-cny-fill`, { [`${name}-spin`]: props.spin }]);

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

