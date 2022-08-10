<template>
    <div class="w-full h-full bg-white relative">
        <div
            class="slidev-layout two-cols w-full h-full grid grid-cols-2 gap-x-8"
        >
            <div>
                <slot />
            </div>
            <div class="h-full">
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
