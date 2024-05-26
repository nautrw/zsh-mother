# zsh-mother
<sup>Inspired from [catuhana/zsh-mommy](https://github.com/catuhana/zsh-mommy), but made "smarter"</sup>

>[!WARNING]
>This is probably very broken and doesn't work correctly. I made this for fun and as a joke.

>[!IMPORTANT]
>As previously mentioned, this project was made based on [catuhana/zsh-mommy](https://github.com/catuhana/zsh-mommy). It was made to be "smarter," as in now it only sends a message every 3 commands. It's very useless and you're probably better off using the real thing.

## Installation
Despite the warnings above, here are instructions on how to install this.
<details>
<summary>Manual Installation</summary>
Clone the repository somewhere. For this example I will be using the home directory.

```sh
git clone https://github.com/nautrw/zsh-mother ~
```

Then, add the following to your `.zshrc` file.

```sh
source ~/zsh-mother/zsh-mother.zsh
```

Finally, reload your shell! **Mother** will be there!
</details>

<details>
<summary>Oh My Zsh</summary>
Clone the repository to `~/.oh-my-zsh/custom`.

```sh
git clone https://github.com/catuhana/zsh-mommy ~/.oh-my-zsh/custom/plugins/zsh-mommy
```

Then add it to the plugins array in your `.zshrc`.

```sh
plugins=(zsh-mommy)
```
</details>

I honestly didn't care enough to include other package managers.

## Showcase
<a href="https://asciinema.org/a/jBggItmNmnmO8GQ4gJAUE9ory" target="_blank"><img src="https://asciinema.org/a/37390.png" width="400" /></a>