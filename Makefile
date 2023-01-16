er.out: emergencyRoomMain.o linked_list_hospital.o patient.o
	gcc -o er.out emergencyRoomMain.o linked_list_hospital.o patient.o
	
linked_list_hospital.o: linked_list_hospital.h linked_list_hospital.c patient.h 
	gcc -c linked_list_hospital.c

patient.o: patient.h patient.c linked_list_hospital.h
	gcc -c patient.c 

emergencyRoomMain.o: emergencyRoomMain.c linked_list_hospital.h patient.h
	gcc -c emergencyRoomMain.c

clean:
	rm -f *.o er.out
