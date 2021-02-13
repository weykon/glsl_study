stats = new Stats();
stats.showPanel( 0 ); // 0: fps, 1: ms, 2: mb, 3+: custom
document.body.appendChild( stats.dom );

var canvas = document.createElement( 'canvas' );
			canvas.width = 512;
			canvas.height = 512;
			document.body.appendChild( canvas );

			var context = canvas.getContext( '2d' );
			context.fillStyle = 'rgba(127,0,255,0.05)';

			
function animate() {

	var time = performance.now() / 1000;

	stats.begin();

	// monitored code goes here
	for ( var i = 0; i < 2000; i ++ ) {

		var x = Math.cos( time + i * 0.01 ) * 196 + 256;
		var y = Math.sin( time + i * 0.01234 ) * 196 + 256;

		context.beginPath();
		context.arc( x, y, 10, 0, Math.PI * 2, true );
		context.fill();

	}

	stats.end();

	requestAnimationFrame( animate );

}

animate()

