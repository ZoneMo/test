.class final Lcom/tencent/mm/ui/account/in;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic gtu:Lcom/tencent/mm/ui/account/RegByQQAuthUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/RegByQQAuthUI;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/tencent/mm/ui/account/in;->gtu:Lcom/tencent/mm/ui/account/RegByQQAuthUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x1

    .line 98
    iget-object v0, p0, Lcom/tencent/mm/ui/account/in;->gtu:Lcom/tencent/mm/ui/account/RegByQQAuthUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/account/in;->gtu:Lcom/tencent/mm/ui/account/RegByQQAuthUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/account/RegByQQAuthUI;->a(Lcom/tencent/mm/ui/account/RegByQQAuthUI;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/account/RegByQQAuthUI;->a(Lcom/tencent/mm/ui/account/RegByQQAuthUI;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/tencent/mm/ui/account/in;->gtu:Lcom/tencent/mm/ui/account/RegByQQAuthUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/RegByQQAuthUI;->b(Lcom/tencent/mm/ui/account/RegByQQAuthUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/tencent/mm/ui/account/in;->gtu:Lcom/tencent/mm/ui/account/RegByQQAuthUI;

    sget v1, Lcom/tencent/mm/n;->bEc:I

    sget v2, Lcom/tencent/mm/n;->bdI:I

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/base/h;->c(Landroid/content/Context;II)Lcom/tencent/mm/ui/base/x;

    .line 114
    :goto_0
    return v9

    .line 105
    :cond_0
    new-instance v0, Lcom/tencent/mm/modelsimple/ad;

    const-string v1, ""

    iget-object v2, p0, Lcom/tencent/mm/ui/account/in;->gtu:Lcom/tencent/mm/ui/account/RegByQQAuthUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/account/RegByQQAuthUI;->c(Lcom/tencent/mm/ui/account/RegByQQAuthUI;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/account/in;->gtu:Lcom/tencent/mm/ui/account/RegByQQAuthUI;

    invoke-static {v3}, Lcom/tencent/mm/ui/account/RegByQQAuthUI;->b(Lcom/tencent/mm/ui/account/RegByQQAuthUI;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/account/in;->gtu:Lcom/tencent/mm/ui/account/RegByQQAuthUI;

    invoke-static {v4}, Lcom/tencent/mm/ui/account/RegByQQAuthUI;->d(Lcom/tencent/mm/ui/account/RegByQQAuthUI;)I

    move-result v4

    const-string v5, ""

    const-string v6, ""

    iget-object v7, p0, Lcom/tencent/mm/ui/account/in;->gtu:Lcom/tencent/mm/ui/account/RegByQQAuthUI;

    invoke-static {v7}, Lcom/tencent/mm/ui/account/RegByQQAuthUI;->e(Lcom/tencent/mm/ui/account/RegByQQAuthUI;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-direct/range {v0 .. v8}, Lcom/tencent/mm/modelsimple/ad;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 106
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 108
    iget-object v1, p0, Lcom/tencent/mm/ui/account/in;->gtu:Lcom/tencent/mm/ui/account/RegByQQAuthUI;

    iget-object v2, p0, Lcom/tencent/mm/ui/account/in;->gtu:Lcom/tencent/mm/ui/account/RegByQQAuthUI;

    iget-object v3, p0, Lcom/tencent/mm/ui/account/in;->gtu:Lcom/tencent/mm/ui/account/RegByQQAuthUI;

    sget v4, Lcom/tencent/mm/n;->ber:I

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/account/RegByQQAuthUI;->getString(I)Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/ui/account/in;->gtu:Lcom/tencent/mm/ui/account/RegByQQAuthUI;

    sget v4, Lcom/tencent/mm/n;->bvS:I

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/account/RegByQQAuthUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/tencent/mm/ui/account/io;

    invoke-direct {v4, p0, v0}, Lcom/tencent/mm/ui/account/io;-><init>(Lcom/tencent/mm/ui/account/in;Lcom/tencent/mm/modelsimple/ad;)V

    invoke-static {v2, v3, v9, v4}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/account/RegByQQAuthUI;->a(Lcom/tencent/mm/ui/account/RegByQQAuthUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_0
.end method
