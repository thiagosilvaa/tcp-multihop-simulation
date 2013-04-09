BEGIN { totalBits = 0; firstFrame = 0; }
{
	if ( $3 == x ) {
		totalBits += 8*$8;
	}
	if ( firstFrame == 0 ) {
		timeBegin = $2;
		firstFrame++;
	} else {
		timeEnd = $2;
	}

}

END {
	duration = timeEnd - firstFrame;
	throughput = totalBits/duration/1e3; #kbps
	printf("%f\n",throughput);
}

