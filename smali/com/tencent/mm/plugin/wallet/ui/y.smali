.class final Lcom/tencent/mm/plugin/wallet/ui/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic dXr:Landroid/view/View;

.field final synthetic fem:Lcom/tencent/mm/plugin/wallet/ui/x;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/wallet/ui/x;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 701
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/ui/y;->fem:Lcom/tencent/mm/plugin/wallet/ui/x;

    iput-object p2, p0, Lcom/tencent/mm/plugin/wallet/ui/y;->dXr:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 705
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/y;->fem:Lcom/tencent/mm/plugin/wallet/ui/x;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/ui/x;->feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->h(Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;)Lcom/tenpay/android/wechat/MyKeyboardWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tenpay/android/wechat/MyKeyboardWindow;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/y;->fem:Lcom/tencent/mm/plugin/wallet/ui/x;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/ui/x;->feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->h(Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;)Lcom/tenpay/android/wechat/MyKeyboardWindow;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tenpay/android/wechat/MyKeyboardWindow;->setVisibility(I)V

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/y;->fem:Lcom/tencent/mm/plugin/wallet/ui/x;

    iget v0, v0, Lcom/tencent/mm/plugin/wallet/ui/x;->fek:I

    if-ne v1, v0, :cond_1

    .line 711
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/y;->fem:Lcom/tencent/mm/plugin/wallet/ui/x;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/ui/x;->feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->h(Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;)Lcom/tenpay/android/wechat/MyKeyboardWindow;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tenpay/android/wechat/MyKeyboardWindow;->setXMode(I)V

    .line 718
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/y;->fem:Lcom/tencent/mm/plugin/wallet/ui/x;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/ui/x;->feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->h(Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;)Lcom/tenpay/android/wechat/MyKeyboardWindow;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/y;->dXr:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Lcom/tenpay/android/wechat/MyKeyboardWindow;->setInputEditText(Landroid/widget/EditText;)V

    .line 720
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/y;->fem:Lcom/tencent/mm/plugin/wallet/ui/x;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/ui/x;->feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/ui/y;->dXr:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 721
    return-void

    .line 714
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/y;->fem:Lcom/tencent/mm/plugin/wallet/ui/x;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/ui/x;->feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->h(Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;)Lcom/tenpay/android/wechat/MyKeyboardWindow;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tenpay/android/wechat/MyKeyboardWindow;->setXMode(I)V

    goto :goto_0
.end method
