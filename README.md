<h3 align="center" style="font-weight:600">
  rescript-expo
</h3>

<p align="center">
  <a href="https://rescript-lang.org/">Rescript</a> bindings for <a href="https://expo.io">Expo</a>
</p>

---

## Versioning

This library doesn't follow conventional semver. The version scheme is shown below, and you should track this library accordingly.

`<ExpoVersion>.<Major>.<Minor/Patch>`

## Getting started

Go into your project root & then install the requirements:

```bash
yarn add bs-platform --dev
yarn add @rescript/react rescript-react-native rescript-expo
```

Next, create a file named bsconfig.json at the same level at your package.json with the following content:

```json
{
  "name": "my-rescript-expo-app",
  "reason": {
    "react-jsx": 3
  },
  "bsc-flags": ["-bs-super-errors"],
  "bs-dependencies": ["@rescript/react", "rescript-react-native", "rescript-expo"],
  "sources": [
    {
      "dir": "src"
    }
  ],
  "suffix": ".bs.js",
  "refmt": 3,
  "package-specs": {
    "module": "es6",
    "in-source": true
  }
}
```

Next, add these scripts to your package.json:

```json
  "re:build": "bsb -make-world",
  "re:watch": "bsb -make-world -w",
  "re:build-clean": "bsb -clean-world -make-world",
```

Finally, make a folder named `src` and start writing your Rescript code in there. `yarn re:build` will compile the Rescript code in that folder for you to import and use in your Expo app's JS/TS code.

## Contributing

Fork this repo, clone it onto your machine, install run `yarn` in the root directory. 
Create a branch with `feature/` or `bugfix/` prefix make changes and open a PR to this repo.
Happy hacking.

_Credit: This project is based on the work started in [`reason-expo`](https://github.com/draftbit/reason-expo)._