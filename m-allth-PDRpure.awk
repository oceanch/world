BEGIN {
init=0;
numberofsubjects=1000			;# number of subjects
stop=10;
col = 0;
recv = 0;
boo = 0;
send = 0;
CH=0;
largestpkt = -1;
}

{
            	action = $1;
            	secondcolumn = $2;
            	time = $3;
		Ni= $5;		# node id
		Layer=$19;	# trace level AGT,MAC,RTR ...
		Nw = $21; # reason of being dropped
		Nwold = $15; 
		Mt = $29; # RTS/CTS/PBC/...
		Mtold = $23; # RTS/CTS/PBC/...
           	pktsize = $31;	# Il: packet size
		pktid_RTS = $33;
         	Is = $35;	# "source address.source port" number
     	     	Id = $37;	# "dest address.dest port" number
		
		flow_id= $41; 	# If: flow id
           	packet_id = $43;# Ii: unique id of packet

#	h -t 1.0017056867 DTA busy 0 sx=6.000000
	if($1=="hh") {
		CH=$6;
	}

# hh -t 8.9347699974 Channel busy 0	NODE[90]	possible_receivers: 9	pktID: 9
	if($8=="possible_receivers:") {
		possible_receivers[$11] = $9;
		if  ($11 > largestpkt) largestpkt = $11;
#printf ("PKT %d\t%d\t%d\t%d\n", $11, possible_receivers[$11], $9,largestpkt);
	}

        if((action=="r") && (Layer=="MAC") && (Mt == "CAM")) { 
pkt_ID = packet_id;
				count[packet_id]++;
				recv++;
                        pkt_byte[recv]=pktsize;
				recvtime[recv] = time;	
				recvAC[recv] = flow_id;	
				recvchannel[recv] = CH;
#printf("rrrrr CAM rrrr\t	node %d\t to \t%d\t%f\tprio: %d\tpkt size: %d\t pkt ID: %d	CH=%d\n", Is, Id,time,  recvAC[recv],pkt_byte[recv], packet_id, CH); 
         		
	}  else if ((action=="s") && (Layer=="AGT") && (Mt == "CAM") ) {
#	s -t 0.000017454 -Ni 90 -Nx 1741.11 -Ny 1660.75 -Nz 0.00 -Dx 1741.11 -Dy 1660.75 -Dz 0.00 -Nl AGT -Nw --- -Ma 7545 -Md -1 -Ms 0 -Mt CAM -Il 100 -iI 0 -Is 90 -Id -1 -It CAM -If 0 -Ii 0 
#	s -t 9.968778518 -Ni 90 -Nx 1839.30 -Ny 1729.07 -Nz 0.00 -Dx 1839.30 -Dy 1729.07 -Dz 0.00 -Nl MAC -Nw --- -Ma 0 -Md -1 -Ms 90 -Mt CAM -Il 165 -iI 10 -Is 90 -Id -1 -It CAM -If 0 -Ii 10 

			send++;
			sendtime[send] = time;
			sendpkt_byte[send]=pktsize;
			sendchannel[send] = CH;
			sendpkt[packet_id] = 1;
#	60.0045855484	no-coop-recved	chon= 4 S- 8 D- 69
#	r -t 1.009788453 -Ni 0 -Nx 0.00 -Ny 500.00 -Nz 0.00 -Sx 2.00 -Sy 500.00 -Sz 0.00 -Nl MAC -Nw --- -Ma 5b2 -Md 0 -Ms 1 -Mt CTS -Il 40 
# 	r -t 60.003590272 -Ni 11 -Nx 3604.12 -Ny 56.00 -Nz 0.00 -Sx 4000.00 -Sy 60.00 -Sz 0.00 -Nl MAC -Nw --- -Ma e7d -Md 11 -Ms 71 -Mt CTS -Il 40 
#	s -t 60.003312078 -Ni 47 -Nx 2004.11 -Ny 56.00 -Nz 0.00 -Nl MAC -Nw --- -Ma f3 -Md 60 -Ms 47 -Mt PBC -Il 1074 -Is 47 -Id 60 -It PBC -If 1 -Ii 89 
#printf("sssss DATA ssss\t	node %d\t -> \t%d\t\t at %f\t	s PBC	CH=%d	PKTID= %d\n", $35, $37, sendtime[send], CH, $43); 
	}

}		;# end of body

END {

s= send/(stop-1);
d= d/(stop-1);
r= r/(stop-1);


	for (j=0 ; j<=largestpkt; j++){
		if (possible_receivers[j] != 0) {
			printf ("PKT %d\t%d\t%d\t%f\n", j, possible_receivers[j], count[j], count[j]/possible_receivers[j]);
			total_poss_receiver = total_poss_receiver + possible_receivers[j];
			actual_poss_receiver = actual_poss_receiver + count[j];
		}
	}
printf ("total_poss_receiver=%d	actual_poss_receiver=%d	PDR=%f",total_poss_receiver, actual_poss_receiver, actual_poss_receiver/total_poss_receiver);

}


