<template>
  <svg viewBox="0 0 24 24"  xmlns="http://www.w3.org/2000/svg" :class="cls" :style="innerStyle" :fill="fill" @click="onClick"><path d="M12 22c5.523 0 10-4.477 10-10S17.523 2 12 2 2 6.477 2 12s4.477 10 10 10Zm4.706-11.436c-.174 1.053-.725 1.567-1.471 1.749.992.555 1.47 1.398.959 2.877-.635 1.854-2.057 2.022-3.94 1.663l-.486 1.957-1.094-.271.485-1.957c-.124-.033-.249-.062-.373-.091-.172-.04-.35-.081-.526-.132l-.485 1.957-1.092-.27.485-1.958-2.176-.592.54-1.384s.822.226.81.212c.304.074.453-.14.514-.288l.776-3.137.566-2.23c.024-.241-.052-.557-.497-.677.03-.017-.8-.198-.8-.198l.323-1.312 2.243.556.475-1.917 1.13.28-.475 1.917c.291.064.574.14.866.215l.474-1.917 1.1.272-.488 1.967c1.387.51 2.386 1.263 2.157 2.709Zm-5.1.39c.657.198 2.605.783 2.933-.52.306-1.24-1.382-1.618-2.166-1.794-.093-.02-.173-.038-.235-.055l-.587 2.353.055.016Zm-1.014 3.82.095.029c.81.24 3.106.923 3.418-.37.32-1.246-1.744-1.731-2.669-1.949-.101-.023-.189-.044-.258-.062l-.586 2.352Z"></path></svg>
</template>

<script lang="ts" setup>
import { computed, CSSProperties } from "vue";

defineOptions({ name: "IconBtcFill"});
const props = defineProps({
  size: { type: String, default: "18px" },
  fill: { type: String, default: "#595959" },
  spin: { type: Boolean, default: false },
  rotate: { type: Number },
});
const emits = defineEmits(["click"]);

const name = "bp-icon";
const cls = computed(() => [name, `${name}-icon-btc-fill`, { [`${name}-spin`]: props.spin }]);

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

