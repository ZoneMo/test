.class final Lcom/tencent/mm/ui/transmit/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic hmi:Lcom/tencent/mm/ui/base/ch;

.field final synthetic hrJ:Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;

.field final synthetic hrK:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;Ljava/util/ArrayList;Lcom/tencent/mm/ui/base/ch;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lcom/tencent/mm/ui/transmit/r;->hrJ:Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;

    iput-object p2, p0, Lcom/tencent/mm/ui/transmit/r;->hrK:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/tencent/mm/ui/transmit/r;->hmi:Lcom/tencent/mm/ui/base/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 419
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v2

    .line 420
    const/4 v7, 0x0

    .line 422
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/r;->hrK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v0, v5

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 423
    const-string v1, "MicroMsg.MulSelectConversationUI"

    const-string v4, "toSend, %s"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v3, v6, v5

    invoke-static {v1, v4, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 424
    invoke-static {v3}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v9

    :goto_1
    add-int v8, v0, v1

    .line 425
    new-instance v0, Lcom/tencent/mm/w/y;

    const/4 v1, 0x5

    iget-object v4, p0, Lcom/tencent/mm/ui/transmit/r;->hrJ:Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;

    invoke-static {v4}, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->a(Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;)Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    invoke-direct/range {v0 .. v7}, Lcom/tencent/mm/w/y;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 428
    invoke-virtual {v0}, Lcom/tencent/mm/w/y;->AW()Lcom/tencent/mm/storage/ak;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 429
    invoke-virtual {v0}, Lcom/tencent/mm/w/y;->AW()Lcom/tencent/mm/storage/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v7

    :cond_0
    move v0, v8

    .line 431
    goto :goto_0

    :cond_1
    move v1, v5

    .line 424
    goto :goto_1

    .line 432
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/ui/transmit/r;->hmi:Lcom/tencent/mm/ui/base/ch;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/base/ch;->dismiss()V

    .line 433
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 434
    const-string v2, "Select_Contact"

    iget-object v3, p0, Lcom/tencent/mm/ui/transmit/r;->hrK:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 435
    iget-object v2, p0, Lcom/tencent/mm/ui/transmit/r;->hrJ:Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->setResult(ILandroid/content/Intent;)V

    .line 436
    sget-object v1, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v2, 0x2b28

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/tencent/mm/ui/transmit/r;->hrK:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    const/4 v4, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    .line 437
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/r;->hrJ:Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->finish()V

    .line 438
    return-void
.end method
