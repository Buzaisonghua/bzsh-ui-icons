<template>
  <svg viewBox="0 0 24 24"  xmlns="http://www.w3.org/2000/svg" :class="cls" :style="innerStyle" :fill="fill" @click="onClick"><path d="M10.614 17.796a.946.946 0 0 1-1.744 0l-.877-2.01a7.742 7.742 0 0 0-3.94-3.992l-2.416-1.072c-.768-.341-.768-1.458 0-1.8l2.34-1.038a7.747 7.747 0 0 0 3.997-4.125l.89-2.142a.946.946 0 0 1 1.757 0l.89 2.142a7.747 7.747 0 0 0 3.997 4.125l2.34 1.039c.768.34.768 1.458 0 1.799l-2.415 1.072a7.742 7.742 0 0 0-3.941 3.991l-.878 2.01ZM4.54 9.822c2.285 1.015 4.144 2.683 5.202 4.978 1.059-2.295 2.917-3.963 5.203-4.978-2.313-1.026-4.177-2.776-5.203-5.111-1.025 2.335-2.89 4.085-5.202 5.111ZM19.4 22.69l.247-.566a4.365 4.365 0 0 1 2.221-2.25l.76-.339a.53.53 0 0 0 0-.963l-.717-.319a4.368 4.368 0 0 1-2.253-2.326l-.254-.611a.507.507 0 0 0-.942 0l-.254.61a4.368 4.368 0 0 1-2.253 2.327l-.718.32a.53.53 0 0 0 0 .962l.76.338a4.365 4.365 0 0 1 2.222 2.251l.247.566c.18.414.754.414.934 0Zm-1.026-3.643.562-.559.55.559-.55.543-.563-.543Z"></path></svg>
</template>

<script lang="ts" setup>
import { computed, CSSProperties } from "vue";

defineOptions({ name: "IconBardLine"});
const props = defineProps({
  size: { type: String, default: "18px" },
  fill: { type: String, default: "#595959" },
  spin: { type: Boolean, default: false },
  rotate: { type: Number },
});
const emits = defineEmits(["click"]);

const name = "bp-icon";
const cls = computed(() => [name, `${name}-icon-bard-line`, { [`${name}-spin`]: props.spin }]);

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

