.class final Lcom/tencent/mm/plugin/wallet/ui/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic fem:Lcom/tencent/mm/plugin/wallet/ui/x;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/wallet/ui/x;)V
    .locals 0
    .parameter

    .prologue
    .line 725
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/ui/z;->fem:Lcom/tencent/mm/plugin/wallet/ui/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 729
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/z;->fem:Lcom/tencent/mm/plugin/wallet/ui/x;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/ui/x;->feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->h(Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;)Lcom/tenpay/android/wechat/MyKeyboardWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tenpay/android/wechat/MyKeyboardWindow;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/z;->fem:Lcom/tencent/mm/plugin/wallet/ui/x;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/ui/x;->feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->h(Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;)Lcom/tenpay/android/wechat/MyKeyboardWindow;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tenpay/android/wechat/MyKeyboardWindow;->setVisibility(I)V

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/z;->fem:Lcom/tencent/mm/plugin/wallet/ui/x;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/ui/x;->feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/ui/z;->fem:Lcom/tencent/mm/plugin/wallet/ui/x;

    iget-object v1, v1, Lcom/tencent/mm/plugin/wallet/ui/x;->fel:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 733
    return-void
.end method
