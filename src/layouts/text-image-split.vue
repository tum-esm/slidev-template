<template>
    <div class="w-full h-full bg-white relative">
        <div
            class="slidev-layout text-image-split max-w-screen w-full h-full flex flex-row gap-x-8"
        >
            <div class="flex-grow">
                <slot />
            </div>
            <div class="h-full flex items-center justify-center flex-shrink-0">
                <slot name="right" />
            </div>
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
