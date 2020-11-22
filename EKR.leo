<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2"/>
<globals/>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="ekr.20201122072754.1"><vh>Read me</vh></v>
<v t="ekr.20201122062937.1"><vh>@clean index.html</vh>
<v t="ekr.20201122062937.2"><vh>&lt;&lt;head&gt;&gt;</vh>
<v t="ekr.20201122062937.3"><vh>&lt;&lt; set window.lconfig &gt;&gt;</vh></v>
</v>
<v t="ekr.20201122062937.4"><vh>&lt;&lt; body &gt;&gt;</vh>
<v t="ekr.20201122062937.5"><vh>&lt;&lt; static footer &gt;&gt;</vh></v>
<v t="ekr.20201122062937.6"><vh>&lt;&lt; templates &gt;&gt;</vh>
<v t="ekr.20201122062937.7"><vh>&lt;&lt; rgarticle &gt;&gt;</vh></v>
<v t="ekr.20201122062937.8"><vh>&lt;&lt; rgarticle-brief &gt;&gt;</vh></v>
<v t="ekr.20201122062937.9"><vh>&lt;&lt; repec &gt;&gt;</vh></v>
<v t="ekr.20201122062937.10"><vh>&lt;&lt; rgauthor &gt;&gt;</vh></v>
<v t="ekr.20201122062937.11"><vh>&lt;&lt; rgarticles &gt;&gt;</vh></v>
<v t="ekr.20201122062937.12"><vh>&lt;&lt; repec-articles &gt;&gt;</vh></v>
<v t="ekr.20201122062937.13"><vh>&lt;&lt; rgcitiations &gt;&gt;</vh></v>
</v>
<v t="ekr.20201122062937.14"><vh>&lt;&lt; global site tag &gt;&gt;</vh></v>
<v t="ekr.20201122062937.15"><vh>&lt;&lt; style &gt;&gt;</vh></v>
</v>
</v>
<v t="ekr.20201122074608.1"><vh>@clean chunking.md </vh>
<v t="ekr.20201122075134.1"><vh>Code Chunking</vh></v>
</v>
<v t="ekr.20201122075109.1"><vh>@clean feature-introduction.md</vh>
<v t="ekr.20201122075117.1"><vh>Leo Is an Outlining Editor</vh></v>
<v t="ekr.20201122075117.2"><vh>Leo Outlines can contain Cloned Nodes</vh></v>
<v t="ekr.20201122075117.3"><vh>Leo Outlines can mirror other files</vh></v>
</v>
</vnodes>
<tnodes>
<t tx="ekr.20201122062937.1">@language html
@tabwidth -2
&lt;html&gt;
&lt;head&gt;
  &lt;&lt; head &gt;&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;&lt; body &gt;&gt;
&lt;/body&gt;
&lt;/html&gt;
</t>
<t tx="ekr.20201122062937.10">  &lt;div
          class="rg"&gt;
    &lt;h2&gt;Author&lt;/h2&gt;
    &lt;div&gt;{{- data.name}} {{- data.title}}&lt;/div&gt;
    &lt;div&gt;
      &lt;a target="_blank" href="{{- data.institution.href}}"&gt;{{- data.institution.text}}&lt;/a&gt;
    &lt;/div&gt;
    &lt;div&gt;
      &lt;a target="_blank" href="{{- data.department.href}}"&gt;{{- data.department.text}}&lt;/a&gt;
    &lt;/div&gt;
    &lt;h3&gt;ResearchGate Stats&lt;/h3&gt;
    &lt;div&gt;Citations: {{- data.citations}}&lt;/div&gt;
    &lt;div&gt;Reads: {{- data.reads}}&lt;/div&gt;
    &lt;div&gt;Research Items: {{- data.researchItems}}&lt;/div&gt;
    &lt;div&gt;&lt;a target="_blank" href="{{- data.url}}"&gt;Profile&lt;/a&gt;&lt;/div&gt;
  &lt;/div&gt;&lt;/script&gt;
