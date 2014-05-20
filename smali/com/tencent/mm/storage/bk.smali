.class public final Lcom/tencent/mm/storage/bk;
.super Lcom/tencent/mm/storage/bz;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private giK:Lcom/tencent/mm/protocal/a/nj;


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1480
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/tencent/mm/storage/bz;-><init>([Ljava/lang/Object;)V

    .line 1481
    new-instance v0, Lcom/tencent/mm/protocal/a/nj;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/nj;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/storage/bk;->giK:Lcom/tencent/mm/protocal/a/nj;

    .line 1482
    iget-object v0, p0, Lcom/tencent/mm/storage/bk;->giK:Lcom/tencent/mm/protocal/a/nj;

    iput p1, v0, Lcom/tencent/mm/protocal/a/nj;->fOk:I

    .line 1483
    iget-object v0, p0, Lcom/tencent/mm/storage/bk;->giK:Lcom/tencent/mm/protocal/a/nj;

    iput p2, v0, Lcom/tencent/mm/protocal/a/nj;->fOl:I

    .line 1484
    return-void
.end method


# virtual methods
.method public final aDb()Lcom/tencent/mm/am/a;
    .locals 1

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/tencent/mm/storage/bk;->giK:Lcom/tencent/mm/protocal/a/nj;

    return-object v0
.end method

.method public final getCmdId()I
    .locals 1

    .prologue
    .line 1488
    const/16 v0, 0x1d

    return v0
.end method

.method public final zO()I
    .locals 1

    .prologue
    .line 1498
    const/16 v0, 0x7f

    return v0
.end method
