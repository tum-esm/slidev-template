<template>
    <div
        v-if="variant !== undefined"
        class="absolute top-0 right-0 w-16 mr-4 mt-3"
    >
        <img
            v-if="variant === 'white'"
            src="../assets/theme/tum-logo-white.svg"
        />
        <img
            v-if="variant === 'blue'"
            src="../assets/theme/tum-logo-blue.svg"
        />
        <img
            v-if="variant === 'striped'"
            src="../assets/theme/tum-logo-striped.svg"
        />
    </div>
</template>

<script setup lang="ts">
// @ts-ignore
defineProps<{
    variant: 'white' | 'blue' | 'striped' | undefined;
}>();
</script>
