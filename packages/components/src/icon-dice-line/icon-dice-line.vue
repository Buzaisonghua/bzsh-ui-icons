<template>
  <svg viewBox="0 0 24 24"  xmlns="http://www.w3.org/2000/svg" :class="cls" :style="innerStyle" :fill="fill" @click="onClick"><path d="M10.998 1.58a2 2 0 0 1 2.004 0l7.5 4.342a2 2 0 0 1 .998 1.731v8.694a2 2 0 0 1-.998 1.73l-7.5 4.343a2 2 0 0 1-2.004 0l-7.5-4.342a2 2 0 0 1-.998-1.731V7.653a2 2 0 0 1 .998-1.73l7.5-4.343ZM4.5 7.653v.005l6.502 3.764A2 2 0 0 1 12 13.153v7.536l7.5-4.342V7.653L12 3.311 4.5 7.653ZM6.132 12.3c0-.552-.388-1.224-.866-1.5s-.866-.052-.866.5.388 1.224.866 1.5.866.052.866-.5Zm2.597 6.498c.478.276.866.053.866-.5 0-.552-.388-1.224-.866-1.5s-.866-.052-.866.5.388 1.224.866 1.5ZM5.266 16.8c.478.276.866.052.866-.5s-.388-1.224-.866-1.5-.866-.052-.866.5.388 1.224.866 1.5Zm3.463-2c.478.277.866.053.865-.5 0-.552-.387-1.223-.866-1.5-.478-.276-.866-.052-.866.5 0 .553.388 1.224.867 1.5ZM14.898 8c.478-.276.478-.724 0-1s-1.254-.276-1.732 0c-.479.276-.479.724 0 1 .478.276 1.254.276 1.732 0Zm-4.8-1c.478.276.478.724 0 1s-1.254.276-1.732 0-.478-.724 0-1 1.254-.276 1.732 0Zm5.897 8.35c.598-.346 1.083-1.185 1.083-1.875s-.485-.97-1.082-.625c-.598.345-1.083 1.184-1.083 1.875 0 .69.485.97 1.082.625Z"></path></svg>
</template>

<script lang="ts" setup>
import { computed, CSSProperties } from "vue";

defineOptions({ name: "IconDiceLine"});
const props = defineProps({
  size: { type: String, default: "18px" },
  fill: { type: String, default: "#595959" },
  spin: { type: Boolean, default: false },
  rotate: { type: Number },
});
const emits = defineEmits(["click"]);

const name = "bp-icon";
const cls = computed(() => [name, `${name}-icon-dice-line`, { [`${name}-spin`]: props.spin }]);

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

