void Title() {
    ////タイトル画面の描画
    mouseClicked();         //マウスクリックがあるか
    image(titleImage,0,0);  //タイトル画面の描画
    if (m_click) {
        ///クリックがあった場合の処理関係
        print("click");
        clickSound.play();  //効果音
        m_click = false;    //判定を元に戻す
        screenNumber = 1;   //画面をプレイ画面へ遷移
        start_time = millis();  //スタート時間を記録
        //諸々をリセット
        HP = 10;
        score = 0;
        block.clear();
    }
    
    
}