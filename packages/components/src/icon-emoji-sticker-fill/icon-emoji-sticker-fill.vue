<template>
  <svg viewBox="0 0 24 24"  xmlns="http://www.w3.org/2000/svg" :class="cls" :style="innerStyle" :fill="fill" @click="onClick"><path d="M21.902 10.598a9.986 9.986 0 0 0-9.381 3.873 4.977 4.977 0 0 1-3.854-1.246l-1.334 1.49a6.976 6.976 0 0 0 4.014 1.753A9.969 9.969 0 0 0 10.5 20.5c0 .476.033.944.098 1.402C5.738 21.221 2 17.047 2 12 2 6.477 6.477 2 12 2c5.047 0 9.22 3.739 9.902 8.598Zm-.031 2.019a7.99 7.99 0 0 0-7.964 3.35A7.958 7.958 0 0 0 12.5 20.5c0 .467.04.925.117 1.37l9.254-9.253ZM8.5 11.5a1.5 1.5 0 1 0 0-3 1.5 1.5 0 0 0 0 3Zm7 0a1.5 1.5 0 1 0 0-3 1.5 1.5 0 0 0 0 3Z"></path></svg>
</template>

<script lang="ts" setup>
import { computed, CSSProperties } from "vue";

defineOptions({ name: "IconEmojiStickerFill"});
const props = defineProps({
  size: { type: String, default: "18px" },
  fill: { type: String, default: "#595959" },
  spin: { type: Boolean, default: false },
  rotate: { type: Number },
});
const emits = defineEmits(["click"]);

const name = "bp-icon";
const cls = computed(() => [name, `${name}-icon-emoji-sticker-fill`, { [`${name}-spin`]: props.spin }]);

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

