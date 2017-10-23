( define (problem mountResc20People)
( :domain mountainRescueDomain)

( :objects 
    h0 h1 - helicopter
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 - personToBeRescued
    d0 d1 - paramedic
    cc0 cc1 - cableCar
    amb0 amb1 - ambulance
    res0 res1 res2 - rescuer
	medCen morgue baseOfMountain smallLedge smallRock cliffEdge middleOfMountain bigLedge bigRock topOfMountain - location
)
( :init

( hasPetrolStation baseOfMountain)

( validForAmb baseOfMountain) 
( validForAmb medCen) 
( validForAmb morgue)

( validForHelicopter baseOfMountain)
( validForHelicopter topOfMountain)
( validForHelicopter medCen)

( validForCC baseOfMountain)
( validForCC topOfMountain)
( validForCC middleOfMountain)

( personAt p0 bigLedge)
( personAt p1 cliffEdge)
( personAt p2 topOfMountain)
( personAt p3 smallRock)
( personAt p4 smallLedge)
( personAt p5 bigLedge) 
( personAt p6 bigRock)
( personAt p7 bigLedge) 
( personAt p8 bigRock)
( personAt p9 cliffEdge)
( personAt p10 middleOfMountain)
( personAt p11 cliffEdge)
( personAt p12 topOfMountain)
( personAt p13 smallRock)
( personAt p14 smallLedge)
( personAt p15 bigLedge) 
( personAt p16 bigRock)
( personAt p17 bigLedge) 

( personAt d1 baseOfMountain) 

( personAt res0 topOfMountain) 
( personAt res1 middleOfMountain) 
( personAt res2 baseOfMountain) 

( personAt d0 medCen)

( = (fuelLeft h0) 750)
( = (fuelMax h0) 750)
( = (fuelLeft h1) 750)
( = (fuelMax h1) 750) 
( = (fuelLeft amb0) 750)
( = (fuelMax amb0) 750) 
( = (fuelLeft amb1) 750)
( = (fuelMax amb1) 750)

( vehicleAt cc0 baseOfMountain)
( vehicleAt cc1 topOfMountain)

( vehicleAt h0 topOfMountain)
( vehicleAt h1 medCen)

( vehicleAt amb0 baseOfMountain)
( vehicleAt amb1 medCen)

( = (passengers h0) 0)
( = (capacity h0) 2) 
( = (passengers h1) 0) 
( = (capacity h1) 2)
( = (passengers cc0) 0)
( = (capacity cc0) 6) 
( = (passengers cc1) 0)
( = (capacity cc1) 6)
( = (passengers amb0) 0)
( = (capacity amb0) 1) 
( = (passengers amb1) 0) 
( = (capacity amb1) 1)

( = (withRescuer res0) 0)
( = (maxWithRescuer res0) 1)
( = (withRescuer res1) 0)
( = (maxWithRescuer res1) 2)
( = (withRescuer res1) 0)
( = (maxWithRescuer res1) 1)

( = (distance topOfMountain bigRock) 145) 
( = (distance bigRock bigLedge) 105)
( = (distance bigLedge middleOfMountain) 36) 
( = (distance middleOfMountain cliffEdge) 75)
( = (distance cliffEdge smallRock) 145)
( = (distance smallRock smallLedge) 51)
( = (distance smallLedge baseOfMountain) 15)
( = (distance baseOfMountain medCen) 145) 
( = (distance medCen baseOfMountain) 145) 
( = (distance medCen morgue) 100)
( = (distance morgue medCen) 100)
( = (distance baseOfMountain morgue) 15)
( = (distance morgue baseOfMountain) 15)
( = (distance middleOfMountain baseOfMountain) 200)
( = (distance baseOfMountain middleOfMountain) 200)
( = (distance middleOfMountain topOfMountain) 200)
( = (distance topOfMountain middleOfMountain) 200)
( = (distance topOfMountain baseOfMountain) 400)
( = (distance baseOfMountain topOfMountain) 400)


( = (timeForVehicle amb0 baseOfMountain medCen) 60)
( = (timeForVehicle amb0 medCen baseOfMountain) 60)
( = (timeForVehicle amb0 medCen morgue) 8)
( = (timeForVehicle amb0 morgue  medCen) 8)
( = (timeForVehicle amb0 baseOfMountain morgue) 3)
( = (timeForVehicle amb0 morgue baseOfMountain) 3)
( = (timeForVehicle amb1 baseOfMountain medCen) 60)
( = (timeForVehicle amb1 medCen baseOfMountain) 60)
( = (timeForVehicle amb1 medCen morgue) 8)
( = (timeForVehicle amb1 morgue  medCen) 8)
( = (timeForVehicle amb1 baseOfMountain morgue) 3)
( = (timeForVehicle amb1 morgue baseOfMountain) 3)

( = (timeForVehicle h0 baseOfMountain medCen) 50)
( = (timeForVehicle h0 medCen baseOfMountain) 50)
( = (timeForVehicle h0 baseOfMountain topOfMountain) 150)
( = (timeForVehicle h0 topOfMountain baseOfMountain) 150)
( = (timeForVehicle h0 topOfMountain medCen) 180)
( = (timeForVehicle h0 medCen topOfMountain) 180)

( = (timeForVehicle cc0 middleOfMountain baseOfMountain) 100)
( = (timeForVehicle cc0 baseOfMountain middleOfMountain) 100)
( = (timeForVehicle cc0 middleOfMountain topOfMountain) 100)
( = (timeForVehicle cc0 topOfMountain middleOfMountain) 100)
( = (timeForVehicle cc0 baseOfMountain topOfMountain) 200)
( = (timeForVehicle cc0 topOfMountain baseOfMountain) 200)
( = (timeForVehicle cc1 middleOfMountain baseOfMountain) 100)
( = (timeForVehicle cc1 baseOfMountain middleOfMountain) 100)
( = (timeForVehicle cc1 middleOfMountain topOfMountain) 100)
( = (timeForVehicle cc1 topOfMountain middleOfMountain) 100)
( = (timeForVehicle cc1 baseOfMountain topOfMountain) 200)
( = (timeForVehicle cc1 topOfMountain baseOfMountain) 200)

( = (timeForRescuer res0 baseOfMountain medCen) 300) 
( = (timeForRescuer res0 medCen baseOfMountain) 300)
( = (timeForRescuer res0 baseOfMountain morgue) 30)
( = (timeForRescuer res0 morgue baseOfMountain) 30)
( = (timeForRescuer res0 baseOfMountain middleOfMountain) 400)
( = (timeForRescuer res0 middleOfMountain  baseOfMountain) 400)
( = (timeForRescuer res0 baseOfMountain topOfMountain) 800)
( = (timeForRescuer res0 topOfMountain baseOfMountain) 800)
( = (timeForRescuer res0 topOfMountain middleOfMountain) 400)
( = (timeForRescuer res0 middleOfMountain topOfMountain) 400)
( = (timeForRescuer res0 topOfMountain morgue) 900)
( = (timeForRescuer res0 morgue topOfMountain) 900)
( = (timeForRescuer res0 topOfMountain medCen) 1000)
( = (timeForRescuer res0 medCen topOfMountain) 1000)
( = (timeForRescuer res0 morgue medCen) 160)
( = (timeForRescuer res0 medCen morgue) 160)
( = (timeForRescuer res0 morgue middleOfMountain) 460)
( = (timeForRescuer res0 middleOfMountain morgue) 460)
( = (timeForRescuer res0 middleOfMountain medCen) 560)
( = (timeForRescuer res0 medCen middleOfMountain) 560)
( = (timeForRescuer res0 topOfMountain bigRock) 1450) 
( = (timeForRescuer res0 bigRock bigLedge) 1050)
( = (timeForRescuer res0 bigLedge middleOfMountain) 360) 
( = (timeForRescuer res0 middleOfMountain cliffEdge) 750)
( = (timeForRescuer res0 cliffEdge smallRock) 1450)
( = (timeForRescuer res0 smallRock smallLedge) 510)
( = (timeForRescuer res0 smallLedge baseOfMountain) 150)
( = (timeForRescuer res0 baseOfMountain medCen) 1450) 
( = (timeForRescuer res0 medCen baseOfMountain) 1450) 
( = (timeForRescuer res0 medCen morgue) 1000)
( = (timeForRescuer res0 morgue medCen) 1000)
( = (timeForRescuer res0 baseOfMountain morgue) 150)
( = (timeForRescuer res0 morgue baseOfMountain) 150)
( = (timeForRescuer res0 middleOfMountain baseOfMountain) 2000)
( = (timeForRescuer res0 baseOfMountain middleOfMountain) 2000)
( = (timeForRescuer res0 middleOfMountain topOfMountain) 2000)
( = (timeForRescuer res0 topOfMountain middleOfMountain) 2000)
( = (timeForRescuer res0 topOfMountain baseOfMountain) 4000)
( = (timeForRescuer res0 baseOfMountain topOfMountain) 4000)

( = (timeForRescuer res1 baseOfMountain medCen) 300) 
( = (timeForRescuer res1 medCen baseOfMountain) 300)
( = (timeForRescuer res1 baseOfMountain morgue) 30)
( = (timeForRescuer res1 morgue baseOfMountain) 30)
( = (timeForRescuer res1 baseOfMountain middleOfMountain) 400)
( = (timeForRescuer res1 middleOfMountain  baseOfMountain) 400)
( = (timeForRescuer res1 baseOfMountain topOfMountain) 800)
( = (timeForRescuer res1 topOfMountain baseOfMountain) 800)
( = (timeForRescuer res1 topOfMountain middleOfMountain) 400)
( = (timeForRescuer res1 middleOfMountain topOfMountain) 400)
( = (timeForRescuer res1 topOfMountain morgue) 900)
( = (timeForRescuer res1 morgue topOfMountain) 900)
( = (timeForRescuer res1 topOfMountain medCen) 1000)
( = (timeForRescuer res1 medCen topOfMountain) 1000)
( = (timeForRescuer res1 morgue medCen) 160)
( = (timeForRescuer res1 medCen morgue) 160)
( = (timeForRescuer res1 morgue middleOfMountain) 460)
( = (timeForRescuer res1 middleOfMountain morgue) 460)
( = (timeForRescuer res1 middleOfMountain medCen) 560)
( = (timeForRescuer res1 medCen middleOfMountain) 560)
( = (timeForRescuer res1 topOfMountain bigRock) 1450) 
( = (timeForRescuer res1 bigRock bigLedge) 1050)
( = (timeForRescuer res1 bigLedge middleOfMountain) 360) 
( = (timeForRescuer res1 middleOfMountain cliffEdge) 750)
( = (timeForRescuer res1 cliffEdge smallRock) 1450)
( = (timeForRescuer res1 smallRock smallLedge) 510)
( = (timeForRescuer res1 smallLedge baseOfMountain) 150)
( = (timeForRescuer res1 baseOfMountain medCen) 1450) 
( = (timeForRescuer res1 medCen baseOfMountain) 1450) 
( = (timeForRescuer res1 medCen morgue) 1000)
( = (timeForRescuer res1 morgue medCen) 1000)
( = (timeForRescuer res1 baseOfMountain morgue) 150)
( = (timeForRescuer res1 morgue baseOfMountain) 150)
( = (timeForRescuer res1 middleOfMountain baseOfMountain) 2000)
( = (timeForRescuer res1 baseOfMountain middleOfMountain) 2000)
( = (timeForRescuer res1 middleOfMountain topOfMountain) 2000)
( = (timeForRescuer res1 topOfMountain middleOfMountain) 2000)
( = (timeForRescuer res1 topOfMountain baseOfMountain) 4000)
( = (timeForRescuer res1 baseOfMountain topOfMountain) 4000)
( = (timeForRescuer res2 baseOfMountain medCen) 300) 
( = (timeForRescuer res2 medCen baseOfMountain) 300)
( = (timeForRescuer res2 baseOfMountain morgue) 30)
( = (timeForRescuer res2 morgue baseOfMountain) 30)
( = (timeForRescuer res2 baseOfMountain middleOfMountain) 400)
( = (timeForRescuer res2 middleOfMountain  baseOfMountain) 400)
( = (timeForRescuer res2 baseOfMountain topOfMountain) 800)
( = (timeForRescuer res2 topOfMountain baseOfMountain) 800)
( = (timeForRescuer res2 topOfMountain middleOfMountain) 400)
( = (timeForRescuer res2 middleOfMountain topOfMountain) 400)
( = (timeForRescuer res2 topOfMountain morgue) 900)
( = (timeForRescuer res2 morgue topOfMountain) 900)
( = (timeForRescuer res2 topOfMountain medCen) 1000)
( = (timeForRescuer res2 medCen topOfMountain) 1000)
( = (timeForRescuer res2 morgue medCen) 160)
( = (timeForRescuer res2 medCen morgue) 160)
( = (timeForRescuer res2 morgue middleOfMountain) 460)
( = (timeForRescuer res2 middleOfMountain morgue) 460)
( = (timeForRescuer res2 middleOfMountain medCen) 560)
( = (timeForRescuer res2 medCen middleOfMountain) 560)
( = (timeForRescuer res2 topOfMountain bigRock) 1450) 
( = (timeForRescuer res2 bigRock bigLedge) 1050)
( = (timeForRescuer res2 bigLedge middleOfMountain) 360) 
( = (timeForRescuer res2 middleOfMountain cliffEdge) 750)
( = (timeForRescuer res2 cliffEdge smallRock) 1450)
( = (timeForRescuer res2 smallRock smallLedge) 510)
( = (timeForRescuer res2 smallLedge baseOfMountain) 150)
( = (timeForRescuer res2 baseOfMountain medCen) 1450) 
( = (timeForRescuer res2 medCen baseOfMountain) 1450) 
( = (timeForRescuer res2 medCen morgue) 1000)
( = (timeForRescuer res2 morgue medCen) 1000)
( = (timeForRescuer res2 baseOfMountain morgue) 150)
( = (timeForRescuer res2 morgue baseOfMountain) 150)
( = (timeForRescuer res2 middleOfMountain baseOfMountain) 2000)
( = (timeForRescuer res2 baseOfMountain middleOfMountain) 2000)
( = (timeForRescuer res2 middleOfMountain topOfMountain) 2000)
( = (timeForRescuer res2 topOfMountain middleOfMountain) 2000)
( = (timeForRescuer res2 topOfMountain baseOfMountain) 4000)
( = (timeForRescuer res2 baseOfMountain topOfMountain) 4000)

( notInjured p0)
( notInjured p1)
( notInjured p2)
( notInjured p3) 
( notInjured p4) 
( notInjured p5)
( notInjured p6)
( notInjured p7)
( notInjured p8) 
( injured p9)
( injured p10)
( injured p11)
( injured p12)
( injured p13)
( injured p14)
( injured p15)
( injured p16)
( injured p17)

( conscious p0)
( conscious p1)
( conscious p2)
( conscious p3)
( conscious p4)
( conscious p5) 
( conscious p6) 
( conscious p7)
( conscious p8)
( notConscious p9)
( notConscious p10) 
( notConscious p11) 
( notConscious p12) 
( notConscious p13) 
( notConscious p14) 
( notConscious p15) 
( notConscious p16) 
( notConscious p17) 

( alive p0) 
( alive p1)
( alive p2)
( alive p3)
( alive p4)
( alive p5)
( alive p6)
( alive p7)
( alive p8)  

)

( :goal
( and     ( personAt p0 medCen) 
		  ( personAt p1 medCen)
  	      ( personAt p2 medCen) 
    	  ( personAt p3 medCen) 
     	  ( personAt p4 medCen)
    	  ( personAt p5 medCen)
    	  ( personAt p6 medCen)
     	  ( personAt p7 medCen)
    	  ( personAt p8 medCen)

    	  ( personAt p9 morgue)
    	  ( personAt p10 morgue) 
		  ( personAt p11 morgue)
		  ( personAt p12 morgue)
		  ( personAt p13 morgue)
		  ( personAt p14 morgue)
		  ( personAt p15 morgue)
		  ( personAt p16 morgue)
		  ( personAt p17 morgue)
)
)
( :metric minimize (total-time))

)