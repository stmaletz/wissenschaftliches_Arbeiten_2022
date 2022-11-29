require(beepr)

funfun <- function(n = 61, max_width = 10, max_height = max_width,
                   max_xpos = 900, max_ypos = max_xpos){
  min_time <- 0.12
  time_counter <- 2 * min_time
  for(i in seq_len(n)){
    x11(width = sample(max_width, 1),
        height = sample(max_height, 1),
        xpos = sample(max_xpos, 1),
        ypos = sample(max_ypos, 1))
    time_step <- rexp(1, 7)
    if(time_counter > min_time){
      beep(sample(11, 1))
      time_counter <- 0
    } else{
      time_counter <- time_counter + time_step
    }
    Sys.sleep(time_step)
  }
}
funfun()
