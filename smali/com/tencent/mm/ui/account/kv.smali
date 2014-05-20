.class final Lcom/tencent/mm/ui/account/kv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic guo:Lcom/tencent/mm/ui/account/SetPwdUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/SetPwdUI;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/tencent/mm/ui/account/kv;->guo:Lcom/tencent/mm/ui/account/SetPwdUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 85
    iget-object v0, p0, Lcom/tencent/mm/ui/account/kv;->guo:Lcom/tencent/mm/ui/account/SetPwdUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/account/kv;->guo:Lcom/tencent/mm/ui/account/SetPwdUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/account/SetPwdUI;->aFW()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/account/SetPwdUI;->a(Lcom/tencent/mm/ui/account/SetPwdUI;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/tencent/mm/ui/account/kv;->guo:Lcom/tencent/mm/ui/account/SetPwdUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/account/kv;->guo:Lcom/tencent/mm/ui/account/SetPwdUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/account/SetPwdUI;->aFX()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/account/SetPwdUI;->b(Lcom/tencent/mm/ui/account/SetPwdUI;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/tencent/mm/ui/account/kv;->guo:Lcom/tencent/mm/ui/account/SetPwdUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/SetPwdUI;->a(Lcom/tencent/mm/ui/account/SetPwdUI;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    :goto_0
    return v6

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/account/kv;->guo:Lcom/tencent/mm/ui/account/SetPwdUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/SetPwdUI;->a(Lcom/tencent/mm/ui/account/SetPwdUI;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/account/kv;->guo:Lcom/tencent/mm/ui/account/SetPwdUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/account/SetPwdUI;->b(Lcom/tencent/mm/ui/account/SetPwdUI;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/tencent/mm/ui/account/kv;->guo:Lcom/tencent/mm/ui/account/SetPwdUI;

    sget-object v1, Lcom/tencent/mm/ui/account/ky;->guq:Lcom/tencent/mm/ui/account/ky;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/account/SetPwdUI;->a(Lcom/tencent/mm/ui/account/ky;)V

    goto :goto_0

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/account/kv;->guo:Lcom/tencent/mm/ui/account/SetPwdUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/SetPwdUI;->a(Lcom/tencent/mm/ui/account/SetPwdUI;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_2

    .line 98
    iget-object v0, p0, Lcom/tencent/mm/ui/account/kv;->guo:Lcom/tencent/mm/ui/account/SetPwdUI;

    sget-object v1, Lcom/tencent/mm/ui/account/ky;->gur:Lcom/tencent/mm/ui/account/ky;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/account/SetPwdUI;->a(Lcom/tencent/mm/ui/account/ky;)V

    goto :goto_0

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/account/kv;->guo:Lcom/tencent/mm/ui/account/SetPwdUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/SetPwdUI;->a(Lcom/tencent/mm/ui/account/SetPwdUI;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->ic(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    iget-object v0, p0, Lcom/tencent/mm/ui/account/kv;->guo:Lcom/tencent/mm/ui/account/SetPwdUI;

    sget v1, Lcom/tencent/mm/n;->bvu:I

    sget v2, Lcom/tencent/mm/n;->bvG:I

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/base/h;->c(Landroid/content/Context;II)Lcom/tencent/mm/ui/base/x;

    goto :goto_0

    .line 106
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/account/kv;->guo:Lcom/tencent/mm/ui/account/SetPwdUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/SetPwdUI;->a(Lcom/tencent/mm/ui/account/SetPwdUI;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hV(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 107
    iget-object v0, p0, Lcom/tencent/mm/ui/account/kv;->guo:Lcom/tencent/mm/ui/account/SetPwdUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/SetPwdUI;->a(Lcom/tencent/mm/ui/account/SetPwdUI;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/account/kv;->guo:Lcom/tencent/mm/ui/account/SetPwdUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/SetPwdUI;->a(Lcom/tencent/mm/ui/account/SetPwdUI;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_4

    .line 108
    iget-object v0, p0, Lcom/tencent/mm/ui/account/kv;->guo:Lcom/tencent/mm/ui/account/SetPwdUI;

    sget-object v1, Lcom/tencent/mm/ui/account/ky;->gut:Lcom/tencent/mm/ui/account/ky;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/account/SetPwdUI;->a(Lcom/tencent/mm/ui/account/ky;)V

    goto :goto_0

    .line 110
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/account/kv;->guo:Lcom/tencent/mm/ui/account/SetPwdUI;

    sget-object v1, Lcom/tencent/mm/ui/account/ky;->gus:Lcom/tencent/mm/ui/account/ky;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/account/SetPwdUI;->a(Lcom/tencent/mm/ui/account/ky;)V

    goto :goto_0

    .line 115
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/account/kv;->guo:Lcom/tencent/mm/ui/account/SetPwdUI;

    iget-object v0, p0, Lcom/tencent/mm/ui/account/kv;->guo:Lcom/tencent/mm/ui/account/SetPwdUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/SetPwdUI;->a(Lcom/tencent/mm/ui/account/SetPwdUI;)Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/ui/account/kv;->guo:Lcom/tencent/mm/ui/account/SetPwdUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/SetPwdUI;->b(Lcom/tencent/mm/ui/account/SetPwdUI;)Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/ui/account/SetPwdUI;->aGk()Z

    .line 116
    iget-object v0, p0, Lcom/tencent/mm/ui/account/kv;->guo:Lcom/tencent/mm/ui/account/SetPwdUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/account/SetPwdUI;->SM()V

    .line 121
    iget-object v0, p0, Lcom/tencent/mm/ui/account/kv;->guo:Lcom/tencent/mm/ui/account/SetPwdUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/account/kv;->guo:Lcom/tencent/mm/ui/account/SetPwdUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/account/SetPwdUI;->a(Lcom/tencent/mm/ui/account/SetPwdUI;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/account/kv;->guo:Lcom/tencent/mm/ui/account/SetPwdUI;

    iget-object v2, v2, Lcom/tencent/mm/ui/account/SetPwdUI;->cgp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/account/SetPwdUI;->aZ(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/n/x;

    move-result-object v0

    .line 122
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 123
    iget-object v1, p0, Lcom/tencent/mm/ui/account/kv;->guo:Lcom/tencent/mm/ui/account/SetPwdUI;

    iget-object v2, p0, Lcom/tencent/mm/ui/account/kv;->guo:Lcom/tencent/mm/ui/account/SetPwdUI;

    iget-object v3, p0, Lcom/tencent/mm/ui/account/kv;->guo:Lcom/tencent/mm/ui/account/SetPwdUI;

    iget-object v4, p0, Lcom/tencent/mm/ui/account/kv;->guo:Lcom/tencent/mm/ui/account/SetPwdUI;

    sget v5, Lcom/tencent/mm/n;->ber:I

    invoke-virtual {v4, v5}, Lcom/tencent/mm/ui/account/SetPwdUI;->getString(I)Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/mm/ui/account/kv;->guo:Lcom/tencent/mm/ui/account/SetPwdUI;

    sget v5, Lcom/tencent/mm/n;->buU:I

    invoke-virtual {v4, v5}, Lcom/tencent/mm/ui/account/SetPwdUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/tencent/mm/ui/account/kw;

    invoke-direct {v5, p0, v0}, Lcom/tencent/mm/ui/account/kw;-><init>(Lcom/tencent/mm/ui/account/kv;Lcom/tencent/mm/n/x;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/tencent/mm/ui/account/SetPwdUI;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/account/SetPwdUI;->a(Lcom/tencent/mm/ui/account/SetPwdUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto/16 :goto_0
.end method
