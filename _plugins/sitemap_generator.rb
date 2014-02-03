




<!DOCTYPE html>
<html>
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# object: http://ogp.me/ns/object# article: http://ogp.me/ns/article# profile: http://ogp.me/ns/profile#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>jekyll-plugins/sitemap_generator.rb at master · kinnetica/jekyll-plugins</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png" />
    <meta property="fb:app_id" content="1401488693436528"/>

      <meta content="@github" name="twitter:site" /><meta content="summary" name="twitter:card" /><meta content="kinnetica/jekyll-plugins" name="twitter:title" /><meta content="Contribute to jekyll-plugins development by creating an account on GitHub." name="twitter:description" /><meta content="https://2.gravatar.com/avatar/253a11f2832aa16998cbbe11e6322b92?d=https%3A%2F%2Fidenticons.github.com%2F38a44114cc0447f1b9d5270e884de9f2.png&amp;r=x&amp;s=400" name="twitter:image:src" />
<meta content="GitHub" property="og:site_name" /><meta content="object" property="og:type" /><meta content="https://2.gravatar.com/avatar/253a11f2832aa16998cbbe11e6322b92?d=https%3A%2F%2Fidenticons.github.com%2F38a44114cc0447f1b9d5270e884de9f2.png&amp;r=x&amp;s=400" property="og:image" /><meta content="kinnetica/jekyll-plugins" property="og:title" /><meta content="https://github.com/kinnetica/jekyll-plugins" property="og:url" /><meta content="Contribute to jekyll-plugins development by creating an account on GitHub." property="og:description" />

    <meta name="hostname" content="github-fe128-cp1-prd.iad.github.net">
    <meta name="ruby" content="ruby 2.1.0p0-github-tcmalloc (87d8860372) [x86_64-linux]">
    <link rel="assets" href="https://github.global.ssl.fastly.net/">
    <link rel="conduit-xhr" href="https://ghconduit.com:25035/">
    <link rel="xhr-socket" href="/_sockets" />
    


    <meta name="msapplication-TileImage" content="/windows-tile.png" />
    <meta name="msapplication-TileColor" content="#ffffff" />
    <meta name="selected-link" value="repo_source" data-pjax-transient />
    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="collector-cdn.github.com" name="octolytics-script-host" /><meta content="github" name="octolytics-app-id" /><meta content="86244095:55BB:678E3C7:52EF6381" name="octolytics-dimension-request_id" /><meta content="680245" name="octolytics-actor-id" /><meta content="biomadeira" name="octolytics-actor-login" /><meta content="257146e051649c81cfb8a8be27481319d79290fee0454b519caec5bafbef9aac" name="octolytics-actor-hash" />
    

    
    
    <link rel="icon" type="image/x-icon" href="/favicon.ico" />

    <meta content="authenticity_token" name="csrf-param" />
<meta content="DVxvW2fjGeD2u6kSadFGoQv4dEYnh4M/peIFcqfiWAo=" name="csrf-token" />

    <link href="https://github.global.ssl.fastly.net/assets/github-24110eba31d0d5f1c0d31c305baf1f7e0557948d.css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://github.global.ssl.fastly.net/assets/github2-09d4cddbd997c7aff84e5b1a25917774ca5c8fd7.css" media="all" rel="stylesheet" type="text/css" />
    


      <script src="https://github.global.ssl.fastly.net/assets/frameworks-02ee5d6f13ffacca6207d163a3c10aba4fb80b16.js" type="text/javascript"></script>
      <script async="async" defer="defer" src="https://github.global.ssl.fastly.net/assets/github-a53088f26c2015260e9096feaf8fe0b38dce3cf5.js" type="text/javascript"></script>
      
      <meta http-equiv="x-pjax-version" content="a2c8f483706c14f8c834c12d447f1c1f">

        <link data-pjax-transient rel='permalink' href='/kinnetica/jekyll-plugins/blob/f38978f829cbe7400248a37de9ed1c903859a042/sitemap_generator.rb'>

  <meta name="description" content="Contribute to jekyll-plugins development by creating an account on GitHub." />

  <meta content="495688" name="octolytics-dimension-user_id" /><meta content="kinnetica" name="octolytics-dimension-user_login" /><meta content="1628215" name="octolytics-dimension-repository_id" /><meta content="kinnetica/jekyll-plugins" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="1628215" name="octolytics-dimension-repository_network_root_id" /><meta content="kinnetica/jekyll-plugins" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/kinnetica/jekyll-plugins/commits/master.atom" rel="alternate" title="Recent Commits to jekyll-plugins:master" type="application/atom+xml" />

  </head>


  <body class="logged_in  env-production macintosh vis-public page-blob">
    <div class="wrapper">
      
      
      
      


      <div class="header header-logged-in true">
  <div class="container clearfix">

    <a class="header-logo-invertocat" href="https://github.com/">
  <span class="mega-octicon octicon-mark-github"></span>
</a>

    
    <a href="/notifications" class="notification-indicator tooltipped downwards" data-gotokey="n" title="You have unread notifications">
        <span class="mail-status unread"></span>
</a>

      <div class="command-bar js-command-bar  in-repository">
          <form accept-charset="UTF-8" action="/search" class="command-bar-form" id="top_search_form" method="get">

<input type="text" data-hotkey="/ s" name="q" id="js-command-bar-field" placeholder="Search or type a command" tabindex="1" autocapitalize="off"
    
    data-username="biomadeira"
      data-repo="kinnetica/jekyll-plugins"
      data-branch="master"
      data-sha="9b3ec2b04437daaeb5e5e004d2d9c96391efbf46"
  >

    <input type="hidden" name="nwo" value="kinnetica/jekyll-plugins" />

    <div class="select-menu js-menu-container js-select-menu search-context-select-menu">
      <span class="minibutton select-menu-button js-menu-target">
        <span class="js-select-button">This repository</span>
      </span>

      <div class="select-menu-modal-holder js-menu-content js-navigation-container">
        <div class="select-menu-modal">

          <div class="select-menu-item js-navigation-item js-this-repository-navigation-item selected">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" class="js-search-this-repository" name="search_target" value="repository" checked="checked" />
            <div class="select-menu-item-text js-select-button-text">This repository</div>
          </div> <!-- /.select-menu-item -->

          <div class="select-menu-item js-navigation-item js-all-repositories-navigation-item">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" name="search_target" value="global" />
            <div class="select-menu-item-text js-select-button-text">All repositories</div>
          </div> <!-- /.select-menu-item -->

        </div>
      </div>
    </div>

  <span class="octicon help tooltipped downwards" title="Show command bar help">
    <span class="octicon octicon-question"></span>
  </span>


  <input type="hidden" name="ref" value="cmdform">

</form>
        <ul class="top-nav">
          <li class="explore"><a href="/explore">Explore</a></li>
            <li><a href="https://gist.github.com">Gist</a></li>
            <li><a href="/blog">Blog</a></li>
          <li><a href="https://help.github.com">Help</a></li>
        </ul>
      </div>

    


  <ul id="user-links">
    <li>
      <a href="/biomadeira" class="name">
        <img alt="Fábio Madeira" height="20" src="https://0.gravatar.com/avatar/a1c067552dea1846790cebdb41c4fa80?d=https%3A%2F%2Fidenticons.github.com%2F9b17534e265c00877305a92f484d1d3f.png&amp;r=x&amp;s=140" width="20" /> biomadeira
      </a>
    </li>

    <li class="new-menu dropdown-toggle js-menu-container">
      <a href="#" class="js-menu-target tooltipped downwards" title="Create new..." aria-label="Create new...">
        <span class="octicon octicon-plus"></span>
        <span class="dropdown-arrow"></span>
      </a>

      <div class="js-menu-content">
      </div>
    </li>

    <li>
      <a href="/settings/profile" id="account_settings"
        class="tooltipped downwards"
        aria-label="Account settings "
        title="Account settings ">
        <span class="octicon octicon-tools"></span>
      </a>
    </li>
    <li>
      <a class="tooltipped downwards" href="/logout" data-method="post" id="logout" title="Sign out" aria-label="Sign out">
        <span class="octicon octicon-log-out"></span>
      </a>
    </li>

  </ul>

<div class="js-new-dropdown-contents hidden">
  

<ul class="dropdown-menu">
  <li>
    <a href="/new"><span class="octicon octicon-repo-create"></span> New repository</a>
  </li>
  <li>
    <a href="/organizations/new"><span class="octicon octicon-organization"></span> New organization</a>
  </li>


    <li class="section-title">
      <span title="kinnetica/jekyll-plugins">This repository</span>
    </li>
      <li>
        <a href="/kinnetica/jekyll-plugins/issues/new"><span class="octicon octicon-issue-opened"></span> New issue</a>
      </li>
</ul>

</div>


    
  </div>
</div>

      

      




          <div class="site" itemscope itemtype="http://schema.org/WebPage">
    
    <div class="pagehead repohead instapaper_ignore readability-menu">
      <div class="container">
        

