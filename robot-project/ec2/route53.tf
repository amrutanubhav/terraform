resource "aws_route53_record" "component" {
  zone_id = "Z02177131QU6HVDVL4864"
  name    = "${var.component}-dev.roboshop.internal"
  type    = "A"
  ttl     = 300
  records = [aws_spot_instance_request.spot_server.private_ip]
}