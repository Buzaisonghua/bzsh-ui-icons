<template>
  <svg viewBox="0 0 24 24"  xmlns="http://www.w3.org/2000/svg" :class="cls" :style="innerStyle" :fill="fill" @click="onClick"><path d="m11.053 7.815.751-3.536a2 2 0 0 1 2.372-1.54l3.196.68a2 2 0 1 1-.415 1.956l-3.197-.68-.666 3.135c1.785.137 3.558.73 5.164 1.7A3.192 3.192 0 0 1 23 12.203v.021a3.193 3.193 0 0 1-1.207 2.55 2.852 2.852 0 0 1-.008.123c0 3.998-4.45 7.03-9.799 7.03-5.333 0-9.708-3.024-9.705-6.953a5.316 5.316 0 0 1-.01-.181 3.193 3.193 0 0 1 3.454-5.35 11.446 11.446 0 0 1 5.329-1.628Zm9.285 5.526c.409-.203.665-.62.662-1.075a1.192 1.192 0 0 0-2.016-.806l-.585.56-.67-.455c-1.615-1.098-3.452-1.725-5.23-1.764h-1.006c-1.875.028-3.652.6-5.237 1.675l-.664.45-.583-.55a1.192 1.192 0 1 0-1.315 1.952l.633.29-.053.695a3.95 3.95 0 0 0 .003.584c0 2.71 3.356 5.03 7.708 5.03 4.371 0 7.799-2.336 7.802-5.107a3.304 3.304 0 0 0 0-.507l-.052-.672.604-.3ZM6.951 13.5a1.5 1.5 0 1 1 3 0 1.5 1.5 0 0 1-3 0Zm7 0a1.5 1.5 0 1 1 3 0 1.5 1.5 0 0 1-3 0Zm-1.985 5.103c-1.397 0-2.766-.37-3.881-1.21a.424.424 0 0 1 .597-.597c.945.693 2.123.99 3.269.99s2.33-.275 3.284-.959a.439.439 0 0 1 .732.206.469.469 0 0 1-.12.423c-.683.797-2.483 1.147-3.88 1.147Z"></path></svg>
</template>

<script lang="ts" setup>
import { computed, CSSProperties } from "vue";

defineOptions({ name: "IconRedditLine"});
const props = defineProps({
  size: { type: String, default: "18px" },
  fill: { type: String, default: "#595959" },
  spin: { type: Boolean, default: false },
  rotate: { type: Number },
});
const emits = defineEmits(["click"]);

const name = "bp-icon";
const cls = computed(() => [name, `${name}-icon-reddit-line`, { [`${name}-spin`]: props.spin }]);

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

