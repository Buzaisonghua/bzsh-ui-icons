<template>
  <svg viewBox="0 0 24 24"  xmlns="http://www.w3.org/2000/svg" :class="cls" :style="innerStyle" :fill="fill" @click="onClick"><path d="M22 12c0 5.523-4.477 10-10 10S2 17.523 2 12 6.477 2 12 2s10 4.477 10 10Zm-7.394 7.566-2.155-5.985-2.181 6.232a8.03 8.03 0 0 0 4.336-.247Zm2.468-1.38A7.984 7.984 0 0 0 20 12a7.981 7.981 0 0 0-.545-2.908c-.25 1.454-.692 3.35-.976 4.315l-1.405 4.778Zm-.201-12.531A7.965 7.965 0 0 0 12 4a7.985 7.985 0 0 0-6.245 3h1.39v2h-.75l2.755 7.958 2.227-6.362L10.802 9H8.645V7h5v2h-.717l2.621 7.282 1.012-3.44c.523-1.832.092-2.631-.339-3.429-.289-.534-.577-1.068-.577-1.913a2 2 0 0 1 1.228-1.845ZM4.425 9.42A7.99 7.99 0 0 0 4 12a7.993 7.993 0 0 0 3.64 6.708L4.425 9.421Z"></path></svg>
</template>

<script lang="ts" setup>
import { computed, CSSProperties } from "vue";

defineOptions({ name: "IconWordpressLine"});
const props = defineProps({
  size: { type: String, default: "18px" },
  fill: { type: String, default: "#595959" },
  spin: { type: Boolean, default: false },
  rotate: { type: Number },
});
const emits = defineEmits(["click"]);

const name = "bp-icon";
const cls = computed(() => [name, `${name}-icon-wordpress-line`, { [`${name}-spin`]: props.spin }]);

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