<ul class="pagehead-actions">

    <li class="subscription">
      <form accept-charset="UTF-8" action="/notifications/subscribe" class="js-social-container" data-autosubmit="true" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="authenticity_token" type="hidden" value="DVxvW2fjGeD2u6kSadFGoQv4dEYnh4M/peIFcqfiWAo=" /></div>  <input id="repository_id" name="repository_id" type="hidden" value="1628215" />

    <div class="select-menu js-menu-container js-select-menu">
      <a class="social-count js-social-count" href="/kinnetica/jekyll-plugins/watchers">
        11
      </a>
      <span class="minibutton select-menu-button with-count js-menu-target" role="button" tabindex="0">
        <span class="js-select-button">
          <span class="octicon octicon-eye-watch"></span>
          Watch
        </span>
      </span>

      <div class="select-menu-modal-holder">
        <div class="select-menu-modal subscription-menu-modal js-menu-content">
          <div class="select-menu-header">
            <span class="select-menu-title">Notification status</span>
            <span class="octicon octicon-remove-close js-menu-close"></span>
          </div> <!-- /.select-menu-header -->

          <div class="select-menu-list js-navigation-container" role="menu">

            <div class="select-menu-item js-navigation-item selected" role="menuitem" tabindex="0">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input checked="checked" id="do_included" name="do" type="radio" value="included" />
                <h4>Not watching</h4>
                <span class="description">You only receive notifications for conversations in which you participate or are @mentioned.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-eye-watch"></span>
                  Watch
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

            <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
              <span class="select-menu-item-icon octicon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input id="do_subscribed" name="do" type="radio" value="subscribed" />
                <h4>Watching</h4>
                <span class="description">You receive notifications for all conversations in this repository.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-eye-unwatch"></span>
                  Unwatch
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

            <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input id="do_ignore" name="do" type="radio" value="ignore" />
                <h4>Ignoring</h4>
                <span class="description">You do not receive any notifications for conversations in this repository.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-mute"></span>
                  Stop ignoring
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

          </div> <!-- /.select-menu-list -->

        </div> <!-- /.select-menu-modal -->
      </div> <!-- /.select-menu-modal-holder -->
    </div> <!-- /.select-menu -->

</form>
    </li>

  <li>
  

  <div class="js-toggler-container js-social-container starring-container ">
    <a href="/kinnetica/jekyll-plugins/unstar"
      class="minibutton with-count js-toggler-target star-button starred upwards"
      title="Unstar this repository" data-remote="true" data-method="post" rel="nofollow">
      <span class="octicon octicon-star-delete"></span><span class="text">Unstar</span>
    </a>

    <a href="/kinnetica/jekyll-plugins/star"
      class="minibutton with-count js-toggler-target star-button unstarred upwards"
      title="Star this repository" data-remote="true" data-method="post" rel="nofollow">
      <span class="octicon octicon-star"></span><span class="text">Star</span>
    </a>

      <a class="social-count js-social-count" href="/kinnetica/jekyll-plugins/stargazers">
        98
      </a>
  </div>

  </li>


        <li>
          <a href="/kinnetica/jekyll-plugins/fork" class="minibutton with-count js-toggler-target fork-button lighter upwards" title="Fork this repo" rel="nofollow" data-method="post">
            <span class="octicon octicon-git-branch-create"></span><span class="text">Fork</span>
          </a>
          <a href="/kinnetica/jekyll-plugins/network" class="social-count">31</a>
        </li>


</ul>

        <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
          <span class="repo-label"><span>public</span></span>
          <span class="mega-octicon octicon-repo"></span>
          <span class="author">
            <a href="/kinnetica" class="url fn" itemprop="url" rel="author"><span itemprop="title">kinnetica</span></a>
          </span>
          <span class="repohead-name-divider">/</span>
          <strong><a href="/kinnetica/jekyll-plugins" class="js-current-repository js-repo-home-link">jekyll-plugins</a></strong>

          <span class="page-context-loader">
            <img alt="Octocat-spinner-32" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
          </span>

        </h1>
      </div><!-- /.container -->
    </div><!-- /.repohead -->

    <div class="container">
      

      <div class="repository-with-sidebar repo-container new-discussion-timeline js-new-discussion-timeline  ">
        <div class="repository-sidebar">
            

<div class="sunken-menu vertical-right repo-nav js-repo-nav js-repository-container-pjax js-octicon-loaders">
  <div class="sunken-menu-contents">
    <ul class="sunken-menu-group">
      <li class="tooltipped leftwards" title="Code">
        <a href="/kinnetica/jekyll-plugins" aria-label="Code" class="selected js-selected-navigation-item sunken-menu-item" data-gotokey="c" data-pjax="true" data-selected-links="repo_source repo_downloads repo_commits repo_tags repo_branches /kinnetica/jekyll-plugins">
          <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

        <li class="tooltipped leftwards" title="Issues">
          <a href="/kinnetica/jekyll-plugins/issues" aria-label="Issues" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-gotokey="i" data-selected-links="repo_issues /kinnetica/jekyll-plugins/issues">
            <span class="octicon octicon-issue-opened"></span> <span class="full-word">Issues</span>
            <span class='counter'>4</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>        </li>

      <li class="tooltipped leftwards" title="Pull Requests">
        <a href="/kinnetica/jekyll-plugins/pulls" aria-label="Pull Requests" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-gotokey="p" data-selected-links="repo_pulls /kinnetica/jekyll-plugins/pulls">
            <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull Requests</span>
            <span class='counter'>1</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>


        <li class="tooltipped leftwards" title="Wiki">
          <a href="/kinnetica/jekyll-plugins/wiki" aria-label="Wiki" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="repo_wiki /kinnetica/jekyll-plugins/wiki">
            <span class="octicon octicon-book"></span> <span class="full-word">Wiki</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>        </li>
    </ul>
    <div class="sunken-menu-separator"></div>
    <ul class="sunken-menu-group">

      <li class="tooltipped leftwards" title="Pulse">
        <a href="/kinnetica/jekyll-plugins/pulse" aria-label="Pulse" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="pulse /kinnetica/jekyll-plugins/pulse">
          <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped leftwards" title="Graphs">
        <a href="/kinnetica/jekyll-plugins/graphs" aria-label="Graphs" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="repo_graphs repo_contributors /kinnetica/jekyll-plugins/graphs">
          <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped leftwards" title="Network">
        <a href="/kinnetica/jekyll-plugins/network" aria-label="Network" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-selected-links="repo_network /kinnetica/jekyll-plugins/network">
          <span class="octicon octicon-git-branch"></span> <span class="full-word">Network</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>
    </ul>


  </div>
</div>

              <div class="only-with-full-nav">
                

  

<div class="clone-url open"
  data-protocol-type="http"
  data-url="/users/set_protocol?protocol_selector=http&amp;protocol_type=clone">
  <h3><strong>HTTPS</strong> clone URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="https://github.com/kinnetica/jekyll-plugins.git" readonly="readonly">

    <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="https://github.com/kinnetica/jekyll-plugins.git" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>

  

<div class="clone-url "
  data-protocol-type="ssh"
  data-url="/users/set_protocol?protocol_selector=ssh&amp;protocol_type=clone">
  <h3><strong>SSH</strong> clone URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="git@github.com:kinnetica/jekyll-plugins.git" readonly="readonly">

    <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="git@github.com:kinnetica/jekyll-plugins.git" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>

  

<div class="clone-url "
  data-protocol-type="subversion"
  data-url="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=clone">
  <h3><strong>Subversion</strong> checkout URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="https://github.com/kinnetica/jekyll-plugins" readonly="readonly">

    <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="https://github.com/kinnetica/jekyll-plugins" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>


<p class="clone-options">You can clone with
      <a href="#" class="js-clone-selector" data-protocol="http">HTTPS</a>,
      <a href="#" class="js-clone-selector" data-protocol="ssh">SSH</a>,
      or <a href="#" class="js-clone-selector" data-protocol="subversion">Subversion</a>.
  <span class="octicon help tooltipped upwards" title="Get help on which URL is right for you.">
    <a href="https://help.github.com/articles/which-remote-url-should-i-use">
    <span class="octicon octicon-question"></span>
    </a>
  </span>
</p>

  <a href="http://mac.github.com" data-url="github-mac://openRepo/https://github.com/kinnetica/jekyll-plugins" class="minibutton sidebar-button js-conduit-rewrite-url">
    <span class="octicon octicon-device-desktop"></span>
    Clone in Desktop
  </a>


                <a href="/kinnetica/jekyll-plugins/archive/master.zip"
                   class="minibutton sidebar-button"
                   title="Download this repository as a zip file"
                   rel="nofollow">
                  <span class="octicon octicon-cloud-download"></span>
                  Download ZIP
                </a>
              </div>
        </div><!-- /.repository-sidebar -->

        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>
          


<!-- blob contrib key: blob_contributors:v21:c13c06e5acd67b106ee89ece5467d037 -->

<p title="This is a placeholder element" class="js-history-link-replace hidden"></p>

<a href="/kinnetica/jekyll-plugins/find/master" data-pjax data-hotkey="t" class="js-show-file-finder" style="display:none">Show File Finder</a>

<div class="file-navigation">
  

<div class="select-menu js-menu-container js-select-menu" >
  <span class="minibutton select-menu-button js-menu-target" data-hotkey="w"
    data-master-branch="master"
    data-ref="master"
    role="button" aria-label="Switch branches or tags" tabindex="0">
    <span class="octicon octicon-git-branch"></span>
    <i>branch:</i>
    <span class="js-select-button">master</span>
  </span>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax>

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="select-menu-title">Switch branches/tags</span>
        <span class="octicon octicon-remove-close js-menu-close"></span>
      </div> <!-- /.select-menu-header -->

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Filter branches/tags" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" class="js-select-menu-tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" class="js-select-menu-tab">Tags</a>
            </li>
          </ul>
        </div><!-- /.select-menu-tabs -->
      </div><!-- /.select-menu-filters -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item selected">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/kinnetica/jekyll-plugins/blob/master/sitemap_generator.rb"
                 data-name="master"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="master">master</a>
            </div> <!-- /.select-menu-item -->
        </div>

          <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

    </div> <!-- /.select-menu-modal -->
  </div> <!-- /.select-menu-modal-holder -->
