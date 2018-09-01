(function(window){var svgSprite='<svg><symbol id="icon-gouwuche" viewBox="0 0 1024 1024"><path d="M933.282882 260.09476c-15.21247-22.399149-40.325427-35.772738-67.178005-35.772738L279.771915 224.322022l-50.179866-0.061398-4.52813-25.161053L218.838124 154.742317c-2.003634-14.264888-14.31196-25.018813-28.628014-25.018813l-84.399225 0c-15.947204 0-28.91761 13.047154-28.91761 29.087479 0 16.041348 12.971429 29.088502 28.91761 29.088502l59.276035 0 2.794649 19.902282c0.052189 0.373507 0.113587 0.738827 0.181125 1.104147l8.257058 45.915749c0.128937 2.482541 0.568958 4.932336 1.316995 7.30129l12.232602 68.001767c0.076748 0.431835 0.165776 0.862647 0.275269 1.364067l62.193481 271.895527c0.13303 0.582261 0.280386 1.151219 0.450255 1.74269 13.582343 46.020126 38.804794 76.647681 71.171969 87.729064-43.196825 11.782348-75.075883 51.67287-75.075883 98.942453 0 56.504922 45.551452 102.476953 101.539604 102.476953 55.992245 0 101.544721-45.967938 101.544721-102.476953 0-42.291199-25.51614-78.68099-61.830207-94.314039l287.727097 0c-36.31202 15.633049-61.828161 52.021817-61.828161 94.314039 0 56.504922 45.551452 102.476953 101.544721 102.476953 55.992245 0 101.542674-45.967938 101.542674-102.476953 0-47.241954-31.845289-87.11815-75.009368-98.92301 30.396287-10.266831 56.054667-37.824467 77.875648-83.48439 0.143263-0.302899 0.285502-0.610914 0.388856-0.86674l118.494765-271.861758c0.189312-0.426719 0.360204-0.857531 0.524956-1.284249C951.223486 309.592081 948.267155 282.152125 933.282882 260.09476L933.282882 260.09476zM673.866574 791.799544c0-24.426319 19.608593-44.299949 43.708478-44.299949 24.103978 0 43.713594 19.869536 43.713594 44.299949 0 11.834536-4.572132 22.968108-12.868075 31.353079-8.266267 8.351202-19.219737 12.950963-30.845519 12.950963C693.475168 836.099493 673.866574 816.225863 673.866574 791.799544L673.866574 791.799544zM350.423021 747.499595c24.103978 0 43.712571 19.869536 43.712571 44.299949 0 24.427342-19.608593 44.299949-43.712571 44.299949-24.099884 0-43.708478-19.872606-43.708478-44.299949C306.714544 767.373225 326.323137 747.499595 350.423021 747.499595L350.423021 747.499595zM887.599424 314.007647 769.626545 584.685439c-17.642822 36.757159-35.314297 54.623062-54.026474 54.623062L352.237343 639.308501c-10.739599 0-30.688953-6.485715-43.760666-49.910737l-61.818951-270.298146-6.595208-36.648688 39.671535 0.047072 586.370825 0c7.618515 0 15.065114 3.993964 19.433608 10.417257C889.674689 299.003931 890.384863 306.290895 887.599424 314.007647L887.599424 314.007647zM887.599424 314.007647"  ></path><path d="M730.513736 329.836147c-5.457292 0-10.659781 1.729387-15.051811 4.997827L485.768569 506.027985l-68.983117-81.219813c-4.813632-5.665023-11.82942-8.92016-19.243273-8.92016-6.053879 0-11.919471 2.193968-16.511046 6.173606-10.516518 9.123798-11.734252 25.188682-2.713808 35.8106l84.309174 99.275028c4.813632 5.666046 11.82942 8.92016 19.24839 8.92016 5.457292 0 10.663874-1.729387 15.050788-5.002944l248.657266-185.325869c11.166317-8.319479 13.558807-24.252357 5.335519-35.517935C746.170321 333.720617 738.543619 329.836147 730.513736 329.836147L730.513736 329.836147zM730.513736 329.836147"  ></path></symbol></svg>';var script=function(){var scripts=document.getElementsByTagName("script");return scripts[scripts.length-1]}();var shouldInjectCss=script.getAttribute("data-injectcss");var ready=function(fn){if(document.addEventListener){if(~["complete","loaded","interactive"].indexOf(document.readyState)){setTimeout(fn,0)}else{var loadFn=function(){document.removeEventListener("DOMContentLoaded",loadFn,false);fn()};document.addEventListener("DOMContentLoaded",loadFn,false)}}else if(document.attachEvent){IEContentLoaded(window,fn)}function IEContentLoaded(w,fn){var d=w.document,done=false,init=function(){if(!done){done=true;fn()}};var polling=function(){try{d.documentElement.doScroll("left")}catch(e){setTimeout(polling,50);return}init()};polling();d.onreadystatechange=function(){if(d.readyState=="complete"){d.onreadystatechange=null;init()}}}};var before=function(el,target){target.parentNode.insertBefore(el,target)};var prepend=function(el,target){if(target.firstChild){before(el,target.firstChild)}else{target.appendChild(el)}};function appendSvg(){var div,svg;div=document.createElement("div");div.innerHTML=svgSprite;svgSprite=null;svg=div.getElementsByTagName("svg")[0];if(svg){svg.setAttribute("aria-hidden","true");svg.style.position="absolute";svg.style.width=0;svg.style.height=0;svg.style.overflow="hidden";prepend(svg,document.body)}}if(shouldInjectCss&&!window.__iconfont__svg__cssinject__){window.__iconfont__svg__cssinject__=true;try{document.write("<style>.svgfont {display: inline-block;width: 1em;height: 1em;fill: currentColor;vertical-align: -0.1em;font-size:16px;}</style>")}catch(e){console&&console.log(e)}}ready(appendSvg)})(window)