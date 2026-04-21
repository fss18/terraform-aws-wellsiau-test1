resource "aws_s3_bucket" "example" {
  bucket = "my-bucket"

  # Reference a resource that doesn't exist — triggers validate error
  tags = {
    Name = aws_instance.nonexistent.id
  }
}
