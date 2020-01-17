---
title: Notes
permalink: /notes/all
layout: default
---

{::options parse_block_html="true" /}
{% for note in site.notes %}
{{ note.content }}
{% endfor %}
