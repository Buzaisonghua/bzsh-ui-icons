<template>
  <svg viewBox="0 0 24 24"  xmlns="http://www.w3.org/2000/svg" :class="cls" :style="innerStyle" :fill="fill" @click="onClick"><path d="M5.005 9.003a1 1 0 0 1 1 1 6.97 6.97 0 0 1 4.33 1.5h2.17c1.332 0 2.53.58 3.354 1.5h3.146a5 5 0 0 1 4.516 2.851c-2.365 3.12-6.194 5.149-10.516 5.149-2.79 0-5.15-.603-7.061-1.658a.998.998 0 0 1-.94.658h-3a1 1 0 0 1-1-1v-9a1 1 0 0 1 1-1h3Zm1 3v5.022l.045.032c1.794 1.26 4.133 1.946 6.955 1.946 3.004 0 5.798-1.156 7.835-3.13l.133-.133-.12-.1a2.995 2.995 0 0 0-1.643-.63l-.205-.007h-2.112c.073.321.112.656.112 1v1h-9v-2l6.79-.001-.034-.079a2.501 2.501 0 0 0-2.092-1.415l-.164-.005h-2.93a4.985 4.985 0 0 0-3.57-1.5Zm-2-1h-1v7h1v-7Zm14-6a3 3 0 1 1 0 6 3 3 0 0 1 0-6Zm0 2a1 1 0 1 0 0 2 1 1 0 0 0 0-2Zm-7-5a3 3 0 1 1 0 6 3 3 0 0 1 0-6Zm0 2a1 1 0 1 0 0 2 1 1 0 0 0 0-2Z"></path></svg>
</template>

<script lang="ts" setup>
import { computed, CSSProperties } from "vue";

defineOptions({ name: "IconHandCoinLine"});
const props = defineProps({
  size: { type: String, default: "18px" },
  fill: { type: String, default: "#595959" },
  spin: { type: Boolean, default: false },
  rotate: { type: Number },
});
const emits = defineEmits(["click"]);

const name = "bp-icon";
const cls = computed(() => [name, `${name}-icon-hand-coin-line`, { [`${name}-spin`]: props.spin }]);

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

