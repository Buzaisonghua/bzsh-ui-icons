<template>
  <svg viewBox="0 0 24 24"  xmlns="http://www.w3.org/2000/svg" :class="cls" :style="innerStyle" :fill="fill" @click="onClick"><path d="M19.631 17.494c-.221-3.858-5.15-5.61-5.62-5.791-.021-.01-.021-.027-.011-.047l5.082-5.022v-.54a.167.167 0 0 0-.163-.162H9.553V2l-3.457.711v.512h.192s.848 0 .848.834v1.866H4.46c-.048 0-.097.047-.097.094v1.186h2.782v6.433c0 2.019 1.32 3.422 3.629 3.232.473-.046.929-.208 1.329-.473a.604.604 0 0 0 .28-.503v-.636c-.751.493-1.388.464-1.388.464-1.463 0-1.433-1.83-1.433-1.83V7.202H16.3l-4.851 4.814-.02 1.137c0 .02.01.029.029.029 4.447.739 5.65 3.572 5.65 4.397 0 0 .481 4.008-3.59 4.284 0 0-2.668.112-3.139-.939-.019-.04 0-.076.038-.094.444-.2.741-.588.741-1.11 0-.777-.48-1.412-1.492-1.412-.817 0-1.492.636-1.492 1.413 0 0-.384 3.373 5.335 3.278 6.526-.114 6.121-5.504 6.121-5.504Z"></path></svg>
</template>

<script lang="ts" setup>
import { computed, CSSProperties } from "vue";

defineOptions({ name: "IconXtzFill"});
const props = defineProps({
  size: { type: String, default: "18px" },
  fill: { type: String, default: "#595959" },
  spin: { type: Boolean, default: false },
  rotate: { type: Number },
});
const emits = defineEmits(["click"]);

const name = "bp-icon";
const cls = computed(() => [name, `${name}-icon-xtz-fill`, { [`${name}-spin`]: props.spin }]);

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

