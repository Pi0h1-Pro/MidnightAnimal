// floorindex=0
if (room == rmHotelEntrance || room == rmHotelSuite)
	floorindex = 5;
if (room == rmOfficeEntrance || room == rmOfficeFloor2 || room == rmOfficeFloor3)
	floorindex = 3;
if (room == rmMansionMainHall || room == rmMansionBalcony)
	floorindex = 6;
if (room == rmPoliceHQFloor1 || room == rmPoliceHQFloor2 || room == rmPoliceHQFloor3)
	floorindex = 8;
if (room == rmHospitalCutscene || room == rmHospitalEntrance || room == rmHospitalTopFloor)
	floorindex = 6;
if (room == rmPhoneHomUpstairs || room == rmPhoneHomEntrance || room == rmPhoneHomUpstairsBiker || room == rmPhoneHomEntranceBiker)
	floorindex = 2;

wait = 40;
index = 0;
if (image_angle == 0)
{
	addx = 0;
	addy = 0.5;
}
if (image_angle == 90)
{
	addx = 0.5;
	addy = 0;
}
if (image_angle == 180)
{
	addx = 0;
	addy = -0.5;
}
if (image_angle == 270)
{
	addx = -0.5;
	addy = 0;
}
touch = 0;
image_speed = 0;
dir = 0;
valid = 1;

