.class final Lcom/tencent/mm/ui/chatting/ik;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic gQa:J

.field final synthetic gQb:Lcom/tencent/mm/ui/chatting/ij;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ij;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 586
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ik;->gQb:Lcom/tencent/mm/ui/chatting/ij;

    iput-wide p2, p0, Lcom/tencent/mm/ui/chatting/ik;->gQa:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 591
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/be;->nQ()Lcom/tencent/mm/model/ap;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/mm/model/ap;->oL()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/mm/ui/chatting/ik;->gQa:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mm/storage/ap;->i(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/be;->nQ()Lcom/tencent/mm/model/ap;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/mm/model/ap;->oL()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/mm/ui/chatting/ik;->gQa:J

    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ik;->gQb:Lcom/tencent/mm/ui/chatting/ij;

    iget-object v4, v4, Lcom/tencent/mm/ui/chatting/ij;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v4, v4, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    invoke-virtual {v4}, Lcom/tencent/mm/ui/chatting/es;->PG()I

    move-result v4

    iget-object v5, p0, Lcom/tencent/mm/ui/chatting/ik;->gQb:Lcom/tencent/mm/ui/chatting/ij;

    iget-object v5, v5, Lcom/tencent/mm/ui/chatting/ij;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v5, v5, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    invoke-virtual {v5}, Lcom/tencent/mm/ui/chatting/es;->getCount()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/mm/storage/ap;->b(Ljava/lang/String;JI)I

    move-result v0

    .line 594
    if-gez v0, :cond_1

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 597
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ik;->gQb:Lcom/tencent/mm/ui/chatting/ij;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/ij;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/es;->getCount()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 599
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ik;->gQb:Lcom/tencent/mm/ui/chatting/ij;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/ij;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->j(Lcom/tencent/mm/ui/chatting/ChattingUI;)Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/il;

    invoke-direct {v2, p0, v0}, Lcom/tencent/mm/ui/chatting/il;-><init>(Lcom/tencent/mm/ui/chatting/ik;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
