.class final Lcom/tencent/mm/ui/chatting/cc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gMs:Lcom/tencent/mm/ui/chatting/bv;

.field final synthetic gMt:Z


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/bv;)V
    .locals 1
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/cc;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/cc;->gMt:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 366
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/cc;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->i(Lcom/tencent/mm/ui/chatting/bv;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    .line 367
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/cc;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/bv;->i(Lcom/tencent/mm/ui/chatting/bv;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 368
    const-string v2, "MicroMsg.ChattingFooterEventImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "last visible/adapter="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/tencent/mm/ui/chatting/cc;->gMt:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/cc;->gMt:Z

    if-eqz v0, :cond_1

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/cc;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->o(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/ui/chatting/es;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/es;->getCount()I

    move-result v0

    .line 371
    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    .line 372
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/cc;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v2}, Lcom/tencent/mm/ui/chatting/bv;->o(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/ui/chatting/es;

    move-result-object v2

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ui/chatting/es;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/ak;

    .line 373
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 374
    add-int/lit8 v0, v1, -0x1

    .line 375
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/cc;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/bv;->i(Lcom/tencent/mm/ui/chatting/bv;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 381
    :cond_1
    :goto_0
    return-void

    .line 379
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/cc;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->i(Lcom/tencent/mm/ui/chatting/bv;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method
