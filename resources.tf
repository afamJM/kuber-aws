data "template_file" "kops-tpl" {
    template  = "${file("cluster.yaml")}"

    vars {
        vpc_id   = "${aws_vpc.main.id}"
        vpc_cidr = "${var.vpc_cidr_block}"
    
    }
}