</div> <!-- /.select-menu -->

  <div class="breadcrumb">
    <span class='repo-root js-repo-root'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/kinnetica/jekyll-plugins" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">jekyll-plugins</span></a></span></span><span class="separator"> / </span><strong class="final-path">sitemap_generator.rb</strong> <span class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="sitemap_generator.rb" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>


  <div class="commit file-history-tease">
    <img alt="Nicolas Hery" class="main-avatar" height="24" src="https://2.gravatar.com/avatar/9486a6cea0123553c01859088fcbca23?d=https%3A%2F%2Fidenticons.github.com%2F0985487511bdd0519c8f0d8ffcc262de.png&amp;r=x&amp;s=140" width="24" />
    <span class="author"><a href="/nicolashery" rel="author">nicolashery</a></span>
    <time class="js-relative-date" datetime="2013-06-13T09:52:37-07:00" title="2013-06-13 09:52:37">June 13, 2013</time>
    <div class="commit-title">
        <a href="/kinnetica/jekyll-plugins/commit/b5c375ab314a39906655f0bc38fd76d6afbb1678" class="message" data-pjax="true" title="Add leading slash to paths in config

For some reason `exclude` files didn&#39;t work without the leading
slash. Added to all paths in config for consistency.">Add leading slash to paths in config</a>
    </div>

    <div class="participation">
      <p class="quickstat"><a href="#blob_contributors_box" rel="facebox"><strong>4</strong> contributors</a></p>
          <a class="avatar tooltipped downwards" title="mlevin" href="/kinnetica/jekyll-plugins/commits/master/sitemap_generator.rb?author=mlevin"><img alt="Michael Levin" height="20" src="https://2.gravatar.com/avatar/253a11f2832aa16998cbbe11e6322b92?d=https%3A%2F%2Fidenticons.github.com%2F05c2c86f336fcedf2c02a171ca290d46.png&amp;r=x&amp;s=140" width="20" /></a>
    <a class="avatar tooltipped downwards" title="danielgroves" href="/kinnetica/jekyll-plugins/commits/master/sitemap_generator.rb?author=danielgroves"><img alt="Daniel Groves" height="20" src="https://2.gravatar.com/avatar/bda6691b74b166d9d6d4b03a816637c8?d=https%3A%2F%2Fidenticons.github.com%2Faf352d71ac1e0f058e65941cdab723b2.png&amp;r=x&amp;s=140" width="20" /></a>
    <a class="avatar tooltipped downwards" title="nicolashery" href="/kinnetica/jekyll-plugins/commits/master/sitemap_generator.rb?author=nicolashery"><img alt="Nicolas Hery" height="20" src="https://2.gravatar.com/avatar/9486a6cea0123553c01859088fcbca23?d=https%3A%2F%2Fidenticons.github.com%2F0985487511bdd0519c8f0d8ffcc262de.png&amp;r=x&amp;s=140" width="20" /></a>
    <a class="avatar tooltipped downwards" title="pke" href="/kinnetica/jekyll-plugins/commits/master/sitemap_generator.rb?author=pke"><img alt="Philipp Kursawe" height="20" src="https://2.gravatar.com/avatar/c1fc0e1dee65573215cdf9335ba19f71?d=https%3A%2F%2Fidenticons.github.com%2F4eb69674b9c8892dda5bcf1bba1d7107.png&amp;r=x&amp;s=140" width="20" /></a>


    </div>
    <div id="blob_contributors_box" style="display:none">
      <h2 class="facebox-header">Users who have contributed to this file</h2>
      <ul class="facebox-user-list">
          <li class="facebox-user-list-item">
            <img alt="Michael Levin" height="24" src="https://2.gravatar.com/avatar/253a11f2832aa16998cbbe11e6322b92?d=https%3A%2F%2Fidenticons.github.com%2F05c2c86f336fcedf2c02a171ca290d46.png&amp;r=x&amp;s=140" width="24" />
            <a href="/mlevin">mlevin</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="Daniel Groves" height="24" src="https://2.gravatar.com/avatar/bda6691b74b166d9d6d4b03a816637c8?d=https%3A%2F%2Fidenticons.github.com%2Faf352d71ac1e0f058e65941cdab723b2.png&amp;r=x&amp;s=140" width="24" />
            <a href="/danielgroves">danielgroves</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="Nicolas Hery" height="24" src="https://2.gravatar.com/avatar/9486a6cea0123553c01859088fcbca23?d=https%3A%2F%2Fidenticons.github.com%2F0985487511bdd0519c8f0d8ffcc262de.png&amp;r=x&amp;s=140" width="24" />
            <a href="/nicolashery">nicolashery</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="Philipp Kursawe" height="24" src="https://2.gravatar.com/avatar/c1fc0e1dee65573215cdf9335ba19f71?d=https%3A%2F%2Fidenticons.github.com%2F4eb69674b9c8892dda5bcf1bba1d7107.png&amp;r=x&amp;s=140" width="24" />
            <a href="/pke">pke</a>
          </li>
      </ul>
    </div>
  </div>

<div id="files" class="bubble">
  <div class="file">
    <div class="meta">
      <div class="info">
        <span class="icon"><b class="octicon octicon-file-text"></b></span>
        <span class="mode" title="File Mode">file</span>
          <span>298 lines (244 sloc)</span>
        <span>8.388 kb</span>
      </div>
      <div class="actions">
        <div class="button-group">
            <a class="minibutton tooltipped leftwards js-conduit-openfile-check"
               href="http://mac.github.com"
               data-url="github-mac://openRepo/https://github.com/kinnetica/jekyll-plugins?branch=master&amp;filepath=sitemap_generator.rb"
               title="Open this file in GitHub for Mac"
               data-failed-title="Your version of GitHub for Mac is too old to open this file. Try checking for updates.">
                <span class="octicon octicon-device-desktop"></span> Open
            </a>
                <a class="minibutton tooltipped upwards js-update-url-with-hash"
                   title="Clicking this button will automatically fork this project so you can edit the file"
                   href="/kinnetica/jekyll-plugins/edit/master/sitemap_generator.rb"
                   data-method="post" rel="nofollow">Edit</a>
          <a href="/kinnetica/jekyll-plugins/raw/master/sitemap_generator.rb" class="button minibutton " id="raw-url">Raw</a>
            <a href="/kinnetica/jekyll-plugins/blame/master/sitemap_generator.rb" class="button minibutton js-update-url-with-hash">Blame</a>
          <a href="/kinnetica/jekyll-plugins/commits/master/sitemap_generator.rb" class="button minibutton " rel="nofollow">History</a>
        </div><!-- /.button-group -->
          <a class="minibutton danger empty-icon tooltipped downwards"
             href="/kinnetica/jekyll-plugins/delete/master/sitemap_generator.rb"
             title="Fork this project and delete file"
             data-method="post" data-test-id="delete-blob-file" rel="nofollow">
          Delete
        </a>
      </div><!-- /.actions -->
    </div>
        <div class="blob-wrapper data type-ruby js-blob-data">
        <table class="file-code file-diff tab-size-8">
          <tr class="file-code-line">
            <td class="blob-line-nums">
              <span id="L1" rel="#L1">1</span>
