.class public final Lcom/tencent/mm/plugin/chatroom/a/e;
.super Lcom/tencent/mm/n/x;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/network/ab;


# instance fields
.field public cWi:Ljava/lang/String;

.field public cWj:Ljava/lang/String;

.field public cWk:I

.field public cWl:I

.field private cjh:Lcom/tencent/mm/n/m;

.field private final cke:Lcom/tencent/mm/n/a;

.field public status:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-direct {p0}, Lcom/tencent/mm/n/x;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/chatroom/a/e;->cjh:Lcom/tencent/mm/n/m;

    .line 32
    new-instance v0, Lcom/tencent/mm/n/b;

    invoke-direct {v0}, Lcom/tencent/mm/n/b;-><init>()V

    .line 33
    new-instance v1, Lcom/tencent/mm/protocal/a/ig;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/ig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->a(Lcom/tencent/mm/am/a;)V

    .line 34
    new-instance v1, Lcom/tencent/mm/protocal/a/ih;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/ih;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->b(Lcom/tencent/mm/am/a;)V

    .line 35
    const-string v1, "/cgi-bin/micromsg-bin/getchatroomupgradestatus"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->es(Ljava/lang/String;)V

    .line 36
    const/16 v1, 0x207

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cN(I)V

    .line 37
    invoke-virtual {v0, v2}, Lcom/tencent/mm/n/b;->cO(I)V

    .line 38
    invoke-virtual {v0, v2}, Lcom/tencent/mm/n/b;->cP(I)V

    .line 40
    invoke-virtual {v0}, Lcom/tencent/mm/n/b;->wx()Lcom/tencent/mm/n/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/chatroom/a/e;->cke:Lcom/tencent/mm/n/a;

    .line 42
    iput-object p1, p0, Lcom/tencent/mm/plugin/chatroom/a/e;->cWi:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lcom/tencent/mm/plugin/chatroom/a/e;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->wr()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/ig;

    iput-object p1, v0, Lcom/tencent/mm/protocal/a/ig;->fEJ:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p2, p0, Lcom/tencent/mm/plugin/chatroom/a/e;->cjh:Lcom/tencent/mm/n/m;

    .line 49
    iget-object v0, p0, Lcom/tencent/mm/plugin/chatroom/a/e;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/plugin/chatroom/a/e;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/network/aj;Lcom/tencent/mm/network/ab;)I

    move-result v0

    return v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/aj;[B)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tencent/mm/plugin/chatroom/a/e;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->ws()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/ih;

    .line 62
    const-string v1, "MicroMsg.NetSceneGetChatRoomUpgradeStatus"

    const-string v2, "NetSceneGetChatRoomUpgradeStatus onGYNetEnd errType:%d, errCode:%d, errMsg:%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p4, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    iget v1, v0, Lcom/tencent/mm/protocal/a/ih;->fzr:I

    iput v1, p0, Lcom/tencent/mm/plugin/chatroom/a/e;->status:I

    .line 64
    iget-object v1, v0, Lcom/tencent/mm/protocal/a/ih;->fKB:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/mm/plugin/chatroom/a/e;->cWj:Ljava/lang/String;

    .line 68
    iget v1, v0, Lcom/tencent/mm/protocal/a/ih;->fKC:I

    iput v1, p0, Lcom/tencent/mm/plugin/chatroom/a/e;->cWl:I

    .line 69
    iget-object v1, v0, Lcom/tencent/mm/protocal/a/ih;->fKB:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/mm/plugin/chatroom/a/e;->cWj:Ljava/lang/String;

    .line 70
    iget v0, v0, Lcom/tencent/mm/protocal/a/ih;->fKA:I

    iput v0, p0, Lcom/tencent/mm/plugin/chatroom/a/e;->cWk:I

    .line 71
    iget-object v0, p0, Lcom/tencent/mm/plugin/chatroom/a/e;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    .line 73
    return-void
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0x207

    return v0
.end method
