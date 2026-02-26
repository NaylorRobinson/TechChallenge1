########################################
# Application Load Balancer
########################################

resource "aws_lb" "app_lb" {
  name               = "${var.project_name}-alb"
  load_balancer_type = "application"
  subnets            = [aws_subnet.public_1.id, 
                        aws_subnet.public_2.id
                    ]
  security_groups    = [aws_security_group.alb_sg.id]
}

########################################
# Target Group
########################################

resource "aws_lb_target_group" "frontend_tg" {
  name     = "${var.project_name}-tg"
  port     = 3000
  protocol = "HTTP"
  vpc_id   = aws_vpc.main.id
  target_type = "ip"
}

########################################
# Listener
########################################

resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.app_lb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.frontend_tg.arn
  }
}