                        with objDoorV {
                            if place_meeting(x + lengthdir_x(12, global.dir - 180), y + lengthdir_y(12, global.dir - 180), objPlayer) {

                                if object_index = objDoorV {
                                    if solid = 0 {
                                        if abs(swingspeed) < 8 {
                                            swingspeed += lengthdir_x(16, global.dir)
                                            if abs(swingspeed) > 3.5 swinger = 1
                                        }
                                        if abs(swingspeed) > 8 {
                                            swingspeed = sign(swingspeed) * 8
                                        }
                                    }
                                }

                                if object_index = objDoorH {
                                    if solid = 0 {
                                        if abs(swingspeed) < 8 {
                                            swingspeed += lengthdir_y(16, global.dir)
                                            if abs(swingspeed) > 3.5 swinger = 1
                                        }
                                        if abs(swingspeed) > 8 {
                                            swingspeed = sign(swingspeed) * 8
                                        }
                                    }
                                }

                                if object_index = objDoorV2 {
                                    if solid = 0 {
                                        if abs(swingspeed) < 8 {
                                            swingspeed -= lengthdir_x(16, global.dir)
                                            if abs(swingspeed) > 3.5 swinger = 1
                                        }
                                        if abs(swingspeed) > 8 {
                                            swingspeed = sign(swingspeed) * 8
                                        }
                                    }
                                }

                                if object_index = objDoorH2 {
                                    if solid = 0 {
                                        if abs(swingspeed) < 8 {
                                            swingspeed -= lengthdir_y(16, global.dir)
                                            if abs(swingspeed) > 3.5 swinger = 1
                                        }
                                        if abs(swingspeed) > 8 {
                                            swingspeed = sign(swingspeed) * 8
                                        }
                                    }
                                }


                            }
                        }
