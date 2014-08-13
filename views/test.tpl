<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="refresh" content="300">
    <title>Document</title>
    <script type="text/javascript" src="/static/zrender-master/doc/asset/js/esl/esl.js"></script>
</head>
<body style="background: black">
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
                    image: "/static/ditu2.png",
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
                position: [898 -flagwidth,1161- flagheight]
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
                position: [874 -flagwidth, 1293- flagheight]
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
                position: [720 - flagwidth, 1236 - flagheight]
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
                position: [931 - flagwidth, 1417 -  flagheight]
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
                position: [1055 - flagwidth, 1448 - flagheight]
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
                position: [1162 - flagwidth, 1439 - flagheight]
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
                position: [1349 - flagwidth, 1482 - flagheight]
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
                position: [1502 - flagwidth, 1585 - flagheight]
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
                position: [1511 - flagwidth, 1449 -flagheight]
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
                position: [1678 - flagwidth, 1370 - flagheight]
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
                position: [1810 - flagwidth, 1314 - flagheight]
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
                position: [1804 - flagwidth, 1175 - flagheight]
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
                position: [1702 - flagwidth, 938 -flagheight]
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
                position: [1924 - flagwidth, 884 - flagheight],

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
                position: [1758 - flagwidth, 741 - flagheight],

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
                position: [1469 - flagwidth, 961 - flagheight],

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
                position: [1373 - flagwidth, 902 - flagheight],

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
                position: [1277 - flagwidth, 868 - flagheight],

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
                position: [979 - flagwidth, 960 - flagheight],

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
                position: [894 - flagwidth, 861 - flagheight],

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
                position: [728 - flagwidth, 1012 - flagheight],

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
                position: [1164 - flagwidth, 1143 - flagheight],

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
                position: [1248 - flagwidth, 1078 - flagheight],

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
                position: [1357 - flagwidth, 1123 - flagheight],

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
                position: [1246 - flagwidth, 1178 - flagheight],

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
                position: [1294 - flagwidth, 1261 - flagheight],

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
                position: [1445 - flagwidth, 1246 - flagheight],

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
                position: [1489 - flagwidth, 1163 - flagheight],

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
        </script>
     <div id="Main" style="width:2500px;height:2143px; margin: auto;"></div>
</body>
</html>
