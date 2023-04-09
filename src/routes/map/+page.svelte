<script lang="ts">
   import Map from '$components/Map.svelte';
   import { onMount } from 'svelte'
   let mapController: any = {};
   import * as allIonicIcons from 'ionicons/icons';
   
   let lng = -80.7325953;
   let lat = -0.9420702;

   onMount(async ()=>{
      const marker0: maplibregl.Marker = mapController.addMarker([lng, lat], 
      {icon:allIonicIcons.personSharp, color: 'danger'}); 
      const marker1: maplibregl.Marker = mapController.addMarker([-80.73390436203557, -0.9409082658649144], 
      {icon:allIonicIcons.personOutline, color: 'dark'}); 
      const marker2: maplibregl.Marker = mapController.addMarker([-80.73507955832302, -0.9412834418705835], 
      {icon:allIonicIcons.personOutline, color: 'dark'}); 
      const marker3: maplibregl.Marker = mapController.addMarker([-80.7354151074095, -0.9416334553491735], 
      {icon:allIonicIcons.personSharp, color: 'dark'}); 
      const marker4: maplibregl.Marker = mapController.addMarker([-80.73456151363035, -0.9418138034888971], 
      {icon:allIonicIcons.personOutline, color: 'dark'}); 
   })
</script>
<Map controller={mapController} mapOptions={{center:[lng, lat], zoom: 16}} />
<style>

</style>