&lt;script type=text/template id=rgarticles&gt;
</t>
<t tx="ekr.20201122062937.11">  &lt;div
          class="table-component"&gt;
    &lt;table-component
            @rowClick="this.$parent.dataTableClick"
            :data="[
    {{ data.articles.forEach(article =&gt; { }}
      {{ if (article.type.text === 'Article') { }}
      {
        title: '&lt;div&gt;{{- article.title.text}}&lt;/div&gt;',
        date: '&lt;div&gt;{{- moment(article.date).format('YYYY-MM') }}&lt;/div&gt;',
        reads: '{{- article.reads.replace(/[a-zA-Z]/g, '')}}',
        readNum: {{- article.reads.replace(/[,a-zA-Z]/g, '')}}
      },
      {{ } }}
    {{ }) }}
     ]"
            sort-order="asc"
            sort-by="readNum"&gt;
      &lt;table-column show="title" label="Title" header-class="title-cell" cell-class="title-cell"&gt;&lt;/table-column&gt;
      &lt;table-column show="date" label="Date" header-class="data-cell" cell-class="data-cell"&gt;&lt;/table-column&gt;
      &lt;table-column show="reads" label="Reads" sort-by="readNum" cell-class="right"&gt;&lt;/table-column&gt;
      &lt;table-column show="readNum" label="R" data-type="numeric" :hidden="true"&gt;&lt;/table-column&gt;
    &lt;/table-component&gt;
  &lt;/div&gt;&lt;/script&gt;
&lt;script type=text/template id=repec-articles&gt;
</t>
<t tx="ekr.20201122062937.12">  &lt;div
          class="table-component"&gt;
    &lt;table-component
            @rowClick="this.$parent.dataTableClick"
            :data="[
      {{ data.articles.forEach(article =&gt; { }}
        {
          title: '&lt;div&gt;{{- article.bibliographic.name}}&lt;/div&gt;',
          year: '&lt;div&gt;{{- article.bibliographic.creation_date || article.bibliographic.year }}&lt;/div&gt;'
        },
      {{ }) }}
     ]"
            sort-order="asc"&gt;
      &lt;table-column show="title" label="Title" header-class="title-cell" cell-class="title-cell"&gt;&lt;/table-column&gt;
      &lt;table-column show="year" label="Year" header-class="data-cell" cell-class="data-cell"&gt;&lt;/table-column&gt;
    &lt;/table-component&gt;
  &lt;/div&gt;&lt;/script&gt;
&lt;script type=text/template id=rgcitations&gt;CITATIONS&lt;/script&gt;
&lt;script async src="https://www.googletagmanager.com/gtag/js?id=UA-118289537-1"&gt;&lt;/script&gt;
&lt;script&gt;window.dataLayer = window.dataLayer || [];

function gtag() {
  dataLayer.push(arguments);
}

gtag('js', new Date());
gtag('config', 'UA-118289537-1');&lt;/script&gt;
&lt;script src=https://cdn.jsdelivr.net/gh/cferdinandi/smooth-scroll/dist/smooth-scroll.polyfills.min.js&gt;&lt;/script&gt;
&lt;script&gt;var scroll = new SmoothScroll('a[href*="#"]');&lt;/script&gt;
&lt;style type=text/css&gt;#app {
  font-family: Avenir, Nunito, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale
}

H1, H2 {
  margin-bottom: 1.5rem;
}&lt;/style&gt;
&lt;script type=text/javascript src=https://cdn.jsdelivr.net/npm/leo-vue/dist/static/js/manifest.js&gt;
&lt;/script&gt;
</t>
<t tx="ekr.20201122062937.13">&lt;script type=text/javascript
        src=https://cdn.jsdelivr.net/npm/leo-vue/dist/static/js/vendor.js&gt;&lt;/script&gt;
&lt;script type=text/javascript src=https://cdn.jsdelivr.net/npm/leo-vue/dist/static/js/app.js&gt;&lt;/script&gt;
</t>
<t tx="ekr.20201122062937.14"></t>
<t tx="ekr.20201122062937.15">&lt;style type="text/css"&gt;
  .topItem span {
    line-height: 1.5;
    white-space: normal;
    width: 250px;
    display: inline-block;
    line-height: 1.2;
  }
&lt;/style&gt;
</t>
<t tx="ekr.20201122062937.2">&lt;script defer=defer
        src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.1/MathJax.js?config=TeX-MML-AM_CHTML"&gt;&lt;/script&gt;
