.class final Lcom/tencent/mm/ui/chatting/iq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

.field final synthetic gQg:Lcom/tencent/mm/w/e;

.field final synthetic gQh:I


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/w/e;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3882
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/iq;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iput-object p2, p0, Lcom/tencent/mm/ui/chatting/iq;->gQg:Lcom/tencent/mm/w/e;

    iput p3, p0, Lcom/tencent/mm/ui/chatting/iq;->gQh:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 3886
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/iq;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->D(Lcom/tencent/mm/ui/chatting/ChattingUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3891
    :goto_0
    return-void

    .line 3889
    :cond_0
    new-instance v0, Lcom/tencent/mm/w/y;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/iq;->gQg:Lcom/tencent/mm/w/e;

    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v1

    long-to-int v1, v1

    iget v2, p0, Lcom/tencent/mm/ui/chatting/iq;->gQh:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/w/y;-><init>(IIB)V

    .line 3890
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    goto :goto_0
.end method
