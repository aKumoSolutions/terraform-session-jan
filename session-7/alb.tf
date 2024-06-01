resource "aws_lb_target_group" "main" {
  name     = replace(local.name, "rtype", "alb")
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_default_vpc.main.id
  target_type = "instance"
  tags = merge(
    { Name = replace(local.name, "rtype", "alb") },
    local.common_tags
  )
}

resource "aws_lb" "main" {
  name               = replace(local.name, "rtype", "alb")
  internal           = false          // Internet Facing
  load_balancer_type = "application"
  security_groups    = [ aws_security_group.alb.id ]
  subnets            = [ aws_default_subnet.public_subnet_1.id, aws_default_subnet.public_subnet_2.id ]

  tags = merge(
    { Name = replace(local.name, "rtype", "alb") },
    local.common_tags
  )
}

resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.main.arn
  port              = "80"
  protocol          = "HTTP"
  tags              = local.common_tags

  default_action {
    type = "redirect"

    redirect {
      port        = "443"
      protocol    = "HTTPS"
      status_code = "HTTP_301"
    }
  }
}

resource "aws_lb_listener" "https" {
  load_balancer_arn = aws_lb.main.arn
  port              = "443"
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  certificate_arn   = aws_acm_certificate.main.arn
  tags = merge(
    { Name = replace(local.name, "rtype", "alb-https") },
    local.common_tags
  )

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.main.arn
  }

  depends_on = [ aws_acm_certificate_validation.main ]
}

resource "aws_route53_record" "site_domain" {
  zone_id = var.hosted_zone_id
  name    = aws_acm_certificate.main.domain_name
  type    = "A"


  alias {
    name                   = aws_lb.main.dns_name
    zone_id                = aws_lb.main.zone_id
    evaluate_target_health = false
  }
}