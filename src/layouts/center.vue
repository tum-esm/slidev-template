<template>
    <div class="w-full h-full bg-white relative">
        <div
            class="slidev-layout center w-full h-full flex flex-col items-center justify-center"
        >
            <slot />
        </div>
        <Footer :subtitle="subtitle" :slideSubtitle="slideSubtitle" />
        <TUMLogo :variant="tumLogo" />
    </div>
</template>

<script setup lang="ts">
// @ts-ignore
defineProps<{
    tumLogo?: 'blue' | 'striped';
    subtitle?: string;
    slideSubtitle?: string;
}>();
</script>
