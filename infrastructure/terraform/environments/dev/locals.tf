locals {
  name_prefix = "slab-ai-${var.environment}"
  
  common_tags = {
    Project     = "slab-ai"
    Environment = var.environment
    ManagedBy   = "terraform"
    Repository  = "https://github.com/Kartik27baliyan/Slab.ai-EdTech-platform-"
  }
}
