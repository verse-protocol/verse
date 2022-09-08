<script>
    import ConnectWallet from '$lib/ConnectWallet.svelte';

    export let web3Props = {
        provider: null,
        signer: null,
        account: null,
        chainId: null
    };
</script>

<h1>Verse Portal</h1>
<p>A maze of twisty cryptographs, all different...</p>

{#if !web3Props.account}
    <ConnectWallet bind:web3Props />
{:else}
    Connected...
{/if}
