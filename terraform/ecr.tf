# ECR repository for frontend
resource "aws_ecr_repository" "frontend" {
  name = "${var.project_name}-frontend"
}

# ECR repository for backend
resource "aws_ecr_repository" "backend" {
  name = "${var.project_name}-backend"
}