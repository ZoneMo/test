.class public final Lcom/tencent/mm/aa/a;
.super Lcom/tencent/mm/n/x;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/network/ab;


# instance fields
.field private final cke:Lcom/tencent/mm/n/a;

.field private cvC:I

.field private cvD:Lcom/tencent/mm/n/m;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 29
    invoke-direct {p0}, Lcom/tencent/mm/n/x;-><init>()V

    .line 23
    iput v5, p0, Lcom/tencent/mm/aa/a;->cvC:I

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/aa/a;->url:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/aa/a;->cvD:Lcom/tencent/mm/n/m;

    .line 30
    const-string v1, "MicroMsg.NetSceneGetQQMusicLyric"

    const-string v2, "request music lyric: songId: %d, url: %s"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    const/4 v4, 0x1

    if-nez p2, :cond_0

    const-string v0, "null"

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    new-instance v0, Lcom/tencent/mm/n/b;

    invoke-direct {v0}, Lcom/tencent/mm/n/b;-><init>()V

    .line 32
    new-instance v1, Lcom/tencent/mm/protocal/a/ke;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/ke;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->a(Lcom/tencent/mm/am/a;)V

    .line 33
    new-instance v1, Lcom/tencent/mm/protocal/a/kf;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/kf;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->b(Lcom/tencent/mm/am/a;)V

    .line 34
    const-string v1, "/cgi-bin/micromsg-bin/getqqmusiclyric"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->es(Ljava/lang/String;)V

    .line 35
    const/16 v1, 0x208

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cN(I)V

    .line 36
    invoke-virtual {v0, v5}, Lcom/tencent/mm/n/b;->cO(I)V

    .line 37
    invoke-virtual {v0, v5}, Lcom/tencent/mm/n/b;->cP(I)V

    .line 39
    invoke-virtual {v0}, Lcom/tencent/mm/n/b;->wx()Lcom/tencent/mm/n/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/aa/a;->cke:Lcom/tencent/mm/n/a;

    .line 41
    iput p1, p0, Lcom/tencent/mm/aa/a;->cvC:I

    .line 42
    iput-object p2, p0, Lcom/tencent/mm/aa/a;->url:Ljava/lang/String;

    .line 44
    return-void

    :cond_0
    move-object v0, p2

    .line 30
    goto :goto_0
.end method


# virtual methods
.method public final BB()Lcom/tencent/mm/protocal/a/rv;
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tencent/mm/aa/a;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->ws()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/kf;

    .line 83
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/tencent/mm/protocal/a/kf;->fMc:Lcom/tencent/mm/protocal/a/rv;

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/kf;->fMc:Lcom/tencent/mm/protocal/a/rv;

    goto :goto_0
.end method

.method public final a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p2, p0, Lcom/tencent/mm/aa/a;->cvD:Lcom/tencent/mm/n/m;

    .line 55
    iget-object v0, p0, Lcom/tencent/mm/aa/a;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->wr()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/ke;

    .line 56
    iget v1, p0, Lcom/tencent/mm/aa/a;->cvC:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/ke;->fMa:I

    .line 58
    iget-object v1, p0, Lcom/tencent/mm/aa/a;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/an;->y([B)Lcom/tencent/mm/protocal/a/rv;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/ke;->fMb:Lcom/tencent/mm/protocal/a/rv;

    .line 60
    iget-object v0, p0, Lcom/tencent/mm/aa/a;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/aa/a;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/network/aj;Lcom/tencent/mm/network/ab;)I

    move-result v0

    return v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/aj;[B)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/tencent/mm/aa/a;->cvD:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    .line 71
    return-void
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0x208

    return v0
.end method
