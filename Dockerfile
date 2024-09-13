# ベースイメージとしてGo公式イメージを使用
FROM golang:1.22.4-alpine

# 作業ディレクトリを設定
WORKDIR /app

# 依存関係ファイルをコピー
COPY go.mod ./

# 依存関係をダウンロード
RUN go mod download

# ソースコードをコピー
COPY *.go ./

# アプリケーションをビルド
RUN go build -o main .

# 実行可能ファイルを実行
CMD ["./main"]