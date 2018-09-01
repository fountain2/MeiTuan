(function(window){var svgSprite='<svg><symbol id="icon-chuanzhongshangdian" viewBox="0 0 1024 1024"><path d="M1006.305882 254.313412l-99.177411-130.138353c-27.904-38.279529-88.771765-58.925176-131.855059-58.925177H251.798588c-43.083294 0-103.951059 20.645647-131.734588 58.744471L20.585412 256.602353C6.189176 276.344471 8.282353 305.543529 8.568471 308.811294l0.240941 1.641412c10.360471 51.410824 46.697412 92.220235 96.180706 113.061647v449.641412c0 83.184941 48.805647 95.623529 77.914353 95.623529h145.257411c37.812706 0 78.004706-21.172706 78.004706-60.431059V717.899294l-0.496941-2.816c0.436706-72.056471 48.805647-124.250353 115.350588-124.250353 69.827765 0 128.783059 57.434353 128.722824 125.06353l-2.514824 177.588705h-0.12047V894.765176c0 39.920941 31.518118 73.472 67.915294 74.014118h129.28c57.344 0 103.981176-42.902588 103.981176-95.623529v-461.552941H944.188235c38.671059-23.175529 66.876235-59.813647 75.685647-103.469177l0.301177-2.695529c0.045176-3.192471 0.165647-31.894588-13.869177-51.124706zM144.263529 141.914353c19.049412-26.096941 66.258824-46.546824 107.535059-46.546824h523.489883c41.261176 0 88.485647 20.434824 107.700705 46.802824l99.177412 130.153412c0.828235 1.129412 1.551059 2.394353 2.213647 3.749647H43.881412c0.316235-0.512 0.572235-1.084235 0.918588-1.566118L144.263529 141.914353z m510.539295 149.217882l-3.523765 10.089412c-18.100706 51.802353-71.619765 104.252235-138.872471 104.252235-67.237647 0-120.756706-52.434824-138.857412-104.252235l-3.523764-10.089412h284.777412z m-616.267295 14.305883a78.411294 78.411294 0 0 1 0.64753-14.290824h285.138823l-3.523764 10.089412c-18.642824 53.368471-72.342588 107.384471-138.857412 107.38447-71.845647-0.015059-130.665412-42.390588-143.405177-103.183058z m879.631059 567.732706c0 36.111059-33.129412 65.505882-73.863529 65.505882H715.896471c-21.985882 0-38.430118-23.777882-38.475295-45.071059l2.273883-174.441412c0.135529-1.054118 0.271059-2.379294 0.271059-2.861176 0-85.775059-71.288471-155.557647-158.930824-155.557647-82.928941 0-145.468235 66.800941-145.468235 155.346823 0 0.451765 0.271059 2.529882 0.466823 4.050824v188.235294c0 20.916706-27.994353 30.313412-47.887058 30.313412h-145.257412c-20.510118 0-47.796706-6.791529-47.796706-65.505883V433.362824c14.893176 3.508706 30.584471 5.360941 46.832941 5.360941 76.257882 0 138.224941-57.539765 163.418353-117.473883h3.659294c24.771765 58.368 86.528 114.341647 163.388235 114.341647s138.631529-55.973647 163.403295-114.341647h7.54447c25.103059 59.678118 87.024941 116.961882 163.403294 116.961883 25.313882 0 49.483294-4.939294 71.424-13.718589v448.677648zM846.742588 408.094118c-66.635294 0-120.289882-53.76-138.857412-106.872471l-3.523764-10.089412h284.461176c0.843294 5.014588 1.189647 9.652706 1.234824 12.483765-13.025882 60.641882-73.020235 104.478118-143.314824 104.478118z"  ></path></symbol></svg>';var script=function(){var scripts=document.getElementsByTagName("script");return scripts[scripts.length-1]}();var shouldInjectCss=script.getAttribute("data-injectcss");var ready=function(fn){if(document.addEventListener){if(~["complete","loaded","interactive"].indexOf(document.readyState)){setTimeout(fn,0)}else{var loadFn=function(){document.removeEventListener("DOMContentLoaded",loadFn,false);fn()};document.addEventListener("DOMContentLoaded",loadFn,false)}}else if(document.attachEvent){IEContentLoaded(window,fn)}function IEContentLoaded(w,fn){var d=w.document,done=false,init=function(){if(!done){done=true;fn()}};var polling=function(){try{d.documentElement.doScroll("left")}catch(e){setTimeout(polling,50);return}init()};polling();d.onreadystatechange=function(){if(d.readyState=="complete"){d.onreadystatechange=null;init()}}}};var before=function(el,target){target.parentNode.insertBefore(el,target)};var prepend=function(el,target){if(target.firstChild){before(el,target.firstChild)}else{target.appendChild(el)}};function appendSvg(){var div,svg;div=document.createElement("div");div.innerHTML=svgSprite;svgSprite=null;svg=div.getElementsByTagName("svg")[0];if(svg){svg.setAttribute("aria-hidden","true");svg.style.position="absolute";svg.style.width=0;svg.style.height=0;svg.style.overflow="hidden";prepend(svg,document.body)}}if(shouldInjectCss&&!window.__iconfont__svg__cssinject__){window.__iconfont__svg__cssinject__=true;try{document.write("<style>.svgfont {display: inline-block;width: 1em;height: 1em;fill: currentColor;vertical-align: -0.1em;font-size:16px;}</style>")}catch(e){console&&console.log(e)}}ready(appendSvg)})(window)