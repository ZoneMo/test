.class final Lcom/tencent/mm/ui/chatting/lf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/cd;


# instance fields
.field final synthetic cGV:Landroid/content/Context;

.field final synthetic ctu:Lcom/tencent/mm/storage/ak;


# direct methods
.method constructor <init>(Lcom/tencent/mm/storage/ak;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/lf;->ctu:Lcom/tencent/mm/storage/ak;

    iput-object p2, p0, Lcom/tencent/mm/ui/chatting/lf;->cGV:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/MenuItem;I)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/lf;->ctu:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/ai/v;->hh(Ljava/lang/String;)Lcom/tencent/mm/ai/q;

    move-result-object v1

    .line 255
    const-string v2, "MicroMsg.LongClickBrandServiceHelper"

    const-string v3, "connector click[video]: to[%s] imgPath[%s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v6

    iget-object v5, p0, Lcom/tencent/mm/ui/chatting/lf;->ctu:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v5}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    new-instance v2, Lcom/tencent/mm/ui/transmit/l;

    invoke-direct {v2}, Lcom/tencent/mm/ui/transmit/l;-><init>()V

    .line 257
    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/lf;->cGV:Landroid/content/Context;

    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/lf;->cGV:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0709bb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/lf;->cGV:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0709be

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/tencent/mm/ui/chatting/lg;

    invoke-direct {v5, p0, v2}, Lcom/tencent/mm/ui/chatting/lg;-><init>(Lcom/tencent/mm/ui/chatting/lf;Lcom/tencent/mm/ui/transmit/l;)V

    invoke-static {v3, v4, v7, v5}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v3

    .line 264
    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/lf;->cGV:Landroid/content/Context;

    iput-object v4, v2, Lcom/tencent/mm/ui/transmit/l;->context:Landroid/content/Context;

    .line 265
    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/lf;->ctu:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v4}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/tencent/mm/ui/transmit/l;->rD:Ljava/lang/String;

    .line 266
    iput-object v3, v2, Lcom/tencent/mm/ui/transmit/l;->dID:Landroid/app/Dialog;

    .line 267
    iput-object v0, v2, Lcom/tencent/mm/ui/transmit/l;->bPx:Ljava/lang/String;

    .line 268
    invoke-virtual {v1}, Lcom/tencent/mm/ai/q;->DQ()I

    move-result v0

    iput v0, v2, Lcom/tencent/mm/ui/transmit/l;->hrl:I

    .line 269
    invoke-virtual {v1}, Lcom/tencent/mm/ai/q;->DO()I

    move-result v0

    iput v0, v2, Lcom/tencent/mm/ui/transmit/l;->cAX:I

    .line 270
    new-array v0, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ui/transmit/l;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 271
    invoke-static {}, Lcom/tencent/mm/model/ct;->vB()Lcom/tencent/mm/model/ct;

    move-result-object v0

    sget v1, Lcom/tencent/mm/model/ct;->cjR:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/model/ct;->a(I[Ljava/lang/Object;)V

    .line 272
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/lf;->cGV:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/lf;->cGV:Landroid/content/Context;

    const v2, 0x7f0709d8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/base/h;->an(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 273
    return-void
.end method
