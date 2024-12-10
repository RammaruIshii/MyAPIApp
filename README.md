# このアプリについて
このアプリは、Swagger仕様書に基づいたAPIの動作確認を行うためのiOSアプリです。
具体的には、APIから取得したデータを画面に表示させます。

## 作成理由
Swaggerの使い方（API仕様書を定義するところから）・プロジェクトに取り込み、APIが期待通りに動作するかをアウトプットしたかったから。
現在、参画しているプロジェクトでは、APIの設計にSwaggerを使用しています。
そのため、普段なんとなく眺めているSwaggerの仕様を大まかに一から理解（アウトプット）したかったです。

## 機能概要
Swift用のAPIクライアントを自動生成しました。
つまり、Swaggerの仕様書を基に、SwiftでAPIクライアントを作成し、プロジェクトに組み込みました。

## 環境ごとのエンドポイント設定
各環境に対応するエンドポイントを、info.plistで環境ごとに分けて設定しています。
それによって、APIクライアントには、環境ごとに異なるbaseURLを設定し、各環境に対応したサーバーからデータを取得する、を想定しています。
- 本番
- 開発
- モックサーバー環境（Prismツールを仕様）

## APIサーバーについて
本番・開発環境のAPIサーバーは作成していません。（今回は各環境ごとにサーバーを構築することに重きを置いていません）<br>
その代わり、モックデータを返すため（Swagger仕様書のexampleフィールドに定義されたレスポンス）だけのモックサーバーを、Prismというツールを使用して、簡易的に作成しました。<br>
そのため、Swaggerで定義されたエンドポイントからのデータ取得をシミュレーションしています。

## 使い方
info.plistに記載された環境設定に基づいて、開発・本番・Prism環境のAPIエンドポイントを選択します。（本番・開発環境用の実際のサーバーは作成していませんので、Prism環境を選択してください）<br>
Swagger仕様書に従って生成されたAPIクライアントを使用して、APIからデータを取得します。<br>
本番・開発環境用の実際のサーバーは作成していませんので、Prismモックサーバーでシミュレーションされたデータを確認します。

## 注意事項
繰り返しになりますが、このアプリは、APIサーバーの実装部分には注力していません。あくまでSwaggerに基づいたAPIクライアントの動作確認を目的としています。<br>
そのため、本番・開発環境に対応する実際のサーバーは含まれていません。
データ取得はPrismツールを使用して実現させています。
