.class final Lcom/tencent/mm/ui/chatting/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/tools/ez;


# instance fields
.field final synthetic gLK:Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/av;->gLK:Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final FT()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public final FU()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public final FV()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public final ig(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 78
    invoke-static {p1}, Lcom/tencent/mm/platformtools/au;->hR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/av;->gLK:Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;->a(Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;)Lcom/tencent/mm/ui/transmit/s;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/transmit/s;->ih(Ljava/lang/String;)V

    .line 80
    return-void
.end method
