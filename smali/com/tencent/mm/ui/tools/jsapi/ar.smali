.class final Lcom/tencent/mm/ui/tools/jsapi/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic hpL:Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/jsapi/ar;->hpL:Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 89
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/ar;->hpL:Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 90
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/ar;->hpL:Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "shortUrl"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/ar;->hpL:Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;->a(Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 93
    new-instance v3, Lcom/tencent/mm/modelsimple/ak;

    invoke-direct {v3, v0, v1, v2}, Lcom/tencent/mm/modelsimple/ak;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 96
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/ar;->hpL:Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/ar;->hpL:Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;->aal()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/ar;->hpL:Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;

    sget v4, Lcom/tencent/mm/n;->ber:I

    invoke-virtual {v2, v4}, Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;->getString(I)Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/ar;->hpL:Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;

    sget v4, Lcom/tencent/mm/n;->bqt:I

    invoke-virtual {v2, v4}, Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/tencent/mm/ui/tools/jsapi/as;

    invoke-direct {v4, p0, v3}, Lcom/tencent/mm/ui/tools/jsapi/as;-><init>(Lcom/tencent/mm/ui/tools/jsapi/ar;Lcom/tencent/mm/modelsimple/ak;)V

    invoke-static {v1, v2, v5, v4}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;->a(Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 103
    return v5
.end method
