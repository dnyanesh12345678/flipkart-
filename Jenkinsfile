pipeline {
agent any
stages {
stage ("git clone") {
steps {
sh "git clone https://github.com/dnyanesh12345678/flipkart-.git"
}
}
stage ("compile java code"){
steps {
sh "mvn install"
}
}
stage ("create docker-file"){
steps {
sh "docker build -t 9dnyanesh/iflipkart-image ."
}
}
stage ("push image to dockerhub"){
steps {
sh "docker push 9dnyanesh/iflipkart-image"
}
}
stage ("create container"){
steps {
sh "./env.sh 5"
}
}
}
}
