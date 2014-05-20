.class final Lcom/tencent/mm/ui/bindqq/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic gJH:Lcom/tencent/mm/ui/bindqq/z;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bindqq/z;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/tencent/mm/ui/bindqq/aa;->gJH:Lcom/tencent/mm/ui/bindqq/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 102
    iget-object v0, p0, Lcom/tencent/mm/ui/bindqq/aa;->gJH:Lcom/tencent/mm/ui/bindqq/z;

    iget-object v0, v0, Lcom/tencent/mm/ui/bindqq/z;->gJG:Lcom/tencent/mm/ui/bindqq/StartUnbindQQ;

    invoke-static {v0}, Lcom/tencent/mm/ui/bindqq/StartUnbindQQ;->c(Lcom/tencent/mm/ui/bindqq/StartUnbindQQ;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/tencent/mm/ui/bindqq/aa;->gJH:Lcom/tencent/mm/ui/bindqq/z;

    iget-object v1, v1, Lcom/tencent/mm/ui/bindqq/z;->gJG:Lcom/tencent/mm/ui/bindqq/StartUnbindQQ;

    invoke-static {v1}, Lcom/tencent/mm/ui/bindqq/StartUnbindQQ;->c(Lcom/tencent/mm/ui/bindqq/StartUnbindQQ;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v1, p0, Lcom/tencent/mm/ui/bindqq/aa;->gJH:Lcom/tencent/mm/ui/bindqq/z;

    iget-object v1, v1, Lcom/tencent/mm/ui/bindqq/z;->gJG:Lcom/tencent/mm/ui/bindqq/StartUnbindQQ;

    invoke-static {v1}, Lcom/tencent/mm/ui/bindqq/StartUnbindQQ;->c(Lcom/tencent/mm/ui/bindqq/StartUnbindQQ;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 105
    iget-object v1, p0, Lcom/tencent/mm/ui/bindqq/aa;->gJH:Lcom/tencent/mm/ui/bindqq/z;

    iget-object v1, v1, Lcom/tencent/mm/ui/bindqq/z;->gJG:Lcom/tencent/mm/ui/bindqq/StartUnbindQQ;

    iget-object v2, p0, Lcom/tencent/mm/ui/bindqq/aa;->gJH:Lcom/tencent/mm/ui/bindqq/z;

    iget-object v2, v2, Lcom/tencent/mm/ui/bindqq/z;->gJG:Lcom/tencent/mm/ui/bindqq/StartUnbindQQ;

    invoke-static {v2}, Lcom/tencent/mm/ui/bindqq/StartUnbindQQ;->c(Lcom/tencent/mm/ui/bindqq/StartUnbindQQ;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/bindqq/StartUnbindQQ;->af(Landroid/view/View;)V

    .line 106
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/bindqq/aa;->gJH:Lcom/tencent/mm/ui/bindqq/z;

    iget-object v0, v0, Lcom/tencent/mm/ui/bindqq/z;->gJG:Lcom/tencent/mm/ui/bindqq/StartUnbindQQ;

    sget v1, Lcom/tencent/mm/n;->bEf:I

    sget v2, Lcom/tencent/mm/n;->ber:I

    invoke-static {v0, v1, v2, v4}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    .line 116
    :goto_0
    return-void

    .line 110
    :cond_1
    new-instance v1, Lcom/tencent/mm/modelsimple/aq;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Lcom/tencent/mm/modelsimple/aq;-><init>(ILjava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 112
    iget-object v0, p0, Lcom/tencent/mm/ui/bindqq/aa;->gJH:Lcom/tencent/mm/ui/bindqq/z;

    iget-object v0, v0, Lcom/tencent/mm/ui/bindqq/z;->gJG:Lcom/tencent/mm/ui/bindqq/StartUnbindQQ;

    iget-object v1, p0, Lcom/tencent/mm/ui/bindqq/aa;->gJH:Lcom/tencent/mm/ui/bindqq/z;

    iget-object v1, v1, Lcom/tencent/mm/ui/bindqq/z;->gJG:Lcom/tencent/mm/ui/bindqq/StartUnbindQQ;

    iget-object v2, p0, Lcom/tencent/mm/ui/bindqq/aa;->gJH:Lcom/tencent/mm/ui/bindqq/z;

    iget-object v2, v2, Lcom/tencent/mm/ui/bindqq/z;->gJG:Lcom/tencent/mm/ui/bindqq/StartUnbindQQ;

    sget v3, Lcom/tencent/mm/n;->ber:I

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/bindqq/StartUnbindQQ;->getString(I)Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/bindqq/aa;->gJH:Lcom/tencent/mm/ui/bindqq/z;

    iget-object v2, v2, Lcom/tencent/mm/ui/bindqq/z;->gJG:Lcom/tencent/mm/ui/bindqq/StartUnbindQQ;

    sget v3, Lcom/tencent/mm/n;->bym:I

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/bindqq/StartUnbindQQ;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/bindqq/StartUnbindQQ;->a(Lcom/tencent/mm/ui/bindqq/StartUnbindQQ;Lcom/tencent/mm/ui/base/ch;)Lcom/tencent/mm/ui/base/ch;

    goto :goto_0
.end method
