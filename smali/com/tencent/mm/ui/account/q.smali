.class final Lcom/tencent/mm/ui/account/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic gpL:Lcom/tencent/mm/ui/account/EmailVerifyUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/EmailVerifyUI;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/tencent/mm/ui/account/q;->gpL:Lcom/tencent/mm/ui/account/EmailVerifyUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 177
    iget-object v0, p0, Lcom/tencent/mm/ui/account/q;->gpL:Lcom/tencent/mm/ui/account/EmailVerifyUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/account/q;->gpL:Lcom/tencent/mm/ui/account/EmailVerifyUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/account/EmailVerifyUI;->e(Lcom/tencent/mm/ui/account/EmailVerifyUI;)Lcom/tencent/mm/ui/base/MMAutoSwitchEditTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/ui/base/MMAutoSwitchEditTextView;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/account/EmailVerifyUI;->b(Lcom/tencent/mm/ui/account/EmailVerifyUI;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lcom/tencent/mm/ui/account/q;->gpL:Lcom/tencent/mm/ui/account/EmailVerifyUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/EmailVerifyUI;->f(Lcom/tencent/mm/ui/account/EmailVerifyUI;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/account/q;->gpL:Lcom/tencent/mm/ui/account/EmailVerifyUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/EmailVerifyUI;->f(Lcom/tencent/mm/ui/account/EmailVerifyUI;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/tencent/mm/ui/account/q;->gpL:Lcom/tencent/mm/ui/account/EmailVerifyUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/account/q;->gpL:Lcom/tencent/mm/ui/account/EmailVerifyUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/account/EmailVerifyUI;->f(Lcom/tencent/mm/ui/account/EmailVerifyUI;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/account/EmailVerifyUI;->a(Lcom/tencent/mm/ui/account/EmailVerifyUI;Ljava/lang/String;)V

    .line 184
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/account/q;->gpL:Lcom/tencent/mm/ui/account/EmailVerifyUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/account/EmailVerifyUI;->dg(Z)V

    goto :goto_0
.end method