<span id="L2" rel="#L2">2</span>
<span id="L3" rel="#L3">3</span>
<span id="L4" rel="#L4">4</span>
<span id="L5" rel="#L5">5</span>
<span id="L6" rel="#L6">6</span>
<span id="L7" rel="#L7">7</span>
<span id="L8" rel="#L8">8</span>
<span id="L9" rel="#L9">9</span>
<span id="L10" rel="#L10">10</span>
<span id="L11" rel="#L11">11</span>
<span id="L12" rel="#L12">12</span>
<span id="L13" rel="#L13">13</span>
<span id="L14" rel="#L14">14</span>
<span id="L15" rel="#L15">15</span>
<span id="L16" rel="#L16">16</span>
<span id="L17" rel="#L17">17</span>
<span id="L18" rel="#L18">18</span>
<span id="L19" rel="#L19">19</span>
<span id="L20" rel="#L20">20</span>
<span id="L21" rel="#L21">21</span>
<span id="L22" rel="#L22">22</span>
<span id="L23" rel="#L23">23</span>
<span id="L24" rel="#L24">24</span>
<span id="L25" rel="#L25">25</span>
<span id="L26" rel="#L26">26</span>
<span id="L27" rel="#L27">27</span>
<span id="L28" rel="#L28">28</span>
<span id="L29" rel="#L29">29</span>
<span id="L30" rel="#L30">30</span>
<span id="L31" rel="#L31">31</span>
<span id="L32" rel="#L32">32</span>
<span id="L33" rel="#L33">33</span>
<span id="L34" rel="#L34">34</span>
<span id="L35" rel="#L35">35</span>
<span id="L36" rel="#L36">36</span>
<span id="L37" rel="#L37">37</span>
<span id="L38" rel="#L38">38</span>
<span id="L39" rel="#L39">39</span>
<span id="L40" rel="#L40">40</span>
<span id="L41" rel="#L41">41</span>
<span id="L42" rel="#L42">42</span>
<span id="L43" rel="#L43">43</span>
<span id="L44" rel="#L44">44</span>
<span id="L45" rel="#L45">45</span>
<span id="L46" rel="#L46">46</span>
<span id="L47" rel="#L47">47</span>
<span id="L48" rel="#L48">48</span>
<span id="L49" rel="#L49">49</span>
<span id="L50" rel="#L50">50</span>
<span id="L51" rel="#L51">51</span>
<span id="L52" rel="#L52">52</span>
<span id="L53" rel="#L53">53</span>
<span id="L54" rel="#L54">54</span>
<span id="L55" rel="#L55">55</span>
<span id="L56" rel="#L56">56</span>
<span id="L57" rel="#L57">57</span>
<span id="L58" rel="#L58">58</span>
<span id="L59" rel="#L59">59</span>
<span id="L60" rel="#L60">60</span>
<span id="L61" rel="#L61">61</span>
<span id="L62" rel="#L62">62</span>
<span id="L63" rel="#L63">63</span>
<span id="L64" rel="#L64">64</span>
<span id="L65" rel="#L65">65</span>
<span id="L66" rel="#L66">66</span>
<span id="L67" rel="#L67">67</span>
<span id="L68" rel="#L68">68</span>
<span id="L69" rel="#L69">69</span>
<span id="L70" rel="#L70">70</span>
<span id="L71" rel="#L71">71</span>
<span id="L72" rel="#L72">72</span>
<span id="L73" rel="#L73">73</span>
<span id="L74" rel="#L74">74</span>
<span id="L75" rel="#L75">75</span>
<span id="L76" rel="#L76">76</span>
<span id="L77" rel="#L77">77</span>
<span id="L78" rel="#L78">78</span>
<span id="L79" rel="#L79">79</span>
<span id="L80" rel="#L80">80</span>
<span id="L81" rel="#L81">81</span>
<span id="L82" rel="#L82">82</span>
<span id="L83" rel="#L83">83</span>
<span id="L84" rel="#L84">84</span>
<span id="L85" rel="#L85">85</span>
<span id="L86" rel="#L86">86</span>
<span id="L87" rel="#L87">87</span>
<span id="L88" rel="#L88">88</span>
<span id="L89" rel="#L89">89</span>
<span id="L90" rel="#L90">90</span>
<span id="L91" rel="#L91">91</span>
<span id="L92" rel="#L92">92</span>
<span id="L93" rel="#L93">93</span>
<span id="L94" rel="#L94">94</span>
<span id="L95" rel="#L95">95</span>
<span id="L96" rel="#L96">96</span>
<span id="L97" rel="#L97">97</span>
<span id="L98" rel="#L98">98</span>
<span id="L99" rel="#L99">99</span>
<span id="L100" rel="#L100">100</span>
<span id="L101" rel="#L101">101</span>
<span id="L102" rel="#L102">102</span>
<span id="L103" rel="#L103">103</span>
<span id="L104" rel="#L104">104</span>
<span id="L105" rel="#L105">105</span>
<span id="L106" rel="#L106">106</span>
<span id="L107" rel="#L107">107</span>
<span id="L108" rel="#L108">108</span>
<span id="L109" rel="#L109">109</span>
<span id="L110" rel="#L110">110</span>
<span id="L111" rel="#L111">111</span>
<span id="L112" rel="#L112">112</span>
<span id="L113" rel="#L113">113</span>
<span id="L114" rel="#L114">114</span>
<span id="L115" rel="#L115">115</span>
<span id="L116" rel="#L116">116</span>
<span id="L117" rel="#L117">117</span>
<span id="L118" rel="#L118">118</span>
<span id="L119" rel="#L119">119</span>
<span id="L120" rel="#L120">120</span>
<span id="L121" rel="#L121">121</span>
<span id="L122" rel="#L122">122</span>
<span id="L123" rel="#L123">123</span>
<span id="L124" rel="#L124">124</span>
<span id="L125" rel="#L125">125</span>
<span id="L126" rel="#L126">126</span>
<span id="L127" rel="#L127">127</span>
<span id="L128" rel="#L128">128</span>
<span id="L129" rel="#L129">129</span>
<span id="L130" rel="#L130">130</span>
<span id="L131" rel="#L131">131</span>
<span id="L132" rel="#L132">132</span>
<span id="L133" rel="#L133">133</span>
<span id="L134" rel="#L134">134</span>
<span id="L135" rel="#L135">135</span>
<span id="L136" rel="#L136">136</span>
<span id="L137" rel="#L137">137</span>
<span id="L138" rel="#L138">138</span>
<span id="L139" rel="#L139">139</span>
<span id="L140" rel="#L140">140</span>
<span id="L141" rel="#L141">141</span>
<span id="L142" rel="#L142">142</span>
<span id="L143" rel="#L143">143</span>
<span id="L144" rel="#L144">144</span>
<span id="L145" rel="#L145">145</span>
<span id="L146" rel="#L146">146</span>
<span id="L147" rel="#L147">147</span>
<span id="L148" rel="#L148">148</span>
<span id="L149" rel="#L149">149</span>
<span id="L150" rel="#L150">150</span>
<span id="L151" rel="#L151">151</span>
<span id="L152" rel="#L152">152</span>
<span id="L153" rel="#L153">153</span>
<span id="L154" rel="#L154">154</span>
<span id="L155" rel="#L155">155</span>
<span id="L156" rel="#L156">156</span>
<span id="L157" rel="#L157">157</span>
<span id="L158" rel="#L158">158</span>
<span id="L159" rel="#L159">159</span>
<span id="L160" rel="#L160">160</span>
<span id="L161" rel="#L161">161</span>
<span id="L162" rel="#L162">162</span>
<span id="L163" rel="#L163">163</span>
<span id="L164" rel="#L164">164</span>
<span id="L165" rel="#L165">165</span>
<span id="L166" rel="#L166">166</span>
<span id="L167" rel="#L167">167</span>
<span id="L168" rel="#L168">168</span>
<span id="L169" rel="#L169">169</span>
<span id="L170" rel="#L170">170</span>
<span id="L171" rel="#L171">171</span>
<span id="L172" rel="#L172">172</span>
<span id="L173" rel="#L173">173</span>
<span id="L174" rel="#L174">174</span>
<span id="L175" rel="#L175">175</span>
<span id="L176" rel="#L176">176</span>
<span id="L177" rel="#L177">177</span>
<span id="L178" rel="#L178">178</span>
<span id="L179" rel="#L179">179</span>
<span id="L180" rel="#L180">180</span>
<span id="L181" rel="#L181">181</span>
<span id="L182" rel="#L182">182</span>
<span id="L183" rel="#L183">183</span>
<span id="L184" rel="#L184">184</span>
<span id="L185" rel="#L185">185</span>
<span id="L186" rel="#L186">186</span>
<span id="L187" rel="#L187">187</span>
<span id="L188" rel="#L188">188</span>
<span id="L189" rel="#L189">189</span>
<span id="L190" rel="#L190">190</span>
<span id="L191" rel="#L191">191</span>
<span id="L192" rel="#L192">192</span>
<span id="L193" rel="#L193">193</span>
<span id="L194" rel="#L194">194</span>
<span id="L195" rel="#L195">195</span>
<span id="L196" rel="#L196">196</span>
<span id="L197" rel="#L197">197</span>
<span id="L198" rel="#L198">198</span>
<span id="L199" rel="#L199">199</span>
<span id="L200" rel="#L200">200</span>
<span id="L201" rel="#L201">201</span>
<span id="L202" rel="#L202">202</span>
<span id="L203" rel="#L203">203</span>
<span id="L204" rel="#L204">204</span>
<span id="L205" rel="#L205">205</span>
<span id="L206" rel="#L206">206</span>
<span id="L207" rel="#L207">207</span>
<span id="L208" rel="#L208">208</span>
<span id="L209" rel="#L209">209</span>
<span id="L210" rel="#L210">210</span>
<span id="L211" rel="#L211">211</span>
<span id="L212" rel="#L212">212</span>
<span id="L213" rel="#L213">213</span>
<span id="L214" rel="#L214">214</span>
<span id="L215" rel="#L215">215</span>
<span id="L216" rel="#L216">216</span>
<span id="L217" rel="#L217">217</span>
<span id="L218" rel="#L218">218</span>
<span id="L219" rel="#L219">219</span>
<span id="L220" rel="#L220">220</span>
<span id="L221" rel="#L221">221</span>
<span id="L222" rel="#L222">222</span>
<span id="L223" rel="#L223">223</span>
<span id="L224" rel="#L224">224</span>
<span id="L225" rel="#L225">225</span>
<span id="L226" rel="#L226">226</span>
<span id="L227" rel="#L227">227</span>
<span id="L228" rel="#L228">228</span>
<span id="L229" rel="#L229">229</span>
<span id="L230" rel="#L230">230</span>
<span id="L231" rel="#L231">231</span>
<span id="L232" rel="#L232">232</span>
<span id="L233" rel="#L233">233</span>
<span id="L234" rel="#L234">234</span>
<span id="L235" rel="#L235">235</span>
<span id="L236" rel="#L236">236</span>
<span id="L237" rel="#L237">237</span>
<span id="L238" rel="#L238">238</span>
<span id="L239" rel="#L239">239</span>
<span id="L240" rel="#L240">240</span>
<span id="L241" rel="#L241">241</span>
<span id="L242" rel="#L242">242</span>
<span id="L243" rel="#L243">243</span>
<span id="L244" rel="#L244">244</span>
<span id="L245" rel="#L245">245</span>
<span id="L246" rel="#L246">246</span>
<span id="L247" rel="#L247">247</span>
<span id="L248" rel="#L248">248</span>
<span id="L249" rel="#L249">249</span>
<span id="L250" rel="#L250">250</span>
<span id="L251" rel="#L251">251</span>
<span id="L252" rel="#L252">252</span>
<span id="L253" rel="#L253">253</span>
<span id="L254" rel="#L254">254</span>
<span id="L255" rel="#L255">255</span>
<span id="L256" rel="#L256">256</span>
<span id="L257" rel="#L257">257</span>
<span id="L258" rel="#L258">258</span>
<span id="L259" rel="#L259">259</span>
<span id="L260" rel="#L260">260</span>
<span id="L261" rel="#L261">261</span>
<span id="L262" rel="#L262">262</span>
<span id="L263" rel="#L263">263</span>
<span id="L264" rel="#L264">264</span>
<span id="L265" rel="#L265">265</span>
<span id="L266" rel="#L266">266</span>
<span id="L267" rel="#L267">267</span>
<span id="L268" rel="#L268">268</span>
<span id="L269" rel="#L269">269</span>
<span id="L270" rel="#L270">270</span>
<span id="L271" rel="#L271">271</span>
<span id="L272" rel="#L272">272</span>
<span id="L273" rel="#L273">273</span>
<span id="L274" rel="#L274">274</span>
<span id="L275" rel="#L275">275</span>
<span id="L276" rel="#L276">276</span>
<span id="L277" rel="#L277">277</span>
<span id="L278" rel="#L278">278</span>
<span id="L279" rel="#L279">279</span>
<span id="L280" rel="#L280">280</span>
<span id="L281" rel="#L281">281</span>
<span id="L282" rel="#L282">282</span>
<span id="L283" rel="#L283">283</span>
<span id="L284" rel="#L284">284</span>
<span id="L285" rel="#L285">285</span>
<span id="L286" rel="#L286">286</span>
<span id="L287" rel="#L287">287</span>
<span id="L288" rel="#L288">288</span>
<span id="L289" rel="#L289">289</span>
<span id="L290" rel="#L290">290</span>
<span id="L291" rel="#L291">291</span>
<span id="L292" rel="#L292">292</span>
<span id="L293" rel="#L293">293</span>
<span id="L294" rel="#L294">294</span>
<span id="L295" rel="#L295">295</span>
<span id="L296" rel="#L296">296</span>
<span id="L297" rel="#L297">297</span>

            </td>
            <td class="blob-line-code"><div class="code-body highlight"><pre><div class='line' id='LC1'><span class="c1"># Sitemap.xml Generator is a Jekyll plugin that generates a sitemap.xml file by </span></div><div class='line' id='LC2'><span class="c1"># traversing all of the available posts and pages.</span></div><div class='line' id='LC3'><span class="c1"># </span></div><div class='line' id='LC4'><span class="c1"># See readme file for documenation</span></div><div class='line' id='LC5'><span class="c1"># </span></div><div class='line' id='LC6'><span class="c1"># Updated to use config file for settings by Daniel Groves</span></div><div class='line' id='LC7'><span class="c1"># Site: http://danielgroves.net</span></div><div class='line' id='LC8'><span class="c1"># </span></div><div class='line' id='LC9'><span class="c1"># Author: Michael Levin</span></div><div class='line' id='LC10'><span class="c1"># Site: http://www.kinnetica.com</span></div><div class='line' id='LC11'><span class="c1"># Distributed Under A Creative Commons License</span></div><div class='line' id='LC12'><span class="c1">#   - http://creativecommons.org/licenses/by/3.0/</span></div><div class='line' id='LC13'><br/></div><div class='line' id='LC14'><span class="nb">require</span> <span class="s1">&#39;rexml/document&#39;</span></div><div class='line' id='LC15'><br/></div><div class='line' id='LC16'><span class="k">module</span> <span class="nn">Jekyll</span></div><div class='line' id='LC17'><br/></div><div class='line' id='LC18'>&nbsp;&nbsp;<span class="k">class</span> <span class="nc">Post</span></div><div class='line' id='LC19'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kp">attr_accessor</span> <span class="ss">:name</span></div><div class='line' id='LC20'><br/></div><div class='line' id='LC21'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">def</span> <span class="nf">full_path_to_source</span></div><div class='line' id='LC22'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="no">File</span><span class="o">.</span><span class="n">join</span><span class="p">(</span><span class="vi">@base</span><span class="p">,</span> <span class="vi">@name</span><span class="p">)</span></div><div class='line' id='LC23'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC24'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC25'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">def</span> <span class="nf">path_to_source</span></div><div class='line' id='LC26'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="no">File</span><span class="o">.</span><span class="n">join</span><span class="p">(</span><span class="vi">@name</span><span class="p">)</span></div><div class='line' id='LC27'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC28'><br/></div><div class='line' id='LC29'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">def</span> <span class="nf">location_on_server</span><span class="p">(</span><span class="n">my_url</span><span class="p">)</span></div><div class='line' id='LC30'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s2">&quot;</span><span class="si">#{</span><span class="n">my_url</span><span class="si">}#{</span><span class="n">url</span><span class="si">}</span><span class="s2">&quot;</span></div><div class='line' id='LC31'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC32'>&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC33'><br/></div><div class='line' id='LC34'>&nbsp;&nbsp;<span class="k">class</span> <span class="nc">Page</span></div><div class='line' id='LC35'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kp">attr_accessor</span> <span class="ss">:name</span></div><div class='line' id='LC36'><br/></div><div class='line' id='LC37'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">def</span> <span class="nf">full_path_to_source</span></div><div class='line' id='LC38'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="no">File</span><span class="o">.</span><span class="n">join</span><span class="p">(</span><span class="vi">@base</span><span class="p">,</span> <span class="vi">@dir</span><span class="p">,</span> <span class="vi">@name</span><span class="p">)</span></div><div class='line' id='LC39'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC40'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC41'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">def</span> <span class="nf">path_to_source</span></div><div class='line' id='LC42'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="no">File</span><span class="o">.</span><span class="n">join</span><span class="p">(</span><span class="vi">@dir</span><span class="p">,</span> <span class="vi">@name</span><span class="p">)</span></div><div class='line' id='LC43'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC44'><br/></div><div class='line' id='LC45'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">def</span> <span class="nf">location_on_server</span><span class="p">(</span><span class="n">my_url</span><span class="p">)</span></div><div class='line' id='LC46'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">location</span> <span class="o">=</span> <span class="s2">&quot;</span><span class="si">#{</span><span class="n">my_url</span><span class="si">}#{</span><span class="n">url</span><span class="si">}</span><span class="s2">&quot;</span></div><div class='line' id='LC47'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">location</span><span class="o">.</span><span class="n">gsub</span><span class="p">(</span><span class="sr">/index.html$/</span><span class="p">,</span> <span class="s2">&quot;&quot;</span><span class="p">)</span></div><div class='line' id='LC48'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC49'>&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC50'><br/></div><div class='line' id='LC51'><br/></div><div class='line' id='LC52'>&nbsp;&nbsp;<span class="k">class</span> <span class="nc">Layout</span></div><div class='line' id='LC53'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">def</span> <span class="nf">full_path_to_source</span></div><div class='line' id='LC54'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="no">File</span><span class="o">.</span><span class="n">join</span><span class="p">(</span><span class="vi">@base</span><span class="p">,</span> <span class="vi">@name</span><span class="p">)</span></div><div class='line' id='LC55'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC56'>&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC57'><br/></div><div class='line' id='LC58'>&nbsp;&nbsp;<span class="c1"># Recover from strange exception when starting server without --auto</span></div><div class='line' id='LC59'>&nbsp;&nbsp;<span class="k">class</span> <span class="nc">SitemapFile</span> <span class="o">&lt;</span> <span class="no">StaticFile</span></div><div class='line' id='LC60'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">def</span> <span class="nf">write</span><span class="p">(</span><span class="n">dest</span><span class="p">)</span></div><div class='line' id='LC61'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">begin</span></div><div class='line' id='LC62'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">super</span><span class="p">(</span><span class="n">dest</span><span class="p">)</span></div><div class='line' id='LC63'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">rescue</span></div><div class='line' id='LC64'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC65'><br/></div><div class='line' id='LC66'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kp">true</span></div><div class='line' id='LC67'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC68'>&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC69'><br/></div><div class='line' id='LC70'>&nbsp;&nbsp;<span class="k">class</span> <span class="nc">SitemapGenerator</span> <span class="o">&lt;</span> <span class="no">Generator</span></div><div class='line' id='LC71'><br/></div><div class='line' id='LC72'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># Config defaults</span></div><div class='line' id='LC73'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="no">SITEMAP_FILE_NAME</span> <span class="o">=</span> <span class="s2">&quot;/sitemap.xml&quot;</span></div><div class='line' id='LC74'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="no">EXCLUDE</span> <span class="o">=</span> <span class="o">[</span><span class="s2">&quot;/atom.xml&quot;</span><span class="p">,</span> <span class="s2">&quot;/feed.xml&quot;</span><span class="p">,</span> <span class="s2">&quot;/feed/index.xml&quot;</span><span class="o">]</span></div><div class='line' id='LC75'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="no">INCLUDE_POSTS</span> <span class="o">=</span> <span class="o">[</span><span class="s2">&quot;/index.html&quot;</span><span class="o">]</span> </div><div class='line' id='LC76'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="no">CHANGE_FREQUENCY_NAME</span> <span class="o">=</span> <span class="s2">&quot;change_frequency&quot;</span></div><div class='line' id='LC77'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="no">PRIORITY_NAME</span> <span class="o">=</span> <span class="s2">&quot;priority&quot;</span></div><div class='line' id='LC78'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC79'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># Valid values allowed by sitemap.xml spec for change frequencies</span></div><div class='line' id='LC80'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="no">VALID_CHANGE_FREQUENCY_VALUES</span> <span class="o">=</span> <span class="o">[</span><span class="s2">&quot;always&quot;</span><span class="p">,</span> <span class="s2">&quot;hourly&quot;</span><span class="p">,</span> <span class="s2">&quot;daily&quot;</span><span class="p">,</span> <span class="s2">&quot;weekly&quot;</span><span class="p">,</span></div><div class='line' id='LC81'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s2">&quot;monthly&quot;</span><span class="p">,</span> <span class="s2">&quot;yearly&quot;</span><span class="p">,</span> <span class="s2">&quot;never&quot;</span><span class="o">]</span> </div><div class='line' id='LC82'><br/></div><div class='line' id='LC83'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># Goes through pages and posts and generates sitemap.xml file</span></div><div class='line' id='LC84'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">#</span></div><div class='line' id='LC85'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># Returns nothing</span></div><div class='line' id='LC86'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">def</span> <span class="nf">generate</span><span class="p">(</span><span class="n">site</span><span class="p">)</span></div><div class='line' id='LC87'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># Configuration</span></div><div class='line' id='LC88'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">sitemap_config</span> <span class="o">=</span> <span class="n">site</span><span class="o">.</span><span class="n">config</span><span class="o">[</span><span class="s1">&#39;sitemap&#39;</span><span class="o">]</span> <span class="o">||</span> <span class="p">{}</span></div><div class='line' id='LC89'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="vi">@config</span> <span class="o">=</span> <span class="p">{}</span></div><div class='line' id='LC90'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="vi">@config</span><span class="o">[</span><span class="s1">&#39;filename&#39;</span><span class="o">]</span> <span class="o">=</span> <span class="n">sitemap_config</span><span class="o">[</span><span class="s1">&#39;filename&#39;</span><span class="o">]</span> <span class="o">||</span> <span class="no">SITEMAP_FILE_NAME</span></div><div class='line' id='LC91'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="vi">@config</span><span class="o">[</span><span class="s1">&#39;change_frequency_name&#39;</span><span class="o">]</span> <span class="o">=</span> <span class="n">sitemap_config</span><span class="o">[</span><span class="s1">&#39;change_frequency_name&#39;</span><span class="o">]</span> <span class="o">||</span> <span class="no">CHANGE_FREQUENCY_NAME</span></div><div class='line' id='LC92'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="vi">@config</span><span class="o">[</span><span class="s1">&#39;priority_name&#39;</span><span class="o">]</span> <span class="o">=</span> <span class="n">sitemap_config</span><span class="o">[</span><span class="s1">&#39;priority_name&#39;</span><span class="o">]</span> <span class="o">||</span> <span class="no">PRIORITY_NAME</span></div><div class='line' id='LC93'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="vi">@config</span><span class="o">[</span><span class="s1">&#39;exclude&#39;</span><span class="o">]</span> <span class="o">=</span> <span class="n">sitemap_config</span><span class="o">[</span><span class="s1">&#39;exclude&#39;</span><span class="o">]</span> <span class="o">||</span> <span class="no">EXCLUDE</span></div><div class='line' id='LC94'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="vi">@config</span><span class="o">[</span><span class="s1">&#39;include_posts&#39;</span><span class="o">]</span> <span class="o">=</span> <span class="n">sitemap_config</span><span class="o">[</span><span class="s1">&#39;include_posts&#39;</span><span class="o">]</span> <span class="o">||</span> <span class="no">INCLUDE_POSTS</span></div><div class='line' id='LC95'><br/></div><div class='line' id='LC96'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">sitemap</span> <span class="o">=</span> <span class="no">REXML</span><span class="o">::</span><span class="no">Document</span><span class="o">.</span><span class="n">new</span> <span class="o">&lt;&lt;</span> <span class="no">REXML</span><span class="o">::</span><span class="no">XMLDecl</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="s2">&quot;1.0&quot;</span><span class="p">,</span> <span class="s2">&quot;UTF-8&quot;</span><span class="p">)</span></div><div class='line' id='LC97'><br/></div><div class='line' id='LC98'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">urlset</span> <span class="o">=</span> <span class="no">REXML</span><span class="o">::</span><span class="no">Element</span><span class="o">.</span><span class="n">new</span> <span class="s2">&quot;urlset&quot;</span></div><div class='line' id='LC99'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">urlset</span><span class="o">.</span><span class="n">add_attribute</span><span class="p">(</span><span class="s2">&quot;xmlns&quot;</span><span class="p">,</span> </div><div class='line' id='LC100'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s2">&quot;http://www.sitemaps.org/schemas/sitemap/0.9&quot;</span><span class="p">)</span></div><div class='line' id='LC101'><br/></div><div class='line' id='LC102'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="vi">@last_modified_post_date</span> <span class="o">=</span> <span class="n">fill_posts</span><span class="p">(</span><span class="n">site</span><span class="p">,</span> <span class="n">urlset</span><span class="p">)</span></div><div class='line' id='LC103'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">fill_pages</span><span class="p">(</span><span class="n">site</span><span class="p">,</span> <span class="n">urlset</span><span class="p">)</span></div><div class='line' id='LC104'><br/></div><div class='line' id='LC105'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">sitemap</span><span class="o">.</span><span class="n">add_element</span><span class="p">(</span><span class="n">urlset</span><span class="p">)</span></div><div class='line' id='LC106'><br/></div><div class='line' id='LC107'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># Create destination directory if it doesn&#39;t exist yet. Otherwise, we cannot write our file there.</span></div><div class='line' id='LC108'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="no">Dir</span><span class="o">::</span><span class="n">mkdir</span><span class="p">(</span><span class="n">site</span><span class="o">.</span><span class="n">dest</span><span class="p">)</span> <span class="k">if</span> <span class="o">!</span><span class="no">File</span><span class="o">.</span><span class="n">directory?</span> <span class="n">site</span><span class="o">.</span><span class="n">dest</span></div><div class='line' id='LC109'><br/></div><div class='line' id='LC110'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># File I/O: create sitemap.xml file and write out pretty-printed XML</span></div><div class='line' id='LC111'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">filename</span> <span class="o">=</span> <span class="vi">@config</span><span class="o">[</span><span class="s1">&#39;filename&#39;</span><span class="o">]</span></div><div class='line' id='LC112'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">file</span> <span class="o">=</span> <span class="no">File</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="no">File</span><span class="o">.</span><span class="n">join</span><span class="p">(</span><span class="n">site</span><span class="o">.</span><span class="n">dest</span><span class="p">,</span> <span class="n">filename</span><span class="p">),</span> <span class="s2">&quot;w&quot;</span><span class="p">)</span></div><div class='line' id='LC113'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">formatter</span> <span class="o">=</span> <span class="no">REXML</span><span class="o">::</span><span class="no">Formatters</span><span class="o">::</span><span class="no">Pretty</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="mi">4</span><span class="p">)</span></div><div class='line' id='LC114'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">formatter</span><span class="o">.</span><span class="n">compact</span> <span class="o">=</span> <span class="kp">true</span></div><div class='line' id='LC115'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">formatter</span><span class="o">.</span><span class="n">write</span><span class="p">(</span><span class="n">sitemap</span><span class="p">,</span> <span class="n">file</span><span class="p">)</span></div><div class='line' id='LC116'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">file</span><span class="o">.</span><span class="n">close</span></div><div class='line' id='LC117'><br/></div><div class='line' id='LC118'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># Keep the sitemap.xml file from being cleaned by Jekyll</span></div><div class='line' id='LC119'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">site</span><span class="o">.</span><span class="n">static_files</span> <span class="o">&lt;&lt;</span> <span class="no">Jekyll</span><span class="o">::</span><span class="no">SitemapFile</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="n">site</span><span class="p">,</span> <span class="n">site</span><span class="o">.</span><span class="n">dest</span><span class="p">,</span> <span class="s2">&quot;/&quot;</span><span class="p">,</span> <span class="n">filename</span><span class="p">)</span></div><div class='line' id='LC120'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC121'><br/></div><div class='line' id='LC122'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># Create url elements for all the posts and find the date of the latest one</span></div><div class='line' id='LC123'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">#</span></div><div class='line' id='LC124'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># Returns last_modified_date of latest post</span></div><div class='line' id='LC125'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">def</span> <span class="nf">fill_posts</span><span class="p">(</span><span class="n">site</span><span class="p">,</span> <span class="n">urlset</span><span class="p">)</span></div><div class='line' id='LC126'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">last_modified_date</span> <span class="o">=</span> <span class="kp">nil</span></div><div class='line' id='LC127'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">site</span><span class="o">.</span><span class="n">posts</span><span class="o">.</span><span class="n">each</span> <span class="k">do</span> <span class="o">|</span><span class="n">post</span><span class="o">|</span></div><div class='line' id='LC128'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="o">!</span><span class="n">excluded?</span><span class="p">(</span><span class="n">site</span><span class="p">,</span> <span class="n">post</span><span class="o">.</span><span class="n">name</span><span class="p">)</span></div><div class='line' id='LC129'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">url</span> <span class="o">=</span> <span class="n">fill_url</span><span class="p">(</span><span class="n">site</span><span class="p">,</span> <span class="n">post</span><span class="p">)</span></div><div class='line' id='LC130'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">urlset</span><span class="o">.</span><span class="n">add_element</span><span class="p">(</span><span class="n">url</span><span class="p">)</span></div><div class='line' id='LC131'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC132'><br/></div><div class='line' id='LC133'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">path</span> <span class="o">=</span> <span class="n">post</span><span class="o">.</span><span class="n">full_path_to_source</span></div><div class='line' id='LC134'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">date</span> <span class="o">=</span> <span class="no">File</span><span class="o">.</span><span class="n">mtime</span><span class="p">(</span><span class="n">path</span><span class="p">)</span></div><div class='line' id='LC135'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">last_modified_date</span> <span class="o">=</span> <span class="n">date</span> <span class="k">if</span> <span class="n">last_modified_date</span> <span class="o">==</span> <span class="kp">nil</span> <span class="ow">or</span> <span class="n">date</span> <span class="o">&gt;</span> <span class="n">last_modified_date</span></div><div class='line' id='LC136'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC137'><br/></div><div class='line' id='LC138'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">last_modified_date</span></div><div class='line' id='LC139'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC140'><br/></div><div class='line' id='LC141'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># Create url elements for all the normal pages and find the date of the</span></div><div class='line' id='LC142'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># index to use with the pagination pages</span></div><div class='line' id='LC143'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">#</span></div><div class='line' id='LC144'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># Returns last_modified_date of index page</span></div><div class='line' id='LC145'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">def</span> <span class="nf">fill_pages</span><span class="p">(</span><span class="n">site</span><span class="p">,</span> <span class="n">urlset</span><span class="p">)</span></div><div class='line' id='LC146'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">site</span><span class="o">.</span><span class="n">pages</span><span class="o">.</span><span class="n">each</span> <span class="k">do</span> <span class="o">|</span><span class="n">page</span><span class="o">|</span></div><div class='line' id='LC147'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="o">!</span><span class="n">excluded?</span><span class="p">(</span><span class="n">site</span><span class="p">,</span> <span class="n">page</span><span class="o">.</span><span class="n">path_to_source</span><span class="p">)</span></div><div class='line' id='LC148'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">path</span> <span class="o">=</span> <span class="n">page</span><span class="o">.</span><span class="n">full_path_to_source</span></div><div class='line' id='LC149'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="no">File</span><span class="o">.</span><span class="n">exists?</span><span class="p">(</span><span class="n">path</span><span class="p">)</span></div><div class='line' id='LC150'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">url</span> <span class="o">=</span> <span class="n">fill_url</span><span class="p">(</span><span class="n">site</span><span class="p">,</span> <span class="n">page</span><span class="p">)</span></div><div class='line' id='LC151'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">urlset</span><span class="o">.</span><span class="n">add_element</span><span class="p">(</span><span class="n">url</span><span class="p">)</span></div><div class='line' id='LC152'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC153'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC154'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC155'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC156'><br/></div><div class='line' id='LC157'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># Fill data of each URL element: location, last modified, </span></div><div class='line' id='LC158'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># change frequency (optional), and priority.</span></div><div class='line' id='LC159'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">#</span></div><div class='line' id='LC160'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># Returns url REXML::Element</span></div><div class='line' id='LC161'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">def</span> <span class="nf">fill_url</span><span class="p">(</span><span class="n">site</span><span class="p">,</span> <span class="n">page_or_post</span><span class="p">)</span></div><div class='line' id='LC162'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">url</span> <span class="o">=</span> <span class="no">REXML</span><span class="o">::</span><span class="no">Element</span><span class="o">.</span><span class="n">new</span> <span class="s2">&quot;url&quot;</span></div><div class='line' id='LC163'><br/></div><div class='line' id='LC164'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">loc</span> <span class="o">=</span> <span class="n">fill_location</span><span class="p">(</span><span class="n">site</span><span class="p">,</span> <span class="n">page_or_post</span><span class="p">)</span></div><div class='line' id='LC165'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">url</span><span class="o">.</span><span class="n">add_element</span><span class="p">(</span><span class="n">loc</span><span class="p">)</span></div><div class='line' id='LC166'><br/></div><div class='line' id='LC167'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">lastmod</span> <span class="o">=</span> <span class="n">fill_last_modified</span><span class="p">(</span><span class="n">site</span><span class="p">,</span> <span class="n">page_or_post</span><span class="p">)</span></div><div class='line' id='LC168'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">url</span><span class="o">.</span><span class="n">add_element</span><span class="p">(</span><span class="n">lastmod</span><span class="p">)</span> <span class="k">if</span> <span class="n">lastmod</span></div><div class='line' id='LC169'><br/></div><div class='line' id='LC170'><br/></div><div class='line' id='LC171'><br/></div><div class='line' id='LC172'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="n">page_or_post</span><span class="o">.</span><span class="n">data</span><span class="o">[</span><span class="vi">@config</span><span class="o">[</span><span class="s1">&#39;change_frequency_name&#39;</span><span class="o">]]</span><span class="p">)</span></div><div class='line' id='LC173'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">change_frequency</span> <span class="o">=</span> </div><div class='line' id='LC174'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">page_or_post</span><span class="o">.</span><span class="n">data</span><span class="o">[</span><span class="vi">@config</span><span class="o">[</span><span class="s1">&#39;change_frequency_name&#39;</span><span class="o">]].</span><span class="n">downcase</span></div><div class='line' id='LC175'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC176'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="n">valid_change_frequency?</span><span class="p">(</span><span class="n">change_frequency</span><span class="p">))</span></div><div class='line' id='LC177'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">changefreq</span> <span class="o">=</span> <span class="no">REXML</span><span class="o">::</span><span class="no">Element</span><span class="o">.</span><span class="n">new</span> <span class="s2">&quot;changefreq&quot;</span></div><div class='line' id='LC178'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">changefreq</span><span class="o">.</span><span class="n">text</span> <span class="o">=</span> <span class="n">change_frequency</span></div><div class='line' id='LC179'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">url</span><span class="o">.</span><span class="n">add_element</span><span class="p">(</span><span class="n">changefreq</span><span class="p">)</span></div><div class='line' id='LC180'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">else</span></div><div class='line' id='LC181'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">puts</span> <span class="s2">&quot;ERROR: Invalid Change Frequency In </span><span class="si">#{</span><span class="n">page_or_post</span><span class="o">.</span><span class="n">name</span><span class="si">}</span><span class="s2">&quot;</span></div><div class='line' id='LC182'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC183'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC184'><br/></div><div class='line' id='LC185'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="n">page_or_post</span><span class="o">.</span><span class="n">data</span><span class="o">[</span><span class="vi">@config</span><span class="o">[</span><span class="s1">&#39;priority_name&#39;</span><span class="o">]]</span><span class="p">)</span></div><div class='line' id='LC186'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">priority_value</span> <span class="o">=</span> <span class="n">page_or_post</span><span class="o">.</span><span class="n">data</span><span class="o">[</span><span class="vi">@config</span><span class="o">[</span><span class="s1">&#39;priority_name&#39;</span><span class="o">]]</span></div><div class='line' id='LC187'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="n">valid_priority?</span><span class="p">(</span><span class="n">priority_value</span><span class="p">)</span></div><div class='line' id='LC188'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">priority</span> <span class="o">=</span> <span class="no">REXML</span><span class="o">::</span><span class="no">Element</span><span class="o">.</span><span class="n">new</span> <span class="s2">&quot;priority&quot;</span></div><div class='line' id='LC189'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">priority</span><span class="o">.</span><span class="n">text</span> <span class="o">=</span> <span class="n">page_or_post</span><span class="o">.</span><span class="n">data</span><span class="o">[</span><span class="vi">@config</span><span class="o">[</span><span class="s1">&#39;priority_name&#39;</span><span class="o">]]</span></div><div class='line' id='LC190'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">url</span><span class="o">.</span><span class="n">add_element</span><span class="p">(</span><span class="n">priority</span><span class="p">)</span></div><div class='line' id='LC191'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">else</span></div><div class='line' id='LC192'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">puts</span> <span class="s2">&quot;ERROR: Invalid Priority In </span><span class="si">#{</span><span class="n">page_or_post</span><span class="o">.</span><span class="n">name</span><span class="si">}</span><span class="s2">&quot;</span></div><div class='line' id='LC193'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC194'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC195'><br/></div><div class='line' id='LC196'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">url</span></div><div class='line' id='LC197'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC198'><br/></div><div class='line' id='LC199'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># Get URL location of page or post </span></div><div class='line' id='LC200'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">#</span></div><div class='line' id='LC201'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># Returns the location of the page or post</span></div><div class='line' id='LC202'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">def</span> <span class="nf">fill_location</span><span class="p">(</span><span class="n">site</span><span class="p">,</span> <span class="n">page_or_post</span><span class="p">)</span></div><div class='line' id='LC203'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">loc</span> <span class="o">=</span> <span class="no">REXML</span><span class="o">::</span><span class="no">Element</span><span class="o">.</span><span class="n">new</span> <span class="s2">&quot;loc&quot;</span></div><div class='line' id='LC204'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">url</span> <span class="o">=</span> <span class="n">site</span><span class="o">.</span><span class="n">config</span><span class="o">[</span><span class="s1">&#39;url&#39;</span><span class="o">]</span></div><div class='line' id='LC205'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">loc</span><span class="o">.</span><span class="n">text</span> <span class="o">=</span> <span class="n">page_or_post</span><span class="o">.</span><span class="n">location_on_server</span><span class="p">(</span><span class="n">url</span><span class="p">)</span></div><div class='line' id='LC206'><br/></div><div class='line' id='LC207'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">loc</span></div><div class='line' id='LC208'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC209'><br/></div><div class='line' id='LC210'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># Fill lastmod XML element with the last modified date for the page or post.</span></div><div class='line' id='LC211'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">#</span></div><div class='line' id='LC212'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># Returns lastmod REXML::Element or nil</span></div><div class='line' id='LC213'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">def</span> <span class="nf">fill_last_modified</span><span class="p">(</span><span class="n">site</span><span class="p">,</span> <span class="n">page_or_post</span><span class="p">)</span></div><div class='line' id='LC214'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">path</span> <span class="o">=</span> <span class="n">page_or_post</span><span class="o">.</span><span class="n">full_path_to_source</span></div><div class='line' id='LC215'><br/></div><div class='line' id='LC216'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">lastmod</span> <span class="o">=</span> <span class="no">REXML</span><span class="o">::</span><span class="no">Element</span><span class="o">.</span><span class="n">new</span> <span class="s2">&quot;lastmod&quot;</span></div><div class='line' id='LC217'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">date</span> <span class="o">=</span> <span class="no">File</span><span class="o">.</span><span class="n">mtime</span><span class="p">(</span><span class="n">path</span><span class="p">)</span></div><div class='line' id='LC218'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">latest_date</span> <span class="o">=</span> <span class="n">find_latest_date</span><span class="p">(</span><span class="n">date</span><span class="p">,</span> <span class="n">site</span><span class="p">,</span> <span class="n">page_or_post</span><span class="p">)</span></div><div class='line' id='LC219'><br/></div><div class='line' id='LC220'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="vi">@last_modified_post_date</span> <span class="o">==</span> <span class="kp">nil</span></div><div class='line' id='LC221'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># This is a post</span></div><div class='line' id='LC222'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">lastmod</span><span class="o">.</span><span class="n">text</span> <span class="o">=</span> <span class="n">latest_date</span><span class="o">.</span><span class="n">iso8601</span></div><div class='line' id='LC223'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">else</span></div><div class='line' id='LC224'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># This is a page</span></div><div class='line' id='LC225'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="n">posts_included?</span><span class="p">(</span><span class="n">site</span><span class="p">,</span> <span class="n">page_or_post</span><span class="o">.</span><span class="n">path_to_source</span><span class="p">)</span></div><div class='line' id='LC226'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># We want to take into account the last post date</span></div><div class='line' id='LC227'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">final_date</span> <span class="o">=</span> <span class="n">greater_date</span><span class="p">(</span><span class="n">latest_date</span><span class="p">,</span> <span class="vi">@last_modified_post_date</span><span class="p">)</span></div><div class='line' id='LC228'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">lastmod</span><span class="o">.</span><span class="n">text</span> <span class="o">=</span> <span class="n">final_date</span><span class="o">.</span><span class="n">iso8601</span></div><div class='line' id='LC229'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">else</span></div><div class='line' id='LC230'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">lastmod</span><span class="o">.</span><span class="n">text</span> <span class="o">=</span> <span class="n">latest_date</span><span class="o">.</span><span class="n">iso8601</span></div><div class='line' id='LC231'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC232'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC233'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">lastmod</span></div><div class='line' id='LC234'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC235'><br/></div><div class='line' id='LC236'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># Go through the page/post and any implemented layouts and get the latest</span></div><div class='line' id='LC237'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># modified date</span></div><div class='line' id='LC238'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">#</span></div><div class='line' id='LC239'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># Returns formatted output of latest date of page/post and any used layouts</span></div><div class='line' id='LC240'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">def</span> <span class="nf">find_latest_date</span><span class="p">(</span><span class="n">latest_date</span><span class="p">,</span> <span class="n">site</span><span class="p">,</span> <span class="n">page_or_post</span><span class="p">)</span></div><div class='line' id='LC241'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">layouts</span> <span class="o">=</span> <span class="n">site</span><span class="o">.</span><span class="n">layouts</span></div><div class='line' id='LC242'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">layout</span> <span class="o">=</span> <span class="n">layouts</span><span class="o">[</span><span class="n">page_or_post</span><span class="o">.</span><span class="n">data</span><span class="o">[</span><span class="s2">&quot;layout&quot;</span><span class="o">]]</span></div><div class='line' id='LC243'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">while</span> <span class="n">layout</span></div><div class='line' id='LC244'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">path</span> <span class="o">=</span> <span class="n">layout</span><span class="o">.</span><span class="n">full_path_to_source</span></div><div class='line' id='LC245'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">date</span> <span class="o">=</span> <span class="no">File</span><span class="o">.</span><span class="n">mtime</span><span class="p">(</span><span class="n">path</span><span class="p">)</span></div><div class='line' id='LC246'><br/></div><div class='line' id='LC247'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">latest_date</span> <span class="o">=</span> <span class="n">date</span> <span class="k">if</span> <span class="p">(</span><span class="n">date</span> <span class="o">&gt;</span> <span class="n">latest_date</span><span class="p">)</span></div><div class='line' id='LC248'><br/></div><div class='line' id='LC249'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">layout</span> <span class="o">=</span> <span class="n">layouts</span><span class="o">[</span><span class="n">layout</span><span class="o">.</span><span class="n">data</span><span class="o">[</span><span class="s2">&quot;layout&quot;</span><span class="o">]]</span></div><div class='line' id='LC250'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC251'><br/></div><div class='line' id='LC252'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">latest_date</span></div><div class='line' id='LC253'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC254'><br/></div><div class='line' id='LC255'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># Which of the two dates is later</span></div><div class='line' id='LC256'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">#</span></div><div class='line' id='LC257'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># Returns latest of two dates</span></div><div class='line' id='LC258'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">def</span> <span class="nf">greater_date</span><span class="p">(</span><span class="n">date1</span><span class="p">,</span> <span class="n">date2</span><span class="p">)</span></div><div class='line' id='LC259'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="n">date1</span> <span class="o">&gt;=</span> <span class="n">date2</span><span class="p">)</span> </div><div class='line' id='LC260'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">date1</span></div><div class='line' id='LC261'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">else</span> </div><div class='line' id='LC262'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">date2</span> </div><div class='line' id='LC263'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC264'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC265'><br/></div><div class='line' id='LC266'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># Is the page or post listed as something we want to exclude?</span></div><div class='line' id='LC267'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">#</span></div><div class='line' id='LC268'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># Returns boolean</span></div><div class='line' id='LC269'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">def</span> <span class="nf">excluded?</span><span class="p">(</span><span class="n">site</span><span class="p">,</span> <span class="nb">name</span><span class="p">)</span></div><div class='line' id='LC270'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="vi">@config</span><span class="o">[</span><span class="s1">&#39;exclude&#39;</span><span class="o">].</span><span class="n">include?</span> <span class="nb">name</span></div><div class='line' id='LC271'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC272'><br/></div><div class='line' id='LC273'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">def</span> <span class="nf">posts_included?</span><span class="p">(</span><span class="n">site</span><span class="p">,</span> <span class="nb">name</span><span class="p">)</span></div><div class='line' id='LC274'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="vi">@config</span><span class="o">[</span><span class="s1">&#39;include_posts&#39;</span><span class="o">].</span><span class="n">include?</span> <span class="nb">name</span></div><div class='line' id='LC275'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC276'><br/></div><div class='line' id='LC277'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># Is the change frequency value provided valid according to the spec</span></div><div class='line' id='LC278'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">#</span></div><div class='line' id='LC279'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># Returns boolean</span></div><div class='line' id='LC280'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">def</span> <span class="nf">valid_change_frequency?</span><span class="p">(</span><span class="n">change_frequency</span><span class="p">)</span></div><div class='line' id='LC281'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="no">VALID_CHANGE_FREQUENCY_VALUES</span><span class="o">.</span><span class="n">include?</span> <span class="n">change_frequency</span></div><div class='line' id='LC282'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC283'><br/></div><div class='line' id='LC284'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># Is the priority value provided valid according to the spec</span></div><div class='line' id='LC285'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">#</span></div><div class='line' id='LC286'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># Returns boolean</span></div><div class='line' id='LC287'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">def</span> <span class="nf">valid_priority?</span><span class="p">(</span><span class="n">priority</span><span class="p">)</span></div><div class='line' id='LC288'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">begin</span></div><div class='line' id='LC289'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">priority_val</span> <span class="o">=</span> <span class="nb">Float</span><span class="p">(</span><span class="n">priority</span><span class="p">)</span></div><div class='line' id='LC290'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="kp">true</span> <span class="k">if</span> <span class="n">priority_val</span> <span class="o">&gt;=</span> <span class="mi">0</span><span class="o">.</span><span class="mi">0</span> <span class="ow">and</span> <span class="n">priority_val</span> <span class="o">&lt;=</span> <span class="mi">1</span><span class="o">.</span><span class="mi">0</span></div><div class='line' id='LC291'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">rescue</span> <span class="no">ArgumentError</span></div><div class='line' id='LC292'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC293'><br/></div><div class='line' id='LC294'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kp">false</span></div><div class='line' id='LC295'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC296'>&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC297'><span class="k">end</span></div></pre></div></td>
          </tr>
        </table>
  </div>

  </div>
