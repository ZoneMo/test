.class final Lcom/tencent/mm/ui/account/lb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/a/a/g;


# instance fields
.field final synthetic guy:Lcom/tencent/mm/ui/account/la;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/la;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/tencent/mm/ui/account/lb;->guy:Lcom/tencent/mm/ui/account/la;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/a/a/d;)V
    .locals 2
    .parameter

    .prologue
    .line 103
    const-string v0, "MicroMsg.ShowNonWeixinFriendUI"

    const-string v1, "fbinvite error"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/a/a/h;)V
    .locals 2
    .parameter

    .prologue
    .line 97
    const-string v0, "MicroMsg.ShowNonWeixinFriendUI"

    const-string v1, "fbinvite error"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public final e(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 109
    const-string v0, "MicroMsg.ShowNonWeixinFriendUI"

    const-string v1, "fbinvite oncomplete"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/tencent/mm/ui/account/lb;->guy:Lcom/tencent/mm/ui/account/la;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/la;->gux:Lcom/tencent/mm/ui/account/ShowNonWeixinFriendUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/account/ShowNonWeixinFriendUI;->aal()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/tencent/mm/n;->bkt:I

    sget v2, Lcom/tencent/mm/n;->ber:I

    new-instance v3, Lcom/tencent/mm/ui/account/lc;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/account/lc;-><init>(Lcom/tencent/mm/ui/account/lb;)V

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    .line 117
    return-void
.end method

.method public final onCancel()V
    .locals 2

    .prologue
    .line 122
    const-string v0, "MicroMsg.ShowNonWeixinFriendUI"

    const-string v1, "fbinvite cancle"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method
