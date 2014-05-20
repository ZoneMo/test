.class public final Lcom/tencent/mm/plugin/chatroom/a/c;
.super Lcom/tencent/mm/n/x;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/network/ab;


# instance fields
.field private final cWb:Ljava/util/List;

.field private final cWc:Ljava/util/List;

.field private final cWd:Ljava/util/List;

.field private cWe:Ljava/util/List;

.field private cWg:Ljava/lang/String;

.field private cWh:I

.field private cjh:Lcom/tencent/mm/n/m;

.field private final cke:Lcom/tencent/mm/n/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 44
    invoke-direct {p0}, Lcom/tencent/mm/n/x;-><init>()V

    .line 41
    iput v3, p0, Lcom/tencent/mm/plugin/chatroom/a/c;->cWh:I

    .line 45
    const-string v1, "MicroMsg.NetSceneCreateChatRoom"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "topic : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " size : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " username : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lcom/tencent/mm/n/b;

    invoke-direct {v0}, Lcom/tencent/mm/n/b;-><init>()V

    .line 47
    new-instance v1, Lcom/tencent/mm/protocal/a/dj;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/dj;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->a(Lcom/tencent/mm/am/a;)V

    .line 48
    new-instance v1, Lcom/tencent/mm/protocal/a/dk;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/dk;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->b(Lcom/tencent/mm/am/a;)V

    .line 49
    const-string v1, "/cgi-bin/micromsg-bin/createchatroom"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->es(Ljava/lang/String;)V

    .line 50
    const/16 v1, 0x77

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cN(I)V

    .line 51
    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cO(I)V

    .line 52
    const v1, 0x3b9aca25

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cP(I)V

    .line 53
    invoke-virtual {v0}, Lcom/tencent/mm/n/b;->wx()Lcom/tencent/mm/n/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/chatroom/a/c;->cke:Lcom/tencent/mm/n/a;

    .line 55
    iget-object v0, p0, Lcom/tencent/mm/plugin/chatroom/a/c;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->wr()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/dj;

    .line 56
    invoke-static {p1}, Lcom/tencent/mm/platformtools/an;->hQ(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/dj;->fEF:Lcom/tencent/mm/protocal/a/rw;

    .line 57
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 58
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 59
    new-instance v4, Lcom/tencent/mm/protocal/a/no;

    invoke-direct {v4}, Lcom/tencent/mm/protocal/a/no;-><init>()V

    .line 60
    invoke-static {v1}, Lcom/tencent/mm/platformtools/an;->hQ(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v1

    iput-object v1, v4, Lcom/tencent/mm/protocal/a/no;->fEL:Lcom/tencent/mm/protocal/a/rw;

    .line 61
    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_0
    iput-object v2, v0, Lcom/tencent/mm/protocal/a/dj;->fzd:Ljava/util/LinkedList;

    .line 64
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v1

    iput v1, v0, Lcom/tencent/mm/protocal/a/dj;->fzc:I

    .line 65
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/chatroom/a/c;->cWb:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/chatroom/a/c;->cWc:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/chatroom/a/c;->cWd:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/chatroom/a/c;->cWe:Ljava/util/List;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/plugin/chatroom/a/c;->cWg:Ljava/lang/String;

    .line 70
    return-void
.end method

.method private a(Lcom/tencent/mm/protocal/a/dk;Ljava/util/List;)I
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 189
    .line 191
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    move v1, v0

    move v2, v0

    .line 192
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 193
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/np;

    iget v0, v0, Lcom/tencent/mm/protocal/a/np;->fON:I

    .line 194
    if-eqz v0, :cond_0

    .line 195
    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    .line 199
    const-string v2, "MicroMsg.NetSceneCreateChatRoom"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, " blacklist : "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/np;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/np;->fEL:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v2, p0, Lcom/tencent/mm/plugin/chatroom/a/c;->cWc:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/np;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/np;->fEL:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    const/16 v2, -0x16

    .line 192
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 202
    :cond_1
    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 203
    const-string v2, "MicroMsg.NetSceneCreateChatRoom"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, " not user : "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/np;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/np;->fEL:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v2, p0, Lcom/tencent/mm/plugin/chatroom/a/c;->cWd:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/np;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/np;->fEL:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    const/16 v2, -0x15

    goto :goto_1

    .line 206
    :cond_2
    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    .line 207
    const-string v2, "MicroMsg.NetSceneCreateChatRoom"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, " invalid username : "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/np;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/np;->fEL:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const/16 v2, -0xe

    .line 209
    iget-object v4, p0, Lcom/tencent/mm/plugin/chatroom/a/c;->cWb:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/np;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/np;->fEL:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 210
    :cond_3
    const/4 v4, 0x4

    if-ne v0, v4, :cond_4

    .line 211
    const-string v4, "MicroMsg.NetSceneCreateChatRoom"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, " verify user : "

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/np;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/np;->fEL:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v4, p0, Lcom/tencent/mm/plugin/chatroom/a/c;->cWe:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/np;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/np;->fEL:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 216
    :cond_4
    const-string v4, "MicroMsg.NetSceneCreateChatRoom"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "unknown member status : status = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 219
    :cond_5
    iget v1, p1, Lcom/tencent/mm/protocal/a/dk;->fzc:I

    .line 220
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/np;

    .line 221
    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 222
    add-int/lit8 v0, v1, -0x1

    :goto_3
    move v1, v0

    .line 224
    goto :goto_2

    .line 225
    :cond_6
    iput v1, p1, Lcom/tencent/mm/protocal/a/dk;->fzc:I

    .line 226
    return v2

    :cond_7
    move v0, v1

    goto :goto_3
.end method

.method private static a(Lcom/tencent/mm/protocal/a/dk;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 84
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/dk;->fze:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "@chatroom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/mm/protocal/a/dk;->fzc:I

    if-nez v1, :cond_1

    .line 86
    :cond_0
    const-string v1, "MicroMsg.NetSceneCreateChatRoom"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CreateChatroom: room:["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/mm/protocal/a/dk;->fze:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] listCnt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tencent/mm/protocal/a/dk;->fzc:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :goto_0
    return v0

    .line 90
    :cond_1
    new-instance v3, Lcom/tencent/mm/storage/i;

    invoke-direct {v3}, Lcom/tencent/mm/storage/i;-><init>()V

    .line 91
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/dk;->fEF:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/tencent/mm/storage/i;->bt(Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/dk;->fEG:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/tencent/mm/storage/i;->bv(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/dk;->fEH:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/tencent/mm/storage/i;->bw(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/dk;->fze:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/tencent/mm/storage/i;->setUsername(Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v4

    .line 98
    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/tencent/mm/storage/k;->tP(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 99
    invoke-virtual {v4, v3}, Lcom/tencent/mm/storage/k;->B(Lcom/tencent/mm/storage/i;)Z

    .line 101
    :cond_2
    new-instance v1, Lcom/tencent/mm/m/x;

    invoke-direct {v1}, Lcom/tencent/mm/m/x;-><init>()V

    .line 102
    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/m/x;->setUsername(Ljava/lang/String;)V

    .line 103
    iget-object v2, p0, Lcom/tencent/mm/protocal/a/dk;->fDg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/m/x;->eo(Ljava/lang/String;)V

    .line 104
    iget-object v2, p0, Lcom/tencent/mm/protocal/a/dk;->fDh:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/m/x;->ep(Ljava/lang/String;)V

    .line 105
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/tencent/mm/m/x;->bU(I)V

    .line 106
    invoke-virtual {v1, v0}, Lcom/tencent/mm/m/x;->Q(Z)V

    .line 107
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/tencent/mm/m/x;->cL(I)V

    .line 108
    invoke-static {}, Lcom/tencent/mm/m/af;->wm()Lcom/tencent/mm/m/y;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/mm/m/y;->a(Lcom/tencent/mm/m/x;)Z

    .line 110
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 112
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/dk;->fzd:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 113
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/dk;->fzd:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/np;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/np;->fEL:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-virtual {v4, v0}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v2

    .line 115
    invoke-virtual {v2}, Lcom/tencent/mm/storage/i;->rj()I

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    invoke-virtual {v2}, Lcom/tencent/mm/storage/i;->qH()V

    .line 117
    invoke-virtual {v2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v2}, Lcom/tencent/mm/storage/k;->a(Ljava/lang/String;Lcom/tencent/mm/storage/i;)I

    move-object v0, v2

    .line 123
    :goto_2
    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 119
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/dk;->fzd:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/np;

    invoke-static {v2, v0}, Lcom/tencent/mm/model/r;->a(Lcom/tencent/mm/storage/i;Lcom/tencent/mm/protocal/a/np;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    .line 120
    invoke-virtual {v4, v0}, Lcom/tencent/mm/storage/k;->B(Lcom/tencent/mm/storage/i;)Z

    goto :goto_2

    .line 126
    :cond_4
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 127
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    const-string v0, "MicroMsg.NetSceneCreateChatRoom"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "respon has not self add one "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_5
    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcom/tencent/mm/model/r;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0
.end method


# virtual methods
.method public final Kg()Ljava/util/List;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/tencent/mm/plugin/chatroom/a/c;->cWb:Ljava/util/List;

    return-object v0
.end method

.method public final Kh()Ljava/util/List;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/tencent/mm/plugin/chatroom/a/c;->cWc:Ljava/util/List;

    return-object v0
.end method

.method public final Kj()Ljava/util/List;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/tencent/mm/plugin/chatroom/a/c;->cWe:Ljava/util/List;

    return-object v0
.end method

.method public final Kk()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/tencent/mm/plugin/chatroom/a/c;->cWh:I

    return v0
.end method

.method public final Kl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/tencent/mm/plugin/chatroom/a/c;->cWg:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p2, p0, Lcom/tencent/mm/plugin/chatroom/a/c;->cjh:Lcom/tencent/mm/n/m;

    .line 75
    iget-object v0, p0, Lcom/tencent/mm/plugin/chatroom/a/c;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/plugin/chatroom/a/c;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/network/aj;Lcom/tencent/mm/network/ab;)I

    move-result v0

    return v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/aj;[B)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 136
    const-string v0, "MicroMsg.NetSceneCreateChatRoom"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "netId : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errType :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errMsg :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/tencent/mm/plugin/chatroom/a/c;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->ws()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/dk;

    .line 138
    iget-object v1, v0, Lcom/tencent/mm/protocal/a/dk;->fze:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/plugin/chatroom/a/c;->cWg:Ljava/lang/String;

    .line 139
    iget-object v1, p0, Lcom/tencent/mm/plugin/chatroom/a/c;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v1}, Lcom/tencent/mm/n/a;->wt()Lcom/tencent/mm/n/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/n/d;->xm()I

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/tencent/mm/plugin/chatroom/a/c;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    .line 160
    :goto_0
    return-void

    .line 143
    :cond_0
    iget v1, v0, Lcom/tencent/mm/protocal/a/dk;->fzc:I

    iput v1, p0, Lcom/tencent/mm/plugin/chatroom/a/c;->cWh:I

    .line 144
    iget-object v1, v0, Lcom/tencent/mm/protocal/a/dk;->fzd:Ljava/util/LinkedList;

    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/plugin/chatroom/a/c;->a(Lcom/tencent/mm/protocal/a/dk;Ljava/util/List;)I

    move-result v1

    .line 145
    if-eqz v1, :cond_1

    .line 146
    iget-object v0, p0, Lcom/tencent/mm/plugin/chatroom/a/c;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, v1, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    goto :goto_0

    .line 149
    :cond_1
    iget v2, v0, Lcom/tencent/mm/protocal/a/dk;->fzc:I

    if-nez v2, :cond_2

    .line 151
    iget-object v0, p0, Lcom/tencent/mm/plugin/chatroom/a/c;->cWe:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/tencent/mm/plugin/chatroom/a/c;->cWh:I

    if-ne v0, v2, :cond_3

    .line 152
    const/16 v0, -0x2c

    .line 154
    :goto_1
    iget-object v1, p0, Lcom/tencent/mm/plugin/chatroom/a/c;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v1, p2, v0, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    goto :goto_0

    .line 157
    :cond_2
    invoke-static {v0}, Lcom/tencent/mm/plugin/chatroom/a/c;->a(Lcom/tencent/mm/protocal/a/dk;)Z

    .line 158
    iget-object v0, p0, Lcom/tencent/mm/plugin/chatroom/a/c;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 80
    const/16 v0, 0x77

    return v0
.end method
