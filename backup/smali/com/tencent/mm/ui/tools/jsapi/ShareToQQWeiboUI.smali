.class public Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;
.super Lcom/tencent/mm/ui/MMActivity;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/m;


# instance fields
.field private cIr:Landroid/app/ProgressDialog;

.field private dQC:Landroid/widget/EditText;

.field private hdw:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;->cIr:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;->cIr:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;->dQC:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected final FR()V
    .locals 7

    .prologue
    .line 55
    sget v0, Lcom/tencent/mm/n;->bzZ:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;->mn(I)V

    .line 59
    sget v0, Lcom/tencent/mm/i;->content:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;->dQC:Landroid/widget/EditText;

    .line 60
    sget v0, Lcom/tencent/mm/i;->aRF:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;->hdw:Landroid/widget/TextView;

    .line 62
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "shortUrl"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;->dQC:Landroid/widget/EditText;

    new-instance v3, Lcom/tencent/mm/ui/widget/c;

    iget-object v4, p0, Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;->dQC:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;->hdw:Landroid/widget/TextView;

    const/16 v6, 0x118

    invoke-direct {v3, v4, v5, v6}, Lcom/tencent/mm/ui/widget/c;-><init>(Landroid/widget/EditText;Landroid/widget/TextView;I)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;->dQC:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :goto_0
    new-instance v0, Lcom/tencent/mm/ui/tools/jsapi/aq;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/tools/jsapi/aq;-><init>(Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 85
    const/4 v0, 0x0

    sget v1, Lcom/tencent/mm/n;->ben:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/tools/jsapi/ar;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/tools/jsapi/ar;-><init>(Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;->a(ILjava/lang/String;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 106
    return-void

    .line 72
    :cond_0
    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;->dQC:Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 110
    const-string v0, "MicroMsg.ShareToQQWeiboUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSceneEnd: errType = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errMsg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    .line 134
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;->cIr:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;->cIr:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;->cIr:Landroid/app/ProgressDialog;

    .line 121
    :cond_1
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    .line 122
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;->SM()V

    .line 123
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;->setResult(I)V

    .line 124
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;->finish()V

    goto :goto_0

    .line 128
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "err_code"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;->setResult(ILandroid/content/Intent;)V

    .line 133
    sget v0, Lcom/tencent/mm/n;->bzY:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/tencent/mm/k;->aTx:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 44
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;->FR()V

    .line 45
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 49
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 50
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    .line 51
    return-void
.end method
