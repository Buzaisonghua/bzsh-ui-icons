<template>
  <svg viewBox="0 0 24 24"  xmlns="http://www.w3.org/2000/svg" :class="cls" :style="innerStyle" :fill="fill" @click="onClick"><path d="M3.323 12c0 3.438 2 6.4 4.892 7.808L4.077 8.469A8.646 8.646 0 0 0 3.323 12ZM12 20.677a8.77 8.77 0 0 0 2.885-.492l-.062-.116-2.67-7.307-2.6 7.561c.77.23 1.593.354 2.447.354ZM13.192 7.93l3.139 9.33.869-2.892c.37-1.2.654-2.061.654-2.807 0-1.077-.385-1.816-.708-2.385-.446-.723-.854-1.33-.854-2.039 0-.8.6-1.538 1.462-1.538h.107A8.646 8.646 0 0 0 12 3.323a8.67 8.67 0 0 0-7.246 3.908l.554.015c.907 0 2.307-.115 2.307-.115.477-.023.531.661.062.715 0 0-.47.062-1 .085l3.17 9.4 1.9-5.692-1.355-3.708a15.49 15.49 0 0 1-.907-.077c-.47-.03-.416-.746.053-.723 0 0 1.431.115 2.285.115.908 0 2.308-.115 2.308-.115.469-.023.53.661.061.715 0 0-.469.054-1 .085Zm3.17 11.569a8.676 8.676 0 0 0 3.253-11.662 8.192 8.192 0 0 1-.6 4L16.361 19.5ZM12 22a10 10 0 1 1 0-20 10 10 0 0 1 0 20Z"></path></svg>
</template>

<script lang="ts" setup>
import { computed, CSSProperties } from "vue";

defineOptions({ name: "IconWordpressFill"});
const props = defineProps({
  size: { type: String, default: "18px" },
  fill: { type: String, default: "#595959" },
  spin: { type: Boolean, default: false },
  rotate: { type: Number },
});
const emits = defineEmits(["click"]);

const name = "bp-icon";
const cls = computed(() => [name, `${name}-icon-wordpress-fill`, { [`${name}-spin`]: props.spin }]);

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

