<template>
  <svg viewBox="0 0 24 24"  xmlns="http://www.w3.org/2000/svg" :class="cls" :style="innerStyle" :fill="fill" @click="onClick"><path d="M12 2c5.078 0 9.272 3.785 9.915 8.687a8 8 0 0 0-11.228 11.228C5.785 21.272 2 17.078 2 12 2 6.477 6.477 2 12 2Zm0 1.833c-2.317 0-4.41.966-5.896 2.516.177.123.331.296.437.534.204.457.204.928.204 1.345 0 .328 0 .64.105.865.144.308.766.44 1.315.554l.02.005c.19.04.385.08.563.13.506.14.898.595 1.211.96.13.151.323.374.42.43.05-.036.211-.211.29-.498.062-.22.044-.414-.045-.52-.56-.66-.529-1.93-.356-2.399.272-.739 1.122-.684 1.744-.644h.006c.23.015.446.03.608.009.471-.06.695-.616.835-.964.045-.111.081-.201.114-.246.292-.4 1.186-1.003 1.74-1.375A8.138 8.138 0 0 0 12 3.833ZM23 17a6 6 0 1 1-12 0 6 6 0 0 1 12 0Zm-7 1h4v-2h-2v-2h-2v4Z"></path></svg>
</template>

<script lang="ts" setup>
import { computed, CSSProperties } from "vue";

defineOptions({ name: "IconTimeZoneFill"});
const props = defineProps({
  size: { type: String, default: "18px" },
  fill: { type: String, default: "#595959" },
  spin: { type: Boolean, default: false },
  rotate: { type: Number },
});
const emits = defineEmits(["click"]);

const name = "bp-icon";
const cls = computed(() => [name, `${name}-icon-time-zone-fill`, { [`${name}-spin`]: props.spin }]);

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

