image: plugins/nomad:{{#if build.tag}}{{trimPrefix "v" build.tag}}{{else}}latest{{/if}}
{{#if build.tags}}
tags:
{{#each build.tags}}
  - {{this}}
{{/each}}
{{/if}}
manifests:
  -
    image: plugins/nomad:{{#if build.tag}}{{trimPrefix "v" build.tag}}-{{/if}}linux-amd64
    platform:
      architecture: amd64
      os: linux
  -
    image: plugins/nomad:{{#if build.tag}}{{trimPrefix "v" build.tag}}-{{/if}}linux-arm64
    platform:
      architecture: arm64
      os: linux
      variant: v8
  -
    image: plugins/nomad:{{#if build.tag}}{{trimPrefix "v" build.tag}}-{{/if}}linux-arm
    platform:
      architecture: arm
      os: linux
      variant: v7
  -
    image: plugins/nomad:{{#if build.tag}}{{trimPrefix "v" build.tag}}-{{/if}}windows-1809-amd64
    platform:
      architecture: amd64
      os: windows
      version: 1809
  -
    image: plugins/nomad:{{#if build.tag}}{{trimPrefix "v" build.tag}}-{{/if}}windows-1903-amd64
    platform:
      architecture: amd64
      os: windows
      version: 1903