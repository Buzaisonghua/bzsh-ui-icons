<template>
  <svg viewBox="0 0 24 24"  xmlns="http://www.w3.org/2000/svg" :class="cls" :style="innerStyle" :fill="fill" @click="onClick"><path d="M19.607 6.995c-.076-.298-.292-.523-.539-.592C18.63 6.28 16.501 6 12.001 6s-6.628.28-7.069.403c-.244.068-.46.293-.537.592-.109.424-.394 2.2-.394 5.005 0 2.804.285 4.58.394 5.006.076.297.292.522.538.59C5.373 17.72 7.5 18 12 18s6.629-.28 7.069-.403c.244-.068.46-.293.537-.592C19.716 16.581 20 14.8 20 12s-.285-4.58-.394-5.005Zm1.937-.497c.457 1.782.457 5.502.457 5.502s0 3.72-.457 5.502c-.254.985-.997 1.76-1.938 2.022C17.897 20 12 20 12 20s-5.893 0-7.605-.476c-.945-.266-1.687-1.04-1.938-2.022C2 15.72 2 12 2 12s0-3.72.457-5.502c.254-.985.997-1.76 1.938-2.022C6.108 4 12.001 4 12.001 4s5.896 0 7.605.476c.944.266 1.687 1.04 1.938 2.022ZM10.001 15.5v-7l6 3.5-6 3.5Z"></path></svg>
</template>

<script lang="ts" setup>
import { computed, CSSProperties } from "vue";

defineOptions({ name: "IconYoutubeLine"});
const props = defineProps({
  size: { type: String, default: "18px" },
  fill: { type: String, default: "#595959" },
  spin: { type: Boolean, default: false },
  rotate: { type: Number },
});
const emits = defineEmits(["click"]);

const name = "bp-icon";
const cls = computed(() => [name, `${name}-icon-youtube-line`, { [`${name}-spin`]: props.spin }]);

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

