<script>
	import ConnectWallet from '$lib/ConnectWallet.svelte';
	import { onMount } from 'svelte';
	let connectWalletComponent;

	export let web3Props = {
		provider: null,
		signer: null,
		account: null,
		chainId: null
	};

	onMount(function () {
		connectWalletComponent.checkWallet();
	});
</script>

<h1>Verse Portal</h1>
<p>A maze of twisty cryptographs, all different...</p>

<ConnectWallet bind:web3Props bind:this={connectWalletComponent} />
