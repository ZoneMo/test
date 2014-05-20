.class public final Lcom/tencent/mm/plugin/chatroom/a/a;
.super Lcom/tencent/mm/n/x;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/network/ab;


# instance fields
.field private final cWb:Ljava/util/List;

.field private final cWc:Ljava/util/List;

.field private final cWd:Ljava/util/List;

.field private final cWe:Ljava/util/List;

.field private cjh:Lcom/tencent/mm/n/m;

.field private final cke:Lcom/tencent/mm/n/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/tencent/mm/n/x;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/chatroom/a/a;->cjh:Lcom/tencent/mm/n/m;

    .line 33
    new-instance v0, Lcom/tencent/mm/n/b;

    invoke-direct {v0}, Lcom/tencent/mm/n/b;-><init>()V

    .line 34
    new-instance v1, Lcom/tencent/mm/protocal/a/f;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/f;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->a(Lcom/tencent/mm/am/a;)V

    .line 35
    new-instance v1, Lcom/tencent/mm/protocal/a/g;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/g;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->b(Lcom/tencent/mm/am/a;)V

    .line 36
    const-string v1, "/cgi-bin/micromsg-bin/addchatroommember"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->es(Ljava/lang/String;)V

    .line 37
    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cN(I)V

    .line 38
    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cO(I)V

    .line 39
    const v1, 0x3b9aca24

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cP(I)V

    .line 40
    invoke-virtual {v0}, Lcom/tencent/mm/n/b;->wx()Lcom/tencent/mm/n/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/chatroom/a/a;->cke:Lcom/tencent/mm/n/a;

    .line 43
    iget-object v0, p0, Lcom/tencent/mm/plugin/chatroom/a/a;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->wr()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/f;

    .line 44
    invoke-static {p1}, Lcom/tencent/mm/platformtools/an;->hQ(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/f;->fze:Lcom/tencent/mm/protocal/a/rw;

    .line 46
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 47
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 48
    new-instance v4, Lcom/tencent/mm/protocal/a/no;

    invoke-direct {v4}, Lcom/tencent/mm/protocal/a/no;-><init>()V

    .line 49
    invoke-static {v1}, Lcom/tencent/mm/platformtools/an;->hQ(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v1

    iput-object v1, v4, Lcom/tencent/mm/protocal/a/no;->fEL:Lcom/tencent/mm/protocal/a/rw;

    .line 50
    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 52
    :cond_0
    iput-object v2, v0, Lcom/tencent/mm/protocal/a/f;->fzd:Ljava/util/LinkedList;

    .line 53
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v1

    iput v1, v0, Lcom/tencent/mm/protocal/a/f;->fzc:I

    .line 54
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/chatroom/a/a;->cWb:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/chatroom/a/a;->cWc:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/chatroom/a/a;->cWd:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/chatroom/a/a;->cWe:Ljava/util/List;

    .line 58
    return-void
.end method


# virtual methods
.method public final Kg()Ljava/util/List;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/mm/plugin/chatroom/a/a;->cWb:Ljava/util/List;

    return-object v0
.end method

.method public final Kh()Ljava/util/List;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tencent/mm/plugin/chatroom/a/a;->cWc:Ljava/util/List;

    return-object v0
.end method

.method public final Ki()Ljava/util/List;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tencent/mm/plugin/chatroom/a/a;->cWd:Ljava/util/List;

    return-object v0
.end method

.method public final Kj()Ljava/util/List;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/tencent/mm/plugin/chatroom/a/a;->cWe:Ljava/util/List;

    return-object v0
.end method

.method public final a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p2, p0, Lcom/tencent/mm/plugin/chatroom/a/a;->cjh:Lcom/tencent/mm/n/m;

    .line 79
    iget-object v0, p0, Lcom/tencent/mm/plugin/chatroom/a/a;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/plugin/chatroom/a/a;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/network/aj;Lcom/tencent/mm/network/ab;)I

    move-result v0

    return v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/aj;[B)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 90
    iget-object v0, p0, Lcom/tencent/mm/plugin/chatroom/a/a;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->wr()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/f;

    .line 93
    iget-object v1, p0, Lcom/tencent/mm/plugin/chatroom/a/a;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v1}, Lcom/tencent/mm/n/a;->ws()Lcom/tencent/mm/am/a;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/protocal/a/g;

    .line 94
    iget-object v3, p0, Lcom/tencent/mm/plugin/chatroom/a/a;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v3}, Lcom/tencent/mm/n/a;->wt()Lcom/tencent/mm/n/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/n/d;->xm()I

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    iget-object v0, p0, Lcom/tencent/mm/plugin/chatroom/a/a;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    .line 108
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v5, v1, Lcom/tencent/mm/protocal/a/g;->fzd:Ljava/util/LinkedList;

    move v3, v2

    move v4, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_6

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/mm/protocal/a/np;

    iget v2, v2, Lcom/tencent/mm/protocal/a/np;->fON:I

    if-eqz v2, :cond_1

    const/4 v6, 0x3

    if-ne v2, v6, :cond_2

    const-string v4, "MicroMsg.NetSceneAddChatRoomMember"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v2, " blacklist : "

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/mm/protocal/a/np;

    iget-object v2, v2, Lcom/tencent/mm/protocal/a/np;->fEL:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/mm/plugin/chatroom/a/a;->cWc:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/mm/protocal/a/np;

    iget-object v2, v2, Lcom/tencent/mm/protocal/a/np;->fEL:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v2}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v4, -0x16

    :cond_1
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_2
    const/4 v6, 0x1

    if-ne v2, v6, :cond_3

    const-string v4, "MicroMsg.NetSceneAddChatRoomMember"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v2, " not user : "

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/mm/protocal/a/np;

    iget-object v2, v2, Lcom/tencent/mm/protocal/a/np;->fEL:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/mm/plugin/chatroom/a/a;->cWd:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/mm/protocal/a/np;

    iget-object v2, v2, Lcom/tencent/mm/protocal/a/np;->fEL:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v2}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, -0x4

    goto :goto_2

    :cond_3
    const/4 v6, 0x2

    if-ne v2, v6, :cond_4

    const-string v4, "MicroMsg.NetSceneAddChatRoomMember"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v2, " invalid username : "

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/mm/protocal/a/np;

    iget-object v2, v2, Lcom/tencent/mm/protocal/a/np;->fEL:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, -0xe

    iget-object v6, p0, Lcom/tencent/mm/plugin/chatroom/a/a;->cWb:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/mm/protocal/a/np;

    iget-object v2, v2, Lcom/tencent/mm/protocal/a/np;->fEL:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v2}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    const/4 v6, 0x4

    if-ne v2, v6, :cond_5

    const-string v4, "MicroMsg.NetSceneAddChatRoomMember"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v2, " verify user : "

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/mm/protocal/a/np;

    iget-object v2, v2, Lcom/tencent/mm/protocal/a/np;->fEL:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, -0x2c

    iget-object v6, p0, Lcom/tencent/mm/plugin/chatroom/a/a;->cWe:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/mm/protocal/a/np;

    iget-object v2, v2, Lcom/tencent/mm/protocal/a/np;->fEL:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v2}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_5
    const-string v6, "MicroMsg.NetSceneAddChatRoomMember"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "unknown member status : status = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 100
    :cond_6
    if-eqz v4, :cond_7

    .line 101
    iget-object v0, p0, Lcom/tencent/mm/plugin/chatroom/a/a;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, v4, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    goto/16 :goto_0

    .line 105
    :cond_7
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/f;->fze:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/tencent/mm/model/r;->a(Ljava/lang/String;Lcom/tencent/mm/protocal/a/g;)Z

    .line 106
    iget-object v0, p0, Lcom/tencent/mm/plugin/chatroom/a/a;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    goto/16 :goto_0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 84
    const/16 v0, 0x78

    return v0
.end method
