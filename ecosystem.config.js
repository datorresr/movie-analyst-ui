module.exports = {
  apps: [
    {
      name: "movies-app",
      script: "/home/ec2-user/movie-analyst-ui/server.js",
      env: {
        NODE_ENV: "production",
        BACK_HOST: process.env.BACK_HOST
      },
      max_restarts: 3, // Número máximo de reinicios en caso de fallo
      min_uptime: 10000

    }
  ]
};
