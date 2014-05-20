.class public final Lcom/tencent/mm/protocal/k;
.super Lcom/tencent/mm/protocal/p;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/protocal/n;


# instance fields
.field public fxL:Lcom/tencent/mm/protocal/a/ot;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/tencent/mm/protocal/p;-><init>()V

    .line 28
    new-instance v0, Lcom/tencent/mm/protocal/a/ot;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/ot;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    return-void
.end method


# virtual methods
.method public final getCmdId()I
    .locals 1

    .prologue
    .line 60
    const/16 v0, 0xb2

    return v0
.end method

.method public final wy()I
    .locals 1

    .prologue
    .line 55
    const/16 v0, 0x17c

    return v0
.end method

.method public final wz()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 33
    const/16 v0, 0x2712

    sget v1, Lcom/tencent/mm/platformtools/at;->cHJ:I

    if-ne v0, v1, :cond_0

    sget v0, Lcom/tencent/mm/platformtools/at;->cHK:I

    if-lez v0, :cond_0

    .line 34
    sput v4, Lcom/tencent/mm/platformtools/at;->cHK:I

    .line 35
    const-string v0, ""

    const-string v1, ""

    invoke-static {v0, v1, v4}, Lcom/tencent/mm/protocal/bi;->k(Ljava/lang/String;Ljava/lang/String;I)V

    .line 38
    :cond_0
    invoke-static {}, Lcom/tencent/mm/protocal/bi;->awV()Lcom/tencent/mm/protocal/bi;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/protocal/k;->a(Lcom/tencent/mm/protocal/bi;)V

    .line 39
    iget-object v0, p0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    new-instance v1, Lcom/tencent/mm/protocal/a/rv;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/rv;-><init>()V

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->azP()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/a/rv;->bM([B)Lcom/tencent/mm/protocal/a/rv;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/ot;->fBE:Lcom/tencent/mm/protocal/a/rv;

    .line 40
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/aa;->appenderFlush()V

    .line 41
    iget-object v0, p0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    invoke-static {p0}, Lcom/tencent/mm/protocal/m;->b(Lcom/tencent/mm/protocal/p;)Lcom/tencent/mm/protocal/a/au;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/a/ot;->a(Lcom/tencent/mm/protocal/a/au;)Lcom/tencent/mm/protocal/a/rs;

    .line 42
    iget-object v0, p0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    sget v1, Lcom/tencent/mm/sdk/platformtools/j;->bKo:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/ot;->fJD:I

    .line 43
    const/16 v0, 0x271c

    sget v1, Lcom/tencent/mm/platformtools/at;->cHJ:I

    if-ne v0, v1, :cond_1

    sget v0, Lcom/tencent/mm/platformtools/at;->cHK:I

    if-lez v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    sget v1, Lcom/tencent/mm/platformtools/at;->cHK:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/ot;->fJD:I

    .line 46
    :cond_1
    const-string v0, "MicroMsg.MMAuth"

    const-string v1, "NewAuthRequest channel:%d release:%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    iget v3, v3, Lcom/tencent/mm/protocal/a/ot;->fJD:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    sget v4, Lcom/tencent/mm/sdk/platformtools/j;->bKo:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    sget-object v1, Lcom/tencent/mm/protocal/a;->fxq:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/ot;->fQz:Ljava/lang/String;

    .line 49
    const-string v0, ""

    invoke-static {v0}, Lcom/tencent/mm/protocal/j;->bk(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/ot;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
