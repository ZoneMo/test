.class final Lcom/tencent/mm/plugin/wallet/ui/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

.field final synthetic fej:Z

.field final synthetic fek:I

.field final synthetic fel:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;ZILandroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 695
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/ui/x;->feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

    iput-boolean p2, p0, Lcom/tencent/mm/plugin/wallet/ui/x;->fej:Z

    iput p3, p0, Lcom/tencent/mm/plugin/wallet/ui/x;->fek:I

    iput-object p4, p0, Lcom/tencent/mm/plugin/wallet/ui/x;->fel:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 699
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/ui/x;->fej:Z

    if-nez v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/x;->feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 701
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/tencent/mm/plugin/wallet/ui/y;

    invoke-direct {v1, p0, p1}, Lcom/tencent/mm/plugin/wallet/ui/y;-><init>(Lcom/tencent/mm/plugin/wallet/ui/x;Landroid/view/View;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 736
    :goto_0
    return-void

    .line 725
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/tencent/mm/plugin/wallet/ui/z;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/ui/z;-><init>(Lcom/tencent/mm/plugin/wallet/ui/x;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
