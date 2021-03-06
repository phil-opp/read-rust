---
title: Home
layout: default.liquid
---

Read Rust collects interesting posts related to the [Rust
programming&nbsp;language][rust-lang].

[Subscribe to a feed][feeds], or follow Read Rust on [Twitter], [Mastodon] or
[Facebook] to receive new posts as they're added.

Read Rust is run by [Wesley Moore]. If you enjoy it, consider [supporting
me][Patreon] or any of the wonderful people building and writing in Rust.

## Sections

New posts are added to one or more of the following sections:

<ul>
<li><a href="/all/">All Posts</a></li>
{% for category in site.data.categories %}
<li><a href="{{ category.path }}">{{ category.name | escape }}</a> — {{ category.description | escape }}</li>
{% endfor %}
</ul>
<!-- * [Community](/community/) — regarding the Rust community. -->
<!-- * [Crypto](/crypto/) ? -->
<!-- * [DevOps](/devops/) -->
<!-- * [Talks and Presentations](/talks/) -->
<!-- * [Audio and Music](/audio-and-music/) -->

<h2>
  Recent Posts
  <a class="feedicon" href="/all/feed.rss" title="Read Rust RSS Feed">
    <img src="/images/rss.svg" />
  </a>
  <a class="feedicon" href="/all/feed.json" title="Read Rust JSON Feed">
    <img src="/images/jsonfeed.png" />
  </a>
</h2>

<ul>
{% assign count = 0 %}
{% for post in site.data.rust.posts.items %}
  {% assign count = count | plus: 1 %}
<li>
  <a href="{{ post.url }}">{{ post.title | escape }}</a> by {{ post.author.name | escape }}
  in {% for tag in post.tags %}<a href="/{{ tag | downcase | replace: " ", "-" }}/">{{ tag }}</a>{% unless forloop.last %}, {% endunless %}{% endfor %}
</li>
  {% if count >= 10 %}{% break %}{% endif %}
{% endfor %}
</ul>

[View all posts](/all/)

[feeds]: /about.html#feeds
[rust-lang]: https://www.rust-lang.org/
[RSS]: http://localhost:3000/all/feed.rss
[Twitter]: https://twitter.com/read_rust
[Facebook]: https://www.facebook.com/readrust/
[Mastodon]: https://botsin.space/@readrust
[Patreon]: https://patreon.com/wezm
[Wesley Moore]: http://www.wezm.net/about/
