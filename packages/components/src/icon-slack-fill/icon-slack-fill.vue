<template>
  <svg viewBox="0 0 24 24"  xmlns="http://www.w3.org/2000/svg" :class="cls" :style="innerStyle" :fill="fill" @click="onClick"><path d="M6.527 14.514A1.973 1.973 0 0 1 4.56 16.48a1.973 1.973 0 0 1-1.968-1.967c0-1.083.885-1.968 1.968-1.968h1.967v1.968Zm.992 0c0-1.083.885-1.968 1.968-1.968s1.967.885 1.967 1.968v4.927a1.973 1.973 0 0 1-1.967 1.968 1.973 1.973 0 0 1-1.968-1.968v-4.927Zm1.968-7.987A1.973 1.973 0 0 1 7.519 4.56c0-1.083.885-1.967 1.968-1.967s1.967.884 1.967 1.967v1.968H9.487Zm0 .992c1.083 0 1.967.884 1.967 1.967a1.973 1.973 0 0 1-1.967 1.968H4.56a1.973 1.973 0 0 1-1.968-1.968c0-1.083.885-1.967 1.968-1.967h4.927Zm7.986 1.967c0-1.083.885-1.967 1.968-1.967s1.968.884 1.968 1.967a1.973 1.973 0 0 1-1.968 1.968h-1.968V9.486Zm-.991 0a1.973 1.973 0 0 1-1.968 1.968 1.973 1.973 0 0 1-1.968-1.968V4.56c0-1.083.885-1.967 1.968-1.967s1.968.884 1.968 1.967v4.927Zm-1.968 7.987c1.083 0 1.968.885 1.968 1.968a1.973 1.973 0 0 1-1.968 1.968 1.973 1.973 0 0 1-1.968-1.968v-1.968h1.968Zm0-.992a1.973 1.973 0 0 1-1.968-1.967c0-1.083.885-1.968 1.968-1.968h4.927c1.083 0 1.968.885 1.968 1.968a1.973 1.973 0 0 1-1.968 1.967h-4.927Z"></path></svg>
</template>

<script lang="ts" setup>
import { computed, CSSProperties } from "vue";

defineOptions({ name: "IconSlackFill"});
const props = defineProps({
  size: { type: String, default: "18px" },
  fill: { type: String, default: "#595959" },
  spin: { type: Boolean, default: false },
  rotate: { type: Number },
});
const emits = defineEmits(["click"]);

const name = "bp-icon";
const cls = computed(() => [name, `${name}-icon-slack-fill`, { [`${name}-spin`]: props.spin }]);

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

