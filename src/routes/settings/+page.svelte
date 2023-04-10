<script lang="ts">
	import IonPage from '$ionpage';
	import { goto } from '$app/navigation';
	// goto('/components/Splash');
	// import {
	// } from '$services/utils.service';

	import { currentUser, currentProfile, loadUser } from '$services/supabase.auth.service';
	import { saveProfile } from '../account/profile';

	const settings: any = {
			something: '',
		};


	const saveSettings = async () => {
		// merge settings into currentProfile
		const newProfile = {...$currentProfile, settings};
		currentProfile.set(newProfile)
		saveProfile(newProfile);
	}
	const ionViewWillEnter = async () => {
		if (!$currentProfile) {
			setup();
		} else {
			setup();
		}
	}
	const setup = async () => {
		if ($currentProfile?.settings) {
			settings.something = $currentProfile.settings.something || '';
		}
	}
</script>
<IonPage {ionViewWillEnter}>
	<ion-header>
	<ion-toolbar color="secondary">
		<ion-buttons slot="start">
			<ion-menu-button />
		</ion-buttons>
		<ion-title>supa-svelte-ionic Settings</ion-title>
	</ion-toolbar>
</ion-header>
<ion-content class="ion-padding">

	TBD
	
</ion-content>
</IonPage>
