<template>
  <svg viewBox="0 0 24 24"  xmlns="http://www.w3.org/2000/svg" :class="cls" :style="innerStyle" :fill="fill" @click="onClick"><path d="M18.575 13.711a.91.91 0 0 0 .898-.898c0-.498-.399-.898-.898-.898a.894.894 0 0 0-.898.898c0 .5.4.898.898.898Zm-4.425 0a.91.91 0 0 0 .898-.898c0-.498-.4-.898-.898-.898a.894.894 0 0 0-.898.898c0 .5.399.898.898.898Zm6.567 5.04a.347.347 0 0 0-.172.37c0 .048 0 .098.025.147.098.417.294 1.081.294 1.106 0 .073.025.122.025.172a.22.22 0 0 1-.221.22c-.05 0-.074-.024-.123-.048l-1.449-.836a.8.8 0 0 0-.344-.098c-.073 0-.147 0-.196.024-.688.197-1.4.295-2.161.295-3.66 0-6.607-2.457-6.607-5.505 0-3.047 2.947-5.505 6.607-5.505 3.659 0 6.606 2.458 6.606 5.505 0 1.647-.884 3.146-2.284 4.154ZM16.674 8.099a9.112 9.112 0 0 0-.28-.005c-4.174 0-7.606 2.86-7.606 6.505 0 .554.08 1.09.228 1.6h-.089a9.966 9.966 0 0 1-2.584-.368c-.074-.025-.148-.025-.222-.025a.832.832 0 0 0-.419.123l-1.747 1.005a.35.35 0 0 1-.148.05.273.273 0 0 1-.27-.27c0-.074.024-.123.049-.197.024-.024.246-.834.369-1.324 0-.05.024-.123.024-.172a.556.556 0 0 0-.221-.441C2.059 13.376 1 11.585 1 9.598 1.001 5.944 4.571 3 8.951 3c3.765 0 6.93 2.169 7.723 5.098Zm-5.154.418c.573 0 1.026-.477 1.026-1.026 0-.573-.453-1.026-1.026-1.026s-1.026.453-1.026 1.026.453 1.026 1.026 1.026Zm-5.26 0c.573 0 1.027-.477 1.027-1.026 0-.573-.454-1.026-1.027-1.026-.572 0-1.026.453-1.026 1.026s.454 1.026 1.026 1.026Z"></path></svg>
</template>

<script lang="ts" setup>
import { computed, CSSProperties } from "vue";

defineOptions({ name: "IconWechatFill"});
const props = defineProps({
  size: { type: String, default: "18px" },
  fill: { type: String, default: "#595959" },
  spin: { type: Boolean, default: false },
  rotate: { type: Number },
});
const emits = defineEmits(["click"]);

const name = "bp-icon";
const cls = computed(() => [name, `${name}-icon-wechat-fill`, { [`${name}-spin`]: props.spin }]);

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

