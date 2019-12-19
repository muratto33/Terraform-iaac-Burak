resource "aws_route53_record" "www" { 
  zone_id = "Z1NSGWEPJFDNW" 
  name    = "www.burakkarakas.net" 
  type    = "A" 
  ttl     = "60" 
  records = [aws_instance.web[0].public_ip,aws_instance.web[1].public_ip,aws_instance.web[2].public_ip] 
} 