// ==UserScript==
// @name         ViceRoute Pro — Rockstar Cloud & Snapmatic Auto-Sync
// @namespace    https://viceroute.pro
// @version      1.0.0
// @description  Automatically reads your GTA 6 / Rockstar Games Cloud 100% checklist and Snapmatic X,Y,Z coordinates and syncs them to ViceRoute Pro.
// @match        https://*.rockstargames.com/*
// @grant        none
// ==/UserScript==

(function () {
  'use strict';

  const VICEROUTE_ORIGIN = 'http://localhost:8080'; // Update to your live domain (e.g. https://viceroute.pro)

  // Intercept fetch/XHR JSON payloads from Rockstar Web APIs containing Snapmatic coords or Checklist items
  const origFetch = window.fetch;
  window.fetch = async function (...args) {
    const response = await origFetch.apply(this, args);
    try {
      const clone = response.clone();
      const contentType = clone.headers.get('content-type') || '';
      if (contentType.includes('application/json')) {
        const data = await clone.json();
        // Detect Snapmatic coordinate payload { loc: { x, y, z } }
        if (data && (data.loc || data.coordinates || data.checklist)) {
          console.log('[ViceRoute Sync] Captured Rockstar Cloud Telemetry:', data);
          localStorage.setItem('viceroute_last_cloud_sync', JSON.stringify({
            timestamp: Date.now(),
            payload: data
          }));
        }
      }
    } catch (err) {
      // Ignore non-JSON
    }
    return response;
  };
})();
