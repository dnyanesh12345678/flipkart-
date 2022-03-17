pipeline {
agent any
stages {
stage("git clone") {
steps {
sh  "rm -rf flipkart-"
sh "git clone https://github.com/dnyanesh12345678/flipkart-.git"
}
}
stage("compile") {
steps{
sh "mvn install"
}
}
stage("create dockerfile") {
steps{
sh "docker build -t 9dnyanesh/flipkart-image ."
}
}
stage("push image to docker hub") {
steps {
sh "docker push 9dnyanesh/flipkart-image"
}
}
stage("create application container"){
steps {
sh "./env.sh 5"
}
}
}
}
