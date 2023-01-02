resource "local_file" "foo" {
  content  = "foo!"
  filename = "${path.module}/foo.bar"

}

# data "local_file" "foo" {
#   filename = "${path.module}/foo.bar"
# }