<template>
  <svg viewBox="0 0 24 24"  xmlns="http://www.w3.org/2000/svg" :class="cls" :style="innerStyle" :fill="fill" @click="onClick"><path d="M10.998 1.58a2 2 0 0 1 2.004 0l7.5 4.342a2 2 0 0 1 .998 1.731v8.694a2 2 0 0 1-.998 1.73l-7.5 4.343a2 2 0 0 1-2.004 0l-7.5-4.342a2 2 0 0 1-.998-1.731V7.653a2 2 0 0 1 .998-1.73l7.5-4.343ZM5.25 8.092a.5.5 0 0 0-.751.433v6.669a2 2 0 0 0 .998 1.73l5.751 3.33a.5.5 0 0 0 .751-.432v-6.669a2 2 0 0 0-.998-1.73l-5.751-3.33Zm10.517-2.575c-.478-.276-1.254-.276-1.732 0s-.478.724 0 1 1.254.276 1.732 0 .478-.724 0-1Zm-5.8 0c-.478-.276-1.254-.276-1.732 0s-.478.724 0 1 1.254.276 1.732 0c.479-.276.479-.724 0-1Zm7.024 10.328c.598-.345 1.083-1.184 1.083-1.875 0-.69-.485-.97-1.082-.625-.598.345-1.083 1.185-1.083 1.875s.485.97 1.082.625ZM6.367 12.2c.478.277.866.053.866-.5 0-.552-.388-1.223-.866-1.5-.478-.276-.866-.052-.866.5 0 .553.388 1.224.866 1.5Zm4.33 5.498c0 .552-.389.776-.867.5s-.866-.948-.866-1.5.388-.776.866-.5.866.948.866 1.5ZM7.231 15.7c0 .553-.388.777-.866.5-.478-.276-.866-.947-.866-1.5 0-.552.388-.776.866-.5.478.277.866.948.866 1.5Zm3.463-2c0 .553-.388.777-.866.5-.479-.275-.866-.947-.866-1.5 0-.551.387-.775.866-.5.478.277.866.949.866 1.5Z"></path></svg>
</template>

<script lang="ts" setup>
import { computed, CSSProperties } from "vue";

defineOptions({ name: "IconDiceFill"});
const props = defineProps({
  size: { type: String, default: "18px" },
  fill: { type: String, default: "#595959" },
  spin: { type: Boolean, default: false },
  rotate: { type: Number },
});
const emits = defineEmits(["click"]);

const name = "bp-icon";
const cls = computed(() => [name, `${name}-icon-dice-fill`, { [`${name}-spin`]: props.spin }]);

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

