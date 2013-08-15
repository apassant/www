<!DOCTYPE HTML>
<!--
    Theme by Miniport 2.0 by HTML5 UP
    html5up.net | @n33co
    Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
    NB: Images should be 384 * 269
-->
<html>
    <head>
        <title>{{name}}</title>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,600,700" rel="stylesheet" />
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <script src="js/config.js"></script>
        <script src="js/skel.min.js"></script>
        <noscript>
            <link rel="stylesheet" href="css/skel-noscript.css" />
            <link rel="stylesheet" href="css/style.css" />
            <link rel="stylesheet" href="css/style-desktop.css" />
        </noscript>
        <!--[if lte IE 9]><link rel="stylesheet" href="css/ie9.css" /><![endif]-->
        <!--[if lte IE 8]><script src="js/html5shiv.js"></script><link rel="stylesheet" href="css/ie8.css" /><![endif]-->
        <!--[if lte IE 7]><link rel="stylesheet" href="css/ie7.css" /><![endif]-->
    </head>
    <body>

        <!-- Nav -->
        <nav id="nav">
            <ul>
                <li><a href="#top">Hey</a></li>
                <li><a href="#work">Work</a></li>
                <li><a href="#sharing">Sharing</a></li>
                <li><a href="#contact">Contact</a></li>
            </ul>
        </nav>

        <!-- Home -->
        <div class="wrapper wrapper-style1 wrapper-first">
            <article class="container" id="top">
                <div class="row">
                    <div class="4u">
                        <span class="me image image-full"><img src="images/me.jpg" alt="" /></span>
                    </div>
                    <div class="8u">
                        <header>
                            <h1>Hey. I'm <strong>{{name}}</strong>.</h1>
                        </header>
                        {{shortbio}}
                        <a href="#work" class="button button-big">Learn more about what I do</a>
                    </div>
                </div>
            </article>
        </div>
        <!-- Work -->
        <div class="wrapper wrapper-style2">
            <article id="work">
                <header>
                    <h2>I build and use Web technologies to drive new experiences.</h2>
                    <span>From products to API, from data models to languages, my goal is to make the Web a large-scale, open and social knowledge base. Here's how I'm doing it.</span>
                </header>
                <div class="container">
                {% for workItem in work %}
                    {% if loop.first %}
                    <div class="row">
                    {% endif %}
                    {% if not loop.index0 % 3 and not loop.last %}
                    </div>
                    <div class="row">
                    {% endif %}
                        <div class="4u">
                            <section class="box box-style1">
                                <a href="{{workItem.url}}" class="image image-full" target="_blank"><img src="images/{{workItem.depiction}}" alt="{{workItem.name}}" /></a>
                                <h3><a href="{{workItem.url}}" target="_blank">{{workItem.name}}</a></h3>
                                <h4>{{workItem.role}}</h4>
                                {{workItem.description}}
                            </section>
                        </div>
                    {% if loop.last %}
                    </div>
                    {% endif %}
                {% endfor %}
                </div>
                <footer>
                    <a href="#contact" class="button button-big">Sounds interesting? Let's talk</a>
                </footer>
            </article>
        </div>
        
        <!-- Sharing -->
        <div class="wrapper wrapper-style3">
            <article id="sharing">
                <header>
                    <h2>Because Knowledge is better when it's shared.</h2>
                    <span>I enjoy sharing what I've learnt by writing blog posts, academic articles, Q&amp;A, or giving talks to technical and non-technical audiences.</span>
                </header>
                <div class="container">
                {% for sharingItem in sharing %}
                    {% if loop.first %}
                    <div class="row">
                    {% endif %}
                    {% if not loop.index0 % 4 and not loop.last %}
                    </div>
                    <div class="row">
                    {% endif %}
                        <div class="3u">
                            <section class="box box-style2">
                                {%if sharingItem.url %}
                                <a class="image image-full" href="{{sharingItem.url}}" target="_blank"><img src="images/{{sharingItem.depiction}}" alt="{{sharingItem.name}}" /></a>
                                <h3><a href="{{sharingItem.url}}" target="_blank">{{sharingItem.name}}</a></h3>
                                {% else %}
                                <a class="image image-full"><img src="images/{{sharingItem.depiction}}" alt="{{sharingItem.name}}" /></a>
                                <h3>{{sharingItem.name}}</h3>
                                {% endif %}
                                {{sharingItem.description}}
                            </section>
                        </div>
                    {% if loop.last %}
                    </div>
                    {% endif %}
                {% endfor %}
                </div>
            </article>
        </div>
                    
        <!-- Contact -->
        <div class="wrapper wrapper-style4">
            <article id="contact">
                <header>
                    <h2>Get in touch!</h2>
                    <span>If you want to discuss collaborations, consulting, speaking engagements, or just meet for a coffee, please e-mail me at
                        <script>
                        var emailAddress = ('alex@' + 'passant.org');
                        document.write('<a href="mailto:' + emailAddress + '">' + emailAddress + '</a>');
                        </script>
                    </span>
                </header>
                <div>
                    <div class="row row-special">
                        <div class="12u">
                            <h3>Or find me on ...</h3>
                            <ul class="social">
                                {% for item in social %}
                                <li class="{{item.name}}"><a href="{{item.url}}" class="icon icon-{{item.name}}" target="_blank"><span>{{item.name}}</span></a></li>
                                {% endfor %}
                            </ul>
                        </div>
                    </div>
                </div>
                <footer>
                    <p id="copyright">
                        &copy; 2013 Alexandre Passant | Design: <a href="http://html5up.net/" target="_blank">HTML5 UP</a> | Photo: <a href="http://www.flickr.com/photos/thomasbonte" target="_blank">Thomas Bonte</a> | <a href="http://github.com/terraces/www" target="_blank">Source code</a>
                    </p>
                </footer>
            </article>
        </div>

    </body>
</html>