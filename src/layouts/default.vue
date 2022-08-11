<template>
    <div class="w-full h-full bg-white relative">
        <div class="w-full slidev-layout default">
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
