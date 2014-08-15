<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!-- <meta http-equiv="refresh" content="5"> -->
    <title>Document</title>

    <script type="text/javascript" src="/static/zrender-master/doc/asset/js/esl/esl.js"></script>



</head>
<body style="background: black; overflow: hidden">
    <!-- <canvas id="test" width="150", height="150"></canvas> -->


    <script type="text/javascript">


        require.config({
            packages: [{
                name:  'zrender',
                location: '/static/src',
                main: 'zrender'
            }]
        });
        var flag = {{ flaglist }};
        console.log(flag);
        // var config = require('zrender/config');
//     zr.on(config.EVENT.MOUSEMOVE, function(params) {
//         var zrEvent = require('zrender/tool/event');
//         var event = params.event;
//     // zr.modShape(
//     //     shapeId,
//     //     {
//     //         style : {
//     //             text : 'Global catch! mousemove on ('  + zrEvent.getX(event)  + ', ' + zrEvent.getY(event) + ')'
//     //         }
//     //     }
//     // );
//     // zr.refresh();
//         console.log(zrEvent.getX(event)+ zrEvent.getY(event));
// });

        require(["zrender", "zrender/shape/Image"], function(zrender, ImageShape){
            var zr = zrender.init(document.getElementById("Main"));
            var img = new ImageShape({
                zlevel: 0,
                hoverable: false,
                style:{
                    x: 0,
                    y: 0,

                    // width: 1096,
                    // height: 1096,
                    color : 'rgba(0, 255, 0, 1)',
                    image: "/static/ditu3.png",
            }});

            var flagwidth = 10;
            var flagheight = 117;
            /*******************************************/
            // group a  1-3
            var flag1 = new ImageShape({
                zlevel: 1,
                // scale: [0.1,0.1, 0, 0],
                style:{
                    x: 0,
                    y: 0,
                    image: "/static/" + flag[0]
                },
                invisible: false,
                position: [1104 -flagwidth,1280- flagheight]
                // hoverable: false,
            });

            var flag2 = new ImageShape({
                zlevel: 1,
                // scale: [0.3, 0.3, 0, 0],
                style:{
                    x: 0,
                    y: 0,
                    image: "/static/" + flag[1]
                },
                // invisible: false,
                position: [1326 -flagwidth, 1401- flagheight]
            });

            var flag3 = new ImageShape({
                zlevel: 1,
                // scale: [0.3, 0.3, 0, 0],
                style:{
                    x: 0,
                    y: 0,
                    image: "/static/" + flag[2]
                },
                invisible: false,
                position: [1574 - flagwidth, 1253 - flagheight]
            });
            ////////////////////////////////////////////
            /* group b 4-6 */
            var flag4 = new ImageShape({
                zlevel: 1,
                // scale: [0.3, 0.3, 0, 0],
                style:{
                    x: 0,
                    y: 0,
                    image: "/static/" + flag[3]
                },
                invisible: false,
                position: [1619 - flagwidth, 1600 -  flagheight]
            });

            var flag5 = new ImageShape({
                zlevel: 1,
                // scale: [0.3, 0.3, 0, 0],
                style:{
                    x: 0,
                    y: 0,
                    image: "/static/" + flag[4]
                },
                invisible: false,
                position: [1751 - flagwidth, 1458 - flagheight]
            });
            var flag6 = new ImageShape({
                zlevel: 1,
                // scale: [0.3, 0.3, 0, 0],
                style:{
                    x: 0,
                    y: 0,
                    image: "/static/" + flag[5]
                },
                invisible: false,
                position: [1818 - flagwidth, 1596 - flagheight]
            });
            /////////////////////////////////////
            //group c 7-9
            //////////////////////
            var flag7 = new ImageShape({
                zlevel: 1,
                // scale: [0.3, 0.3, 0, 0],
                style:{
                    x: 0,
                    y: 0,
                    image: "/static/" + flag[6]
                },
                invisible: false,
                position: [2045 - flagwidth, 1677 - flagheight]
            });

            var flag8 = new ImageShape({
                zlevel: 1,
                // scale: [0.3, 0.3, 0, 0],
                style:{
                    x: 0,
                    y: 0,
                    image: "/static/" + flag[7]
                },
                invisible: false,
                position: [2185 - flagwidth, 1505 - flagheight]
            });

            var flag9 = new ImageShape({
                zlevel: 1,
                // scale: [0.3, 0.3, 0, 0],
                style:{
                    x: 0,
                    y: 0,
                    image: "/static/" + flag[8]
                },
                invisible: false,
                position: [2300 - flagwidth, 1789 -flagheight]
            });
            //////////////////
            // group c 10-12
            ///////////////
            var flag10 = new ImageShape({
                zlevel: 1,
                // scale: [0.3, 0.3, 0, 0],
                style:{
                    x: 0,
                    y: 0,
                    image: "/static/" + flag[9]
                },
                invisible: false,
                position: [2419 - flagwidth, 1364 - flagheight]
            });

            var flag11 = new ImageShape({
                zlevel: 1,
                // scale: [0.3, 0.3, 0, 0],
                style:{
                    x: 0,
                    y: 0,
                    image: "/static/" + flag[10]
                },
                invisible: false,
                position: [2542 - flagwidth, 1574 - flagheight]
            });



            var flag12 = new ImageShape({
                zlevel: 1,
                // scale: [0.3, 0.3, 0, 0],
                style:{
                    x: 0,
                    y: 0,
                    image: "/static/" + flag[11]
                },
                invisible: false,
                position: [2770 - flagwidth, 1394 - flagheight]
            });

            //////////////
            // group d
            /////////////////////

            var flag13 = new ImageShape({
                zlevel: 1,
                // scale: [0.3, 0.3, 0, 0],
                style:{
                    x: 0,
                    y: 0,
                    image: "/static/" + flag[12]
                },
                invisible: false,
                position: [2568 - flagwidth, 1014 -flagheight]
            });

            var flag14 = new ImageShape({
                zlevel: 1,
                // scale: [0.3, 0.3, 0, 0],
                style:{
                    x: 0,
                    y: 0,
                    image: "/static/" + flag[13]
                },
                invisible: false,
                position: [2946 - flagwidth, 748 - flagheight],

            });
            var flag15 = new ImageShape({
                zlevel: 1,
                // scale: [0.3, 0.3, 0, 0],
                style:{
                    x: 0,
                    y: 0,
                    image: "/static/" + flag[14]
                },
                invisible: false,
                position: [2656 - flagwidth, 616 - flagheight],

            });
            ///////////////////////
            // group e
            ///////////////
            var flag16 = new ImageShape({
                zlevel: 1,
                // scale: [0.3, 0.3, 0, 0],
                style:{
                    x: 0,
                    y: 0,
                    image: "/static/" + flag[15]
                },
                invisible: false,
                position: [2269 - flagwidth, 854 - flagheight],

            });

            var flag17 = new ImageShape({
                zlevel: 1,
                // scale: [0.3, 0.3, 0, 0],
                style:{
                    x: 0,
                    y: 0,
                    image: "/static/" + flag[16]
                },
                invisible: false,
                position: [1993 - flagwidth, 940 - flagheight],

            });

            var flag18 = new ImageShape({
                zlevel: 1,
                // scale: [0.3, 0.3, 0, 0],
                style:{
                    x: 0,
                    y: 0,
                    image: "/static/" + flag[17]
                },
                invisible: false,
                position: [1960 - flagwidth, 730 - flagheight],

            });

            /////////
            // group f

            var flag19 = new ImageShape({
                zlevel: 1,
                // scale: [0.3, 0.3, 0, 0],
                style:{
                    x: 0,
                    y: 0,
                    image: "/static/" + flag[18]
                },
                invisible: false,
                position: [1528 - flagwidth, 1017 - flagheight],

            });

            var flag20 = new ImageShape({
                zlevel: 1,
                // scale: [0.3, 0.3, 0, 0],
                style:{
                    x: 0,
                    y: 0,
                    image: "/static/" + flag[19]
                },
                invisible: false,
                position: [1375 - flagwidth, 711 - flagheight],

            });

            var flag21 = new ImageShape({
                zlevel: 1,
                // scale: [0.3, 0.3, 0, 0],
                style:{
                    x: 0,
                    y: 0,
                    image: "/static/" + flag[20]
                },
                invisible: false,
                position: [1188 - flagwidth, 928 - flagheight],

            });

            ///////////
            // gao di
            //////////
            var flag22 = new ImageShape({
                zlevel: 1,
                // scale: [0.3, 0.3, 0, 0],
                style:{
                    x: 0,
                    y: 0,
                    image: "/static/" + flag[21]
                },
                invisible: false,
                position: [1857 - flagwidth, 1072 - flagheight],

            });

            var flag23 = new ImageShape({
                zlevel: 1,
                // scale: [0.3, 0.3, 0, 0],
                style:{
                    x: 0,
                    y: 0,
                    image: "/static/" + flag[22]
                },
                invisible: false,
                position: [1914 - flagwidth, 1195 - flagheight],

            });

            var flag24 = new ImageShape({
                zlevel: 1,
                // scale: [0.3, 0.3, 0, 0],
                style:{
                    x: 0,
                    y: 0,
                    image: "/static/" + flag[23]
                },
                invisible: false,
                position: [2082 - flagwidth, 1108 - flagheight],

            });

            var flag25 = new ImageShape({
                zlevel: 1,
                // scale: [0.3, 0.3, 0, 0],
                style:{
                    x: 0,
                    y: 0,
                    image: "/static/" + flag[24]
                },
                invisible: false,
                position: [2056 - flagwidth, 1283 - flagheight],

            });


            var flag26 = new ImageShape({
                zlevel: 1,
                // scale: [0.3, 0.3, 0, 0],
                style:{
                    x: 0,
                    y: 0,
                    image: "/static/" + flag[25]
                },
                invisible: false,
                position: [2033 - flagwidth, 1372 - flagheight],

            });

            var flag27 = new ImageShape({
                zlevel: 1,
                // scale: [0.3, 0.3, 0, 0],
                style:{
                    x: 0,
                    y: 0,
                    image: "/static/" + flag[26]
                },
               invisible: false,
                position: [2208 - flagwidth, 1284 - flagheight],

            });

            var flag28 = new ImageShape({
                zlevel: 1,
                // scale: [0.3, 0.3, 0, 0],
                style:{
                    x: 0,
                    y: 0,
                    image: "/static/" + flag[27]
                },
               invisible: false,
                position: [2312 - flagwidth, 1118 - flagheight],

            });
            // rander
            zr.addShape(img);
            zr.addShape(flag1);
            zr.addShape(flag2);
            zr.addShape(flag3);
            zr.addShape(flag4);
            zr.addShape(flag5);
            zr.addShape(flag6);
            zr.addShape(flag7);
            zr.addShape(flag8);
            zr.addShape(flag9);
            zr.addShape(flag10);
            zr.addShape(flag11);
            zr.addShape(flag12);
            zr.addShape(flag13);
            zr.addShape(flag14);
            zr.addShape(flag15);
            zr.addShape(flag16)
            zr.addShape(flag17);
            zr.addShape(flag18);
            zr.addShape(flag19);
            zr.addShape(flag20);
            zr.addShape(flag21);
            zr.addShape(flag22);
            zr.addShape(flag23);
            zr.addShape(flag24);
            zr.addShape(flag25);
            zr.addShape(flag26);
            zr.addShape(flag27);
            zr.addShape(flag28);
            zr.render();
        })
        // var websocket = new WebSocket("ws://localhost/websocket");
        // websocket.onopen = function(){
        // };
        // websocket.onmessage = function(evt){
        //     PlayAudio();
        //     location.reload();
        // };
        </script>
     <div id="Main" style="width:4000px;height:2143px; margin: auto;"></div>

    <script>
        var audioElement = document.createElement('audio');
        audioElement.setAttribute('src', '/static/339.mp3');
        function PlayAudio()
        {
            audioElement.load;
            audioElement.play();
        }
    </script>
    <script type="text/javascript">
        function sleep(sleepTime) {
            for(var start = Date.now(); Date.now() - start <= sleepTime; ) { }
        }
        // function websocket(){
        var websocket = new WebSocket("ws://10.15.0.8:8000/websocket");
        websocket.onopen = function(){
            console.log("socket start");
            websocket.send("ok");
        };
        websocket.onmessage = function(evt){
            // console.log(evt.data);
            PlayAudio();
            sleep(1000);
            location.reload();
        };

        // websocket.close()
    </script>
</body>
</html>
