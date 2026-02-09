//L3S_define_bloom(Blur,Quality,Amount,Threshold,Intensity)

//argument0: blur type(1-2)
//argument1: Blur quality(0-1)
//argument2: Blur amount (0- )
//argument3: Threshold intensity (0-255)
//argument4: Intensity modifier (0- )
//argument5: Blur repitions (required for blur no.2)

//Blurs:
//1: Guassian Blur              Averages each pixel by the given radius(blur amount)
//2: Extended Guassian Blur     Uses down sampling and multiple blur passes to make a
//                              good but expensive bloom blur. 

if global.LS_bloom{
    global.LS_bloom_type=argument0
    global.LS_bloom_quality=argument1
    global.LS_bloom_amount=argument2
    
    var m;m=128-argument3*0.5
    global.LS_bloom_threshold=make_color_rgb(m,m,m);
    global.LS_bloom_intensity=argument4
    global.LS_bloom_width=view_wview*argument1
    global.LS_bloom_height=view_hview*argument1
    global.LS_bloom_map=surface_create(global.LS_bloom_width,global.LS_bloom_height)
    
    if global.LS_bloom_type=2{
        global.LS_bloom_mipmap=ds_list_create()
        scale=1
        for(i=0;i<argument5;i+=1){
            ds_list_add(global.LS_bloom_mipmap,surface_create(global.LS_bloom_width*scale,global.LS_bloom_height*scale))
            scale*=0.5;
            }
        }
    }