.class Lcom/tenpay/android/wechat/MyKeyboardWindow$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tenpay/android/wechat/MyKeyboardWindow;


# direct methods
.method constructor <init>(Lcom/tenpay/android/wechat/MyKeyboardWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/tenpay/android/wechat/MyKeyboardWindow$1;->a:Lcom/tenpay/android/wechat/MyKeyboardWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/16 v5, 0x3b

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tenpay/android/wechat/MyKeyboardWindow$1;->a:Lcom/tenpay/android/wechat/MyKeyboardWindow;

    invoke-static {v0}, Lcom/tenpay/android/wechat/MyKeyboardWindow;->a(Lcom/tenpay/android/wechat/MyKeyboardWindow;)Landroid/widget/EditText;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    :pswitch_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v2, p0, Lcom/tenpay/android/wechat/MyKeyboardWindow$1;->a:Lcom/tenpay/android/wechat/MyKeyboardWindow;

    const-string v3, "tenpay_keyboard_x"

    invoke-virtual {v2, v3}, Lcom/tenpay/android/wechat/MyKeyboardWindow;->a(Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/tenpay/android/wechat/MyKeyboardWindow$1;->a:Lcom/tenpay/android/wechat/MyKeyboardWindow;

    invoke-static {v0}, Lcom/tenpay/android/wechat/MyKeyboardWindow;->b(Lcom/tenpay/android/wechat/MyKeyboardWindow;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tenpay/android/wechat/MyKeyboardWindow$1;->a:Lcom/tenpay/android/wechat/MyKeyboardWindow;

    invoke-static {v0}, Lcom/tenpay/android/wechat/MyKeyboardWindow;->a(Lcom/tenpay/android/wechat/MyKeyboardWindow;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v1, v5}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    iget-object v0, p0, Lcom/tenpay/android/wechat/MyKeyboardWindow$1;->a:Lcom/tenpay/android/wechat/MyKeyboardWindow;

    invoke-static {v0}, Lcom/tenpay/android/wechat/MyKeyboardWindow;->a(Lcom/tenpay/android/wechat/MyKeyboardWindow;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v2, Landroid/view/KeyEvent;

    const/16 v3, 0x34

    invoke-direct {v2, v1, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    iget-object v0, p0, Lcom/tenpay/android/wechat/MyKeyboardWindow$1;->a:Lcom/tenpay/android/wechat/MyKeyboardWindow;

    invoke-static {v0}, Lcom/tenpay/android/wechat/MyKeyboardWindow;->a(Lcom/tenpay/android/wechat/MyKeyboardWindow;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v4, v5}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v2, p0, Lcom/tenpay/android/wechat/MyKeyboardWindow$1;->a:Lcom/tenpay/android/wechat/MyKeyboardWindow;

    const-string v3, "tenpay_keyboard_1"

    invoke-virtual {v2, v3}, Lcom/tenpay/android/wechat/MyKeyboardWindow;->a(Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_2

    const/16 v0, 0x8

    :goto_1
    iget-object v2, p0, Lcom/tenpay/android/wechat/MyKeyboardWindow$1;->a:Lcom/tenpay/android/wechat/MyKeyboardWindow;

    invoke-static {v2}, Lcom/tenpay/android/wechat/MyKeyboardWindow;->a(Lcom/tenpay/android/wechat/MyKeyboardWindow;)Landroid/widget/EditText;

    move-result-object v2

    new-instance v3, Landroid/view/KeyEvent;

    invoke-direct {v3, v1, v0}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    iget-object v1, p0, Lcom/tenpay/android/wechat/MyKeyboardWindow$1;->a:Lcom/tenpay/android/wechat/MyKeyboardWindow;

    invoke-static {v1}, Lcom/tenpay/android/wechat/MyKeyboardWindow;->a(Lcom/tenpay/android/wechat/MyKeyboardWindow;)Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v4, v0}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v2, p0, Lcom/tenpay/android/wechat/MyKeyboardWindow$1;->a:Lcom/tenpay/android/wechat/MyKeyboardWindow;

    const-string v3, "tenpay_keyboard_2"

    invoke-virtual {v2, v3}, Lcom/tenpay/android/wechat/MyKeyboardWindow;->a(Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_3

    const/16 v0, 0x9

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v2, p0, Lcom/tenpay/android/wechat/MyKeyboardWindow$1;->a:Lcom/tenpay/android/wechat/MyKeyboardWindow;

    const-string v3, "tenpay_keyboard_3"

    invoke-virtual {v2, v3}, Lcom/tenpay/android/wechat/MyKeyboardWindow;->a(Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_4

    const/16 v0, 0xa

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v2, p0, Lcom/tenpay/android/wechat/MyKeyboardWindow$1;->a:Lcom/tenpay/android/wechat/MyKeyboardWindow;

    const-string v3, "tenpay_keyboard_4"

    invoke-virtual {v2, v3}, Lcom/tenpay/android/wechat/MyKeyboardWindow;->a(Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_5

    const/16 v0, 0xb

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v2, p0, Lcom/tenpay/android/wechat/MyKeyboardWindow$1;->a:Lcom/tenpay/android/wechat/MyKeyboardWindow;

    const-string v3, "tenpay_keyboard_5"

    invoke-virtual {v2, v3}, Lcom/tenpay/android/wechat/MyKeyboardWindow;->a(Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_6

    const/16 v0, 0xc

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v2, p0, Lcom/tenpay/android/wechat/MyKeyboardWindow$1;->a:Lcom/tenpay/android/wechat/MyKeyboardWindow;

    const-string v3, "tenpay_keyboard_6"

    invoke-virtual {v2, v3}, Lcom/tenpay/android/wechat/MyKeyboardWindow;->a(Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_7

    const/16 v0, 0xd

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v2, p0, Lcom/tenpay/android/wechat/MyKeyboardWindow$1;->a:Lcom/tenpay/android/wechat/MyKeyboardWindow;

    const-string v3, "tenpay_keyboard_7"

    invoke-virtual {v2, v3}, Lcom/tenpay/android/wechat/MyKeyboardWindow;->a(Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_8

    const/16 v0, 0xe

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v2, p0, Lcom/tenpay/android/wechat/MyKeyboardWindow$1;->a:Lcom/tenpay/android/wechat/MyKeyboardWindow;

    const-string v3, "tenpay_keyboard_8"

    invoke-virtual {v2, v3}, Lcom/tenpay/android/wechat/MyKeyboardWindow;->a(Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_9

    const/16 v0, 0xf

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v2, p0, Lcom/tenpay/android/wechat/MyKeyboardWindow$1;->a:Lcom/tenpay/android/wechat/MyKeyboardWindow;

    const-string v3, "tenpay_keyboard_9"

    invoke-virtual {v2, v3}, Lcom/tenpay/android/wechat/MyKeyboardWindow;->a(Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_a

    const/16 v0, 0x10

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v2, p0, Lcom/tenpay/android/wechat/MyKeyboardWindow$1;->a:Lcom/tenpay/android/wechat/MyKeyboardWindow;

    const-string v3, "tenpay_keyboard_0"

    invoke-virtual {v2, v3}, Lcom/tenpay/android/wechat/MyKeyboardWindow;->a(Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_b

    const/4 v0, 0x7

    goto/16 :goto_1

    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v2, p0, Lcom/tenpay/android/wechat/MyKeyboardWindow$1;->a:Lcom/tenpay/android/wechat/MyKeyboardWindow;

    const-string v3, "tenpay_keyboard_d"

    invoke-virtual {v2, v3}, Lcom/tenpay/android/wechat/MyKeyboardWindow;->a(Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_c

    const/16 v0, 0x43

    goto/16 :goto_1

    :cond_c
    move v0, v1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
