.class final Lcom/tencent/mm/ui/chatting/bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/platformtools/bw;


# instance fields
.field private gLG:Lcom/tencent/mm/ui/base/ch;

.field private gMa:Ljava/util/Set;

.field private gMb:Lcom/tencent/mm/ui/chatting/fn;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lcom/tencent/mm/ui/base/ch;Lcom/tencent/mm/ui/chatting/fn;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/bf;->gMa:Ljava/util/Set;

    .line 54
    iput-object p2, p0, Lcom/tencent/mm/ui/chatting/bf;->gLG:Lcom/tencent/mm/ui/base/ch;

    .line 55
    iput-object p3, p0, Lcom/tencent/mm/ui/chatting/bf;->gMb:Lcom/tencent/mm/ui/chatting/fn;

    .line 56
    return-void
.end method


# virtual methods
.method public final ve()Z
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bf;->gMa:Ljava/util/Set;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/tencent/mm/model/bv;->h(Ljava/util/List;)V

    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public final vf()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bf;->gLG:Lcom/tencent/mm/ui/base/ch;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bf;->gLG:Lcom/tencent/mm/ui/base/ch;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ch;->dismiss()V

    .line 68
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bf;->gMb:Lcom/tencent/mm/ui/chatting/fn;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bf;->gMb:Lcom/tencent/mm/ui/chatting/fn;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/fn;->aJs()V

    .line 72
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