&lt;link href="https://fonts.googleapis.com/css?family=Nunito" rel=stylesheet&gt;
&lt;script src=https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.0/moment.min.js&gt;&lt;/script&gt;
&lt;script defer=defer src=https://cdn.rawgit.com/OnsenUI/OnsenUI-dist/2.0.0-beta.5/js/onsenui.min.js&gt;&lt;/script&gt;
&lt;script src=https://unpkg.com/mermaid@7.1.0/dist/mermaid.min.js&gt;&lt;/script&gt;
&lt;link rel=stylesheet href=https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css&gt;
&lt;script&gt;window.lconfig = {
  &lt;&lt; set window.lconfig &gt;&gt;
}
&lt;/script&gt;
&lt;meta charset=utf-8&gt;
&lt;title&gt;LeoVue&lt;/title&gt;
&lt;meta name=keywords content="knowledge organization, outlines, outliner, outlining IDE"&gt;
&lt;meta name=description
      content="Knowledge Organization with Leo and LeoVue: organize content and files into complex outlines."&gt;
&lt;link href=https://cdn.jsdelivr.net/npm/leo-vue/dist/static/css/app.css?146b226f238fbded81574d7b5914df3f rel=stylesheet&gt;
</t>
<t tx="ekr.20201122062937.3">@language javascript
"showAppTitle": false,
"showHeader": true,
"docTitle": "My Outline",
"filename": "docs",
"firstNodeAsTitle": true,
"baseMode": "t", // t = outline, for other types, see below
"activeBackgroundColor": "#01FF70", //
"itemArrow": "\uf105", // ▹▷▶›&gt;►
"leftPaneWidth": '300px',
"leftPaneBackground": '#fafafa',
"leftPanePadding": '10px',
"contentPaneWidth": '780px',
"coverPage": true,
"viewTypes": [
  {"name": "Outline", "type": "t"},
  {"name": "Inline", "type": "a"},
  {"name": "Graphic Tree", "type": "d"},
  // {"name": "Dendrogram", "type": "z"},
  {"name": "Nested Menu", "type": "n"}
],
githubRibbon: {
  text: 'Fork me on GitHub',
  linkUrl: 'https://github.com/kaleguy/leovue',
  fixed: true
},
// dataSources have a template name as key
// the template object has one key: host
// the host will have the node title appended to fetch JSON which gets processed via the template
"dataSources":
        {
          "rgarticle": {
            "host": "http://localhost:8888/rg/article?title=",
          },
          "rgarticle-brief": {
            "host": "http://localhost:8888/rg/article?title=",
          },
          "rgarticles": {
            "host": "http://localhost:8888/rg/articles?name=",
          },
          "rgauthor": {
            "host": "http://localhost:8888/rg/author?name=",
          },
          "rgcitations": {
            "host": "http://localhost:8888/rg/citations?name=",
          }
        }
// "leftPaneWidth": 'calc(50vw - 300px)',
// "rightPaneWidth": 'calc(50vw + 300px)',
// "leftPanePadding": 'calc(50vw - 600px)',</t>
<t tx="ekr.20201122062937.4">&lt;div id=app&gt;&lt;/div&gt;
&lt;script type=text/ons-template id=popover.html&gt;
&lt;&lt; static footer &gt;&gt;
&lt;&lt; templates &gt;&gt;
&lt;&lt; global site tag &gt;&gt;
&lt;&lt; style &gt;&gt;
</t>
<t tx="ekr.20201122062937.5">  &lt;ons-popover
          direction="up down" cancelable&gt;
    &lt;div style="text-align: center; opacity: 0.7;" id="popover.content.html"&gt;
      &lt;p&gt;This is a popover!&lt;/p&gt;
      &lt;p&gt;
        &lt;small&gt;Click the background to remove the popover.&lt;/small&gt;
      &lt;/p&gt;
    &lt;/div&gt;
</t>
<t tx="ekr.20201122062937.6">  &lt;/ons-popover&gt;&lt;/script&gt;
&lt;&lt; rgarticle &gt;&gt;
&lt;&lt; rgarticle-brief &gt;&gt;
&lt;&lt; repec &gt;&gt;
&lt;&lt; rgauthor &gt;&gt;
&lt;&lt; rgarticles &gt;&gt;
&lt;&lt; repec-articles &gt;&gt;
&lt;&lt; rgcitiations &gt;&gt;
</t>
<t tx="ekr.20201122062937.7">&lt;div id=popup class=popover style=display:none&gt;
  &lt;div class=arrow&gt;&lt;/div&gt;
  &lt;h3 class=popover-header&gt;Popover Title&lt;/h3&gt;
  &lt;div class=popover-body&gt;Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia
    quam venenatis vestibulum.
  &lt;/div&gt;
