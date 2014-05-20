.class public Lcom/tencent/mm/ui/account/RegByMobileSetPwdUI;
.super Lcom/tencent/mm/ui/account/SetPwdUI;
.source "SourceFile"


# instance fields
.field private frK:Ljava/lang/String;

.field private gsX:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/tencent/mm/ui/account/SetPwdUI;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegByMobileSetPwdUI;->frK:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final FR()V
    .locals 2

    .prologue
    .line 36
    sget v0, Lcom/tencent/mm/n;->bvH:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/RegByMobileSetPwdUI;->mn(I)V

    .line 37
    sget v0, Lcom/tencent/mm/i;->aHf:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/RegByMobileSetPwdUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegByMobileSetPwdUI;->gsX:Landroid/widget/TextView;

    .line 38
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegByMobileSetPwdUI;->frK:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegByMobileSetPwdUI;->frK:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegByMobileSetPwdUI;->gsX:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/ui/account/RegByMobileSetPwdUI;->frK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    :cond_0
    return-void
.end method

.method protected final a(Lcom/tencent/mm/ui/account/ky;)V
    .locals 2
    .parameter

    .prologue
    .line 55
    sget-object v0, Lcom/tencent/mm/ui/account/hy;->gst:[I

    invoke-virtual {p1}, Lcom/tencent/mm/ui/account/ky;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 69
    :goto_0
    return-void

    .line 57
    :pswitch_0
    sget v0, Lcom/tencent/mm/n;->bvE:I

    sget v1, Lcom/tencent/mm/n;->bvG:I

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/ui/base/h;->c(Landroid/content/Context;II)Lcom/tencent/mm/ui/base/x;

    goto :goto_0

    .line 60
    :pswitch_1
    sget v0, Lcom/tencent/mm/n;->bvF:I

    sget v1, Lcom/tencent/mm/n;->bvG:I

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/ui/base/h;->c(Landroid/content/Context;II)Lcom/tencent/mm/ui/base/x;

    goto :goto_0

    .line 63
    :pswitch_2
    sget v0, Lcom/tencent/mm/n;->bEe:I

    sget v1, Lcom/tencent/mm/n;->bdI:I

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/ui/base/h;->c(Landroid/content/Context;II)Lcom/tencent/mm/ui/base/x;

    goto :goto_0

    .line 66
    :pswitch_3
    sget v0, Lcom/tencent/mm/n;->bEg:I

    sget v1, Lcom/tencent/mm/n;->bdI:I

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/ui/base/h;->c(Landroid/content/Context;II)Lcom/tencent/mm/ui/base/x;

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected final aFW()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/tencent/mm/i;->aHj:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/RegByMobileSetPwdUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final aFX()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget v0, Lcom/tencent/mm/i;->aHi:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/RegByMobileSetPwdUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final bf(II)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 73
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/RegByMobileSetPwdUI;->finish()V

    .line 75
    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mm/ui/account/RegByMobileSetPwdUI;->as(II)Z

    move-result v0

    goto :goto_0
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 31
    sget v0, Lcom/tencent/mm/k;->aYF:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/account/SetPwdUI;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/RegByMobileSetPwdUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "kintent_hint"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegByMobileSetPwdUI;->frK:Ljava/lang/String;

    .line 21
    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/RegByMobileSetPwdUI;->FR()V

    .line 22
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0}, Lcom/tencent/mm/ui/account/SetPwdUI;->onDestroy()V

    .line 27
    return-void
.end method
