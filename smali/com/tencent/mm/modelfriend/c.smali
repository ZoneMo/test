.class final Lcom/tencent/mm/modelfriend/c;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private cpY:I

.field private cpZ:Ljava/util/List;

.field final synthetic cqa:Lcom/tencent/mm/modelfriend/AddrBookObserver;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelfriend/AddrBookObserver;)V
    .locals 1
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/tencent/mm/modelfriend/c;->cqa:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/modelfriend/c;->cpY:I

    return-void
.end method

.method private static a(Ljava/util/List;II)Ljava/util/List;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 258
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 259
    :goto_0
    if-ge p1, p2, :cond_0

    .line 260
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 262
    :cond_0
    return-object v0
.end method

.method private yI()V
    .locals 7

    .prologue
    .line 237
    new-instance v1, Lcom/tencent/mm/sdk/platformtools/ch;

    const-string v0, "MicroMsg.AddrBookObserver"

    const-string v2, "delete"

    invoke-direct {v1, v0, v2}, Lcom/tencent/mm/sdk/platformtools/ch;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 239
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/c;->cqa:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->c(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/c;->aR(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 240
    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->Al()Lcom/tencent/mm/modelfriend/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/i;->zb()Ljava/util/List;

    move-result-object v0

    .line 241
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 242
    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-static {v5}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 243
    const/4 v6, 0x1

    aget-object v0, v0, v6

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 246
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 249
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 250
    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->Al()Lcom/tencent/mm/modelfriend/i;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/modelfriend/i;->j(Ljava/util/List;)Z

    .line 251
    invoke-static {v2}, Lcom/tencent/mm/modelfriend/z;->m(Ljava/util/List;)V

    .line 253
    :cond_2
    const-string v0, "end"

    invoke-virtual {v1, v0}, Lcom/tencent/mm/sdk/platformtools/ch;->addSplit(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v1}, Lcom/tencent/mm/sdk/platformtools/ch;->dumpToLog()V

    .line 255
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter

    .prologue
    const-wide/16 v5, 0xfa

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 155
    invoke-static {}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->yE()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    invoke-static {}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->yF()Z

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_3

    .line 161
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/c;->cqa:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->a(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/c;->cqa:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->a(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    :cond_2
    invoke-virtual {p0, v3}, Lcom/tencent/mm/modelfriend/c;->sendEmptyMessage(I)Z

    .line 163
    :cond_3
    :goto_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_0

    .line 164
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/c;->cqa:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->b(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/c;->cqa:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->b(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    :cond_4
    invoke-static {}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->yG()Z

    invoke-static {}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->yC()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "MicroMsg.AddrBookObserver"

    const-string v1, "list null stop service"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/c;->cqa:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->c(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->yC()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/c;->cqa:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->d(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Lcom/tencent/mm/modelfriend/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/c;->cqa:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->d(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Lcom/tencent/mm/modelfriend/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/modelfriend/d;->yH()V

    goto :goto_0

    .line 161
    :cond_6
    const-string v0, "MicroMsg.AddrBookObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sync email index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/mm/modelfriend/c;->cpY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/mm/modelfriend/c;->cpY:I

    iget-object v1, p0, Lcom/tencent/mm/modelfriend/c;->cqa:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v1}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->a(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    iget v0, p0, Lcom/tencent/mm/modelfriend/c;->cpY:I

    add-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Lcom/tencent/mm/modelfriend/c;->cqa:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v1}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->a(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/c;->cqa:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->a(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelfriend/c;->cpY:I

    iget v2, p0, Lcom/tencent/mm/modelfriend/c;->cpY:I

    add-int/lit8 v2, v2, 0x64

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/modelfriend/c;->a(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/c;->cpZ:Ljava/util/List;

    :goto_2
    const-string v0, "MicroMsg.AddrBookObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sync email listToSync size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/modelfriend/c;->cpZ:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/c;->cpZ:Ljava/util/List;

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/z;->n(Ljava/util/List;)V

    iget v0, p0, Lcom/tencent/mm/modelfriend/c;->cpY:I

    add-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/tencent/mm/modelfriend/c;->cpY:I

    invoke-virtual {p0, v4, v5, v6}, Lcom/tencent/mm/modelfriend/c;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/c;->cqa:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->a(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelfriend/c;->cpY:I

    iget-object v2, p0, Lcom/tencent/mm/modelfriend/c;->cqa:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v2}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->a(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/modelfriend/c;->a(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/c;->cpZ:Ljava/util/List;

    goto :goto_2

    :cond_8
    invoke-virtual {p0, v3}, Lcom/tencent/mm/modelfriend/c;->sendEmptyMessage(I)Z

    iput v4, p0, Lcom/tencent/mm/modelfriend/c;->cpY:I

    goto/16 :goto_1

    .line 164
    :cond_9
    const-string v0, "MicroMsg.AddrBookObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sync mobile index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/mm/modelfriend/c;->cpY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/mm/modelfriend/c;->cpY:I

    iget-object v1, p0, Lcom/tencent/mm/modelfriend/c;->cqa:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v1}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->b(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_b

    iget v0, p0, Lcom/tencent/mm/modelfriend/c;->cpY:I

    add-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Lcom/tencent/mm/modelfriend/c;->cqa:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v1}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->b(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/c;->cqa:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->b(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelfriend/c;->cpY:I

    iget v2, p0, Lcom/tencent/mm/modelfriend/c;->cpY:I

    add-int/lit8 v2, v2, 0x64

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/modelfriend/c;->a(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/c;->cpZ:Ljava/util/List;

    :goto_3
    const-string v0, "MicroMsg.AddrBookObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sync mobile listToSync size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/modelfriend/c;->cpZ:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/c;->cpZ:Ljava/util/List;

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/z;->n(Ljava/util/List;)V

    iget v0, p0, Lcom/tencent/mm/modelfriend/c;->cpY:I

    add-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/tencent/mm/modelfriend/c;->cpY:I

    invoke-virtual {p0, v3, v5, v6}, Lcom/tencent/mm/modelfriend/c;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/c;->cqa:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->b(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelfriend/c;->cpY:I

    iget-object v2, p0, Lcom/tencent/mm/modelfriend/c;->cqa:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v2}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->b(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/modelfriend/c;->a(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/c;->cpZ:Ljava/util/List;

    goto :goto_3

    :cond_b
    invoke-static {}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->yG()Z

    invoke-static {}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->yC()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v0, "MicroMsg.AddrBookObserver"

    const-string v1, "sync ok, stop service"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/c;->cqa:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->c(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->yC()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_c
    invoke-direct {p0}, Lcom/tencent/mm/modelfriend/c;->yI()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {}, Lcom/tencent/mm/modelfriend/z;->zu()V

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/c;->cqa:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->d(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Lcom/tencent/mm/modelfriend/d;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/c;->cqa:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->e(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Lcom/tencent/mm/sdk/platformtools/ch;

    move-result-object v0

    const-string v1, "sync ok"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/ch;->addSplit(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/c;->cqa:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->e(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Lcom/tencent/mm/sdk/platformtools/ch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/ch;->dumpToLog()V

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/c;->cqa:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->d(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Lcom/tencent/mm/modelfriend/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/modelfriend/d;->yH()V

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/c;->cqa:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->e(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Lcom/tencent/mm/sdk/platformtools/ch;

    move-result-object v0

    const-string v1, "sync ok"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/ch;->addSplit(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/c;->cqa:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->e(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Lcom/tencent/mm/sdk/platformtools/ch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/ch;->dumpToLog()V

    iput v4, p0, Lcom/tencent/mm/modelfriend/c;->cpY:I

    goto/16 :goto_0
.end method