&lt;/div&gt;
&lt;script type=text/template id=rgarticle&gt;
  &lt;div
          class="rg"&gt;
    &lt;div class="publication-header"&gt;
      &lt;h1&gt;{{- data.title }}&lt;/h1&gt;
      &lt;div class="publication-meta-text"&gt;
        &lt;strong&gt;
          &lt;span&gt;
            &lt;a target="_blank" href="{{- data.url }}"&gt;Article&lt;/a&gt;
            in
          &lt;a target="_blank" href="//www.researchgate.net/{{- data.journal.href}}"&gt;{{- data.journal.text }}&lt;/a&gt;
        &lt;/span&gt;
        &lt;/strong&gt;
        &lt;span&gt; with {{- data.reads }}&lt;/span&gt;
      &lt;/div&gt;
      &lt;div&gt;
        &lt;ul&gt;
          {{ data.authors.forEach(author =&gt; { }}
          &lt;li class="publication-author-list__item"&gt;
            &lt;div&gt;
              &lt;a target="_blank" href="{{- author.name.href }}"&gt;{{- author.name.text }}&lt;/a&gt;
            &lt;/div&gt;
            {{ if (author.rating){ }}
            &lt;span class="bars-1"/&gt;
            {{ } }}
            &lt;span&gt;{{- author.rating }}	{{- author.institution }}&lt;/span&gt;
          &lt;/li&gt;
          {{ }) }}
        &lt;/ul&gt;
      &lt;/div&gt;
      &lt;div class="publication-abstract"&gt;
        &lt;div&gt;
          &lt;strong&gt;Abstract&lt;/strong&gt;
        &lt;/div&gt;
        &lt;div&gt;{{- data.abstract }}&lt;/div&gt;
        &lt;div class="references"&gt;{{- data.references }} References&lt;/div&gt;
      &lt;/div&gt;
      {{ if (data.correction) { }}
      &lt;div class="publication-abstract"&gt;
        &lt;div class="hshim"&gt;&lt;/div&gt;
        &lt;div&gt;
          &lt;strong&gt;Correction&lt;/strong&gt;
        &lt;/div&gt;
        &lt;div&gt;{{- data.correction.text }} &lt;a href="{{- data.correction.href }}"&gt;Details&lt;/a&gt;
        &lt;/div&gt;
      &lt;/div&gt;
      {{ } }}
      &lt;div class="footer"&gt;
        &lt;a target="_blank" href="{{- data.url }}"&gt;See this article on ResearchGate.&lt;/a&gt;
      &lt;/div&gt;
    &lt;/div&gt;
  &lt;/div&gt;&lt;/script&gt;
&lt;script type=text/template id=rgarticle-brief&gt;
</t>
<t tx="ekr.20201122062937.8">  &lt;div
          class="rg"&gt;
    &lt;div class="publication-header"&gt;
      &lt;h1&gt;{{- data.title.text }}&lt;/h1&gt;
      &lt;div class="publication-meta-text"&gt;
        &lt;span&gt; {{- data['type'].text}}: {{- data.date }} with {{- data.reads }}&lt;/span&gt;
      &lt;/div&gt;
      &lt;div&gt;
        &lt;ul&gt;
          {{ data.authors.forEach(author =&gt; { }}
          &lt;li class="publication-author-list__item_brief"&gt;
            &lt;div&gt;
              &lt;a target="_blank" href="http://researchget.net/{{- author.author.href }}"&gt;{{- author.author.text }}&lt;/a&gt;
            &lt;/div&gt;
          &lt;/li&gt;
          {{ }) }}
        &lt;/ul&gt;
      &lt;/div&gt;
      &lt;div class="publication-abstract"&gt;
        &lt;div&gt;
          &lt;strong&gt;Abstract&lt;/strong&gt;
        &lt;/div&gt;
        &lt;div&gt;{{- data.abstract }}&lt;/div&gt;
      &lt;/div&gt;
      &lt;div class="footer"&gt;
        &lt;a target="_blank" href="https://www.researchgate.net/{{- data.title.href}}"&gt;See this article on ResearchGate.&lt;/a&gt;
      &lt;/div&gt;
    &lt;/div&gt;
  &lt;/div&gt;&lt;/script&gt;
