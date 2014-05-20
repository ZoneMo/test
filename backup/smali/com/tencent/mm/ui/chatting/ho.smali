.class final Lcom/tencent/mm/ui/chatting/ho;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic dmE:I

.field final synthetic gPL:I

.field final synthetic gPT:Lcom/tencent/mm/ui/chatting/hn;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/hn;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2261
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ho;->gPT:Lcom/tencent/mm/ui/chatting/hn;

    iput p2, p0, Lcom/tencent/mm/ui/chatting/ho;->dmE:I

    iput p3, p0, Lcom/tencent/mm/ui/chatting/ho;->gPL:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 2265
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "on search click, click position %d, set selection %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/tencent/mm/ui/chatting/ho;->dmE:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/tencent/mm/ui/chatting/ho;->gPL:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2266
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ho;->gPT:Lcom/tencent/mm/ui/chatting/hn;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/hn;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->j(Lcom/tencent/mm/ui/chatting/ChattingUI;)Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/ui/chatting/ho;->gPL:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 2267
    return-void
.end method
