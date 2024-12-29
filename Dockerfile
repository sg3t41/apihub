FROM golang:latest

WORKDIR $GOPATH/src/github.com/sg3t41/apihub

COPY . $GOPATH/src/github.com/sg3t41/apihub

# 環境変数PATHを設定
ENV PATH=$PATH:$GOPATH/bin

EXPOSE 8080
ENTRYPOINT ["make"]

