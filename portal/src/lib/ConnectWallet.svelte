<script>
	import { ethers } from 'ethers';
	export let web3Props = {
		provider: null,
		signer: null,
		account: null,
		chainId: null,
		ensName: null
	};
	// connect the wallet
	async function connectWallet() {
		let provider = new ethers.providers.Web3Provider(window.ethereum, 'any');
		await provider.send('eth_requestAccounts', []);
		const signer = provider.getSigner();
		const account = await signer.getAddress();
		const chainId = await signer.getChainId();
		const ensName = account && (await provider.lookupAddress(account));
		web3Props = { signer, provider, chainId, account, ensName };
	}

	export async function checkWallet() {
		let provider = new ethers.providers.Web3Provider(window.ethereum, 'any');
		const signer = provider.getSigner();
		const account = await signer.getAddress().catch((_) => null);
		const chainId = await signer.getChainId();
		const ensName = account && (await provider.lookupAddress(account));
		web3Props = { signer, provider, chainId, account, ensName };
	}
</script>

{#if !web3Props.account}
	<button on:click={connectWallet}>Enter</button>
{:else}
	{web3Props.ensName || web3Props.account} entered the vortex and the dream became reality...
{/if}
