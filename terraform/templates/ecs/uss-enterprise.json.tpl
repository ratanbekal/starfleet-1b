[
  {
    "name": "uss-enterprise",
    "image": "${REPOSITORY_URL}:latest",
    "networkMode": "awsvpc",
    "essential": true,
    "logConfiguration": {
        "logDriver": "awslogs",
        "options": {
          "awslogs-group": "/ecs/uss-enterprise",
          "awslogs-region": "${AWS_REGION}",
          "awslogs-stream-prefix": "ecs"
        }
    },
    "portMappings": [
      {
        "containerPort": 22,
        "hostPort": 22
      },
      {
        "containerPort": 3000,
        "hostPort": 3000
      }
    ]

  }
]