&lt;script type=text/template id=repec&gt;
</t>
<t tx="ekr.20201122062937.9">  &lt;div
          class="rg"&gt;
    &lt;div class="publication-header"&gt;
      &lt;h1&gt;{{- data.bibliographic.name }}&lt;/h1&gt;
      &lt;div&gt;
        {{- data.author }}
      &lt;/div&gt;
      &lt;div class="series"&gt;
        {{- data.series &amp;&amp; data.series.name }} ({{- data.bibliographic.creation_date || data.bibliographic.year }})
      &lt;/div&gt;
      &lt;div class="publication-abstract"&gt;
        &lt;div&gt;
          &lt;strong&gt;Abstract&lt;/strong&gt;
        &lt;/div&gt;
        &lt;div&gt;{{- data.abstract }}&lt;/div&gt;
      &lt;/div&gt;
      &lt;div class="footer"&gt;
        &lt;a target="_blank" href="{{- data.link}}"&gt;See this article on IDEAS.&lt;/a&gt;
      &lt;/div&gt;
    &lt;/div&gt;
  &lt;/div&gt;&lt;/script&gt;
&lt;script type=text/template id=rgauthor&gt;
</t>
<t tx="ekr.20201122072754.1">@language rest
@wrap

This file manages all the files in the leo-editor-leovue repo.
https://github.com/leo-editor/leo-editor-leovue

Originals of all files came from https://kaleguy.github.io/leovue
</t>
<t tx="ekr.20201122074608.1">@language md
@wrap
@tabwidth -4
@others
</t>
<t tx="ekr.20201122075109.1">@language md
@tabwidth -4
@others
</t>
<t tx="ekr.20201122075117.1"># Leo Is an Outlining Editor

In the screenshot below, you can see an outline or tree in the top left pane, and content for current node being entered into the bottom pane.

&lt;!--- Download these from https://kaleguy.github.io/leovue ---&gt;

&lt;img width="700" src="http://ekr.rrhandwovens.com/static/leo1.png" alt="leo1.png"&gt;
</t>
<t tx="ekr.20201122075117.2"># Leo Outlines can contain Cloned Nodes

A single node can appear in multiple places in your tree, this is called a "clone" node. This allows Leo Outlines to be in effect, three dimensional and arbitrarily complex.

In the screenshot below, the "Coffeescript" node has been cloned and is appearing in two places in the tree. When you edit the content of the node and then click on its clone, you'll see that the edited content shows on both.

&lt;img width="700" src="http://ekr.rrhandwovens.com/static/leo2.png" alt="ScreenShot"&gt;
</t>
<t tx="ekr.20201122075117.3"># Leo Outlines can mirror other files

The screenshot below shows a node with a '@clean' directive. This tells Leo that the content of the node should mirror the file specified by the directive.

This means that, when the target file is updated by another program, the content in the node will automatically update in Leo, regardless of whether that content has been divided into subnodes by Leo. To see how this works, read the next section: &lt;b&gt;Chunking&lt;/b&gt;.

&lt;img width="700" src="http://ekr.rrhandwovens.com/static/leo3.png" alt="ScreenShot"&gt;
</t>
<t tx="ekr.20201122075134.1"># Code Chunking

In the screenshot below, we've created a new node with a @clean directive with a file name. We've pasted the contents of the file into the node.

&lt;img width="700" src="http://ekr.rrhandwovens.com/static/leo4.png" alt="leo4.png"&gt;

This is a Vuejs component file, with three sections. We're going to break the sections out into separate nodes. First create a section name using double angle brackets.

&lt;img width="700" src="http://ekr.rrhandwovens.com/static/leo5.png" alt="leo5.png"&gt;

Now select the section name plus the code you want to put in a sub node.

&lt;img width="700" src="http://ekr.rrhandwovens.com/static/leo6.png" alt="leo6.png"&gt;

Enter Cmd-Shift-D to chunk the selected content into a subnode.

&lt;img width="700" src="http://ekr.rrhandwovens.com/static/leo7.png" alt="leo7.png"&gt;

Repeat this process with the other sections of the Vuejs component, now each has its own node. 

&lt;img width="700" src="http://ekr.rrhandwovens.com/static/leo8.png" alt="leo8.png"&gt;

This is a simple example, but using Leo it is possible to quickly break up a large, complex set of code into manageable pieces. The target file is not affected, and if the target file is changed in another program, Leo will update the appropriate nodes.
</t>
</tnodes>
</leo_file>
