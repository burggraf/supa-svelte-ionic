<script lang="ts">
	import { goto } from '$app/navigation';
	import { currentUser } from '$services/supabase.auth.service';
	import * as allIonicIcons from 'ionicons/icons';
	// goto('/components/Splash');
</script>
<ion-header>
	<ion-toolbar color="primary">
        <ion-buttons slot="start">
            {#if $currentUser}
                <ion-menu-button />
            {:else}
                <ion-button on:click={()=>{goto('/')}}>
                    <ion-icon slot="icon-only" icon={allIonicIcons.arrowBackOutline} />
                </ion-button>	
            {/if}
		</ion-buttons>
		<ion-title>Privacy Policy</ion-title>
	</ion-toolbar>
</ion-header>
<ion-content class="ion-padding">
    <div class="inner-div">
    <h1>supa-svelte-ionic Privacy Policy</h1>

    At supa-svelte-ionic, we take the privacy of our users very seriously. This Privacy Policy explains how we collect, use, and protect the personal information of our users.<br/><br/>
    
    <h2>Information Collection and Use</h2>
    
    When you use our application, we may collect certain information about you, including but not limited to your name, email address, and any other information you choose to provide. We may also collect information about your usage of our application, including but not limited to the pages you visit, the features you use, and the content you view.<br/><br/>
    
    We use this information to provide you with the best possible experience using our application, and to improve and update our application based on user feedback. We may also use your information to contact you regarding updates to our application, or to send you promotional materials if you have opted in to receive such communications.<br/><br/>
    
    We do not share, sell, or rent your personal information to any third parties, except in the following cases:
    
    <ul><li>With your explicit consent</li>
        <li>To comply with the law or a legal process</li>
        <li>To protect the rights, property, or safety of supa-svelte-ionic, our users, or the public</li>
        <li>Information Security</li>
    </ul>
    
    We take great care to protect your personal information from unauthorized access, use, or disclosure. We use a variety of security technologies and procedures to help protect your personal information from unauthorized access, use, or disclosure. However, no method of transmission over the Internet, or method of electronic storage, is 100% secure. Therefore, we cannot guarantee its absolute security.<br/><br/>
    
    <h2>Changes to This Privacy Policy</h2>
    
    We may update this Privacy Policy from time to time, and will post any updates on our website. We encourage you to review this Privacy Policy periodically to stay informed about how we are protecting the personal information we collect.<br/><br/>
    
    <h2>Contact Us</h2>
    
    If you have any questions or concerns about this Privacy Policy, please contact us.
    
</div>
</ion-content>

<style>
    .inner-div {
        margin:40px;
    }
    ion-content {
        font-size: 1.2em;
    }
    p {
        font-size: 1em;
        /* margin-bottom: 1em; */
    }
    li {
        font-size: 1em;
        margin-bottom: 1em;
    }
</style>












