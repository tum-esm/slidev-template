<template>
    <div
        class="absolute bottom-0 left-0 w-full py-1.5 px-4 bg-slate-100 flex flex-row items-center justify-center text-slate-800 text-sm font-regular flex-shrink-0"
    >
        <div v-if="subtitle !== undefined || slideSubtitle !== undefined">
            <span v-if="subtitle !== undefined">{{ subtitle }}</span>
            <span v-if="subtitle !== undefined && slideSubtitle !== undefined"
                >|</span
            >
            <strong class="font-bold" v-if="slideSubtitle !== undefined">{{
                slideSubtitle
            }}</strong>
        </div>
        <div class="flex-grow" />
        <div>
            <span class="font-bold">
                <SlideCurrentNo />
            </span>

            /
            <SlidesTotal />
        </div>
    </div>
</template>

<script setup lang="ts">
// @ts-ignore
defineProps<{
    subtitle: string | undefined;
    slideSubtitle: string | undefined;
}>();
</script>
