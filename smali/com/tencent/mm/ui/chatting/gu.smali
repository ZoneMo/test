.class final Lcom/tencent/mm/ui/chatting/gu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

.field final synthetic gPK:J

.field final synthetic gPL:I


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ChattingUI;JI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1886
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/gu;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iput-wide p2, p0, Lcom/tencent/mm/ui/chatting/gu;->gPK:J

    iput p4, p0, Lcom/tencent/mm/ui/chatting/gu;->gPL:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 1890
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "on set position %d, set selection %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/tencent/mm/ui/chatting/gu;->gPK:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/tencent/mm/ui/chatting/gu;->gPL:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1891
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/gu;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->j(Lcom/tencent/mm/ui/chatting/ChattingUI;)Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/ui/chatting/gu;->gPL:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1892
    return-void
.end method
