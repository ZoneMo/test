.class final Lcom/tencent/mm/ui/account/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic gpM:Lcom/tencent/mm/ui/account/l;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/l;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/tencent/mm/ui/account/m;->gpM:Lcom/tencent/mm/ui/account/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 133
    new-instance v0, Lcom/tencent/mm/modelfriend/aj;

    iget-object v1, p0, Lcom/tencent/mm/ui/account/m;->gpM:Lcom/tencent/mm/ui/account/l;

    iget-object v1, v1, Lcom/tencent/mm/ui/account/l;->gpL:Lcom/tencent/mm/ui/account/EmailVerifyUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/account/EmailVerifyUI;->a(Lcom/tencent/mm/ui/account/EmailVerifyUI;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/account/m;->gpM:Lcom/tencent/mm/ui/account/l;

    iget-object v2, v2, Lcom/tencent/mm/ui/account/l;->gpL:Lcom/tencent/mm/ui/account/EmailVerifyUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/account/EmailVerifyUI;->b(Lcom/tencent/mm/ui/account/EmailVerifyUI;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/modelfriend/aj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 137
    iget-object v1, p0, Lcom/tencent/mm/ui/account/m;->gpM:Lcom/tencent/mm/ui/account/l;

    iget-object v1, v1, Lcom/tencent/mm/ui/account/l;->gpL:Lcom/tencent/mm/ui/account/EmailVerifyUI;

    iget-object v2, p0, Lcom/tencent/mm/ui/account/m;->gpM:Lcom/tencent/mm/ui/account/l;

    iget-object v2, v2, Lcom/tencent/mm/ui/account/l;->gpL:Lcom/tencent/mm/ui/account/EmailVerifyUI;

    iget-object v3, p0, Lcom/tencent/mm/ui/account/m;->gpM:Lcom/tencent/mm/ui/account/l;

    iget-object v3, v3, Lcom/tencent/mm/ui/account/l;->gpL:Lcom/tencent/mm/ui/account/EmailVerifyUI;

    sget v4, Lcom/tencent/mm/n;->ber:I

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/account/EmailVerifyUI;->getString(I)Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/ui/account/m;->gpM:Lcom/tencent/mm/ui/account/l;

    iget-object v3, v3, Lcom/tencent/mm/ui/account/l;->gpL:Lcom/tencent/mm/ui/account/EmailVerifyUI;

    sget v4, Lcom/tencent/mm/n;->bvo:I

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/account/EmailVerifyUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Lcom/tencent/mm/ui/account/n;

    invoke-direct {v5, p0, v0}, Lcom/tencent/mm/ui/account/n;-><init>(Lcom/tencent/mm/ui/account/m;Lcom/tencent/mm/modelfriend/aj;)V

    invoke-static {v2, v3, v4, v5}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/account/EmailVerifyUI;->a(Lcom/tencent/mm/ui/account/EmailVerifyUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 144
    return-void
.end method