</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" class="js-jump-to-line" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <form accept-charset="UTF-8" class="js-jump-to-line-form">
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" autofocus>
    <button type="submit" class="button">Go</button>
  </form>
</div>

        </div>

      </div><!-- /.repo-container -->
      <div class="modal-backdrop"></div>
    </div><!-- /.container -->
  </div><!-- /.site -->


    </div><!-- /.wrapper -->

      <div class="container">
  <div class="site-footer">
    <ul class="site-footer-links right">
      <li><a href="https://status.github.com/">Status</a></li>
      <li><a href="http://developer.github.com">API</a></li>
      <li><a href="http://training.github.com">Training</a></li>
      <li><a href="http://shop.github.com">Shop</a></li>
      <li><a href="/blog">Blog</a></li>
      <li><a href="/about">About</a></li>

    </ul>

    <a href="/">
      <span class="mega-octicon octicon-mark-github" title="GitHub"></span>
    </a>

    <ul class="site-footer-links">
      <li>&copy; 2014 <span title="0.03611s from github-fe128-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="/site/terms">Terms</a></li>
        <li><a href="/site/privacy">Privacy</a></li>
        <li><a href="/security">Security</a></li>
        <li><a href="/contact">Contact</a></li>
    </ul>
  </div><!-- /.site-footer -->
</div><!-- /.container -->


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-fullscreen-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="js-fullscreen-contents" placeholder="" data-suggester="fullscreen_suggester"></textarea>
          <div class="suggester-container">
              <div class="suggester fullscreen-suggester js-navigation-container" id="fullscreen_suggester"
                 data-url="/kinnetica/jekyll-plugins/suggestions/commit">
              </div>
          </div>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped leftwards" title="Exit Zen Mode">
      <span class="mega-octicon octicon-screen-normal"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped leftwards"
      title="Switch themes">
      <span class="octicon octicon-color-mode"></span>
    </a>
  </div>
</div>



    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <a href="#" class="octicon octicon-remove-close close js-ajax-error-dismiss"></a>
      Something went wrong with that request. Please try again.
    </div>

  </body>
</html>

