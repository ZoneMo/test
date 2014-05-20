.class final Lcom/tencent/mm/ui/chatting/cr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic gMC:Lcom/tencent/mm/storage/ak;

.field final synthetic gMG:Lcom/tencent/mm/ui/chatting/cq;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/cq;Lcom/tencent/mm/storage/ak;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1480
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/cr;->gMG:Lcom/tencent/mm/ui/chatting/cq;

    iput-object p2, p0, Lcom/tencent/mm/ui/chatting/cr;->gMC:Lcom/tencent/mm/storage/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1485
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/cr;->gMC:Lcom/tencent/mm/storage/ak;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/model/app/s;->s(Lcom/tencent/mm/storage/ak;)V

    .line 1486
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/cr;->gMC:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/mm/model/bv;->q(J)I

    .line 1487
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/cr;->gMG:Lcom/tencent/mm/ui/chatting/cq;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/cq;->a(Lcom/tencent/mm/ui/chatting/cq;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->dM(Z)V

    .line 1488
    return-void
.end method
