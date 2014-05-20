.class final Lcom/tencent/mm/ui/chatting/il;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic dmE:I

.field final synthetic gQc:Lcom/tencent/mm/ui/chatting/ik;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ik;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 599
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/il;->gQc:Lcom/tencent/mm/ui/chatting/ik;

    iput p2, p0, Lcom/tencent/mm/ui/chatting/il;->dmE:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 604
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/il;->gQc:Lcom/tencent/mm/ui/chatting/ik;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ik;->gQb:Lcom/tencent/mm/ui/chatting/ij;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ij;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->j(Lcom/tencent/mm/ui/chatting/ChattingUI;)Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/ui/chatting/il;->dmE:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 605
    const-string v0, "MicroMsg.ChattingUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/mm/ui/chatting/il;->dmE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    return-void
.end method
