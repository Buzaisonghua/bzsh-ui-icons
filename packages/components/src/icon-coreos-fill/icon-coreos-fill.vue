<template>
  <svg viewBox="0 0 24 24"  xmlns="http://www.w3.org/2000/svg" :class="cls" :style="innerStyle" :fill="fill" @click="onClick"><path d="M12 22C6.477 22 2 17.523 2 12S6.477 2 12 2s10 4.477 10 10-4.477 10-10 10Zm-3.671-9.696c-.04.85.037 1.697.118 2.544.005.06.027.074.08.08.406.054.813.102 1.222.127.964.061 1.928.139 2.896.085.55-.03 1.1-.048 1.648-.095.78-.068 1.56-.155 2.33-.312.958-.194 1.907-.425 2.8-.845.406-.19.79-.415 1.114-.736.238-.235.408-.507.41-.86a8.893 8.893 0 0 0-.045-.94 9.02 9.02 0 0 0-.482-2.18c-.583-1.618-1.509-2.989-2.825-4.07a8.87 8.87 0 0 0-3.851-1.863c-.5-.105-1.006-.144-1.514-.18-.573-.041-1.064.12-1.488.514-.495.457-.837 1.025-1.122 1.633-.667 1.427-.973 2.954-1.166 4.508-.106.857-.166 1.721-.125 2.59Zm3.57-5.03c.959.03 1.77.324 2.494.856a4.326 4.326 0 0 1 1.714 2.612c.068.304.097.612.103.922.005.209-.11.362-.262.49-.307.258-.67.401-1.05.508a10.32 10.32 0 0 1-2.265.366c-.5.026-1 .035-1.5.01-.192-.01-.384-.024-.577-.032-.06-.002-.08-.02-.083-.081-.024-.434-.058-.868-.051-1.302.016-1.026.094-2.045.397-3.034.1-.329.223-.65.42-.936.173-.25.378-.437.66-.38Z"></path></svg>
</template>

<script lang="ts" setup>
import { computed, CSSProperties } from "vue";

defineOptions({ name: "IconCoreosFill"});
const props = defineProps({
  size: { type: String, default: "18px" },
  fill: { type: String, default: "#595959" },
  spin: { type: Boolean, default: false },
  rotate: { type: Number },
});
const emits = defineEmits(["click"]);

const name = "bp-icon";
const cls = computed(() => [name, `${name}-icon-coreos-fill`, { [`${name}-spin`]: props.spin }]);

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

