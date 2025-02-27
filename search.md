---
layout: default
title: Search
permalink: /search/
nav_order: 99
---

# Search

<div class="search">
  <div class="search-input-wrap">
    <input type="text" class="js-search-input search-input" tabindex="0" placeholder="Search documentation" aria-label="Search documentation" autocomplete="off">
    <svg width="14" height="14" viewBox="0 0 28 28" xmlns="http://www.w3.org/2000/svg" class="search-icon"><title>Search</title><g fill-rule="nonzero"><path d="M17.332 20.735c-5.537 0-10-4.6-10-10.247 0-5.646 4.463-10.247 10-10.247 5.536 0 10 4.601 10 10.247s-4.464 10.247-10 10.247zm0-4c3.3 0 6-2.783 6-6.247 0-3.463-2.7-6.247-6-6.247s-6 2.784-6 6.247c0 3.464 2.7 6.247 6 6.247z"/><path d="M11.672 13.791L.192 25.271 3.02 28.1 14.5 16.62z"/></g></svg>
  </div>
  <div class="search-results">
    <div class="search-results-container">
      <ul id="search-results"></ul>
    </div>
  </div>
</div>

<style>
  .search-container {
    width: 100%;
    margin-top: 20px;
  }
  
  .search input {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
  }
  
  #search-results {
    list-style-type: none;
    padding: 0;
    margin: 0;
  }
  
  #search-results li {
    padding: 10px;
    border-bottom: 1px solid #ddd;
  }
  
  #search-results li:hover {
    background-color: #f1f1f1;
  }
  
  #search-results a {
    text-decoration: none;
    color: #333;
    font-weight: bold;
  }
  
  #search-results p {
    margin: 5px 0 0 0;
    color: #666;
  }
</style> 