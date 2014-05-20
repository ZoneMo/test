.class public final Lcom/tencent/mm/storage/az;
.super Lcom/tencent/mm/storage/bz;
.source "SourceFile"


# instance fields
.field private cmdId:I

.field private giz:Lcom/tencent/mm/am/a;

.field private value:[B


# direct methods
.method public constructor <init>(ILcom/tencent/mm/am/a;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1506
    new-array v0, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/tencent/mm/storage/bz;-><init>([Ljava/lang/Object;)V

    .line 1507
    iput p1, p0, Lcom/tencent/mm/storage/az;->cmdId:I

    .line 1508
    iput-object p2, p0, Lcom/tencent/mm/storage/az;->giz:Lcom/tencent/mm/am/a;

    .line 1510
    :try_start_0
    invoke-virtual {p2}, Lcom/tencent/mm/am/a;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/storage/az;->value:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1515
    :goto_0
    return-void

    .line 1512
    :catch_0
    move-exception v0

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/tencent/mm/storage/az;->value:[B

    goto :goto_0
.end method

.method public constructor <init>(I[B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1520
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/tencent/mm/storage/bz;-><init>([Ljava/lang/Object;)V

    .line 1521
    iput p1, p0, Lcom/tencent/mm/storage/az;->cmdId:I

    .line 1522
    iput-object p2, p0, Lcom/tencent/mm/storage/az;->value:[B

    .line 1523
    return-void
.end method


# virtual methods
.method public final aDb()Lcom/tencent/mm/am/a;
    .locals 1

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/tencent/mm/storage/az;->giz:Lcom/tencent/mm/am/a;

    return-object v0
.end method

.method public final getCmdId()I
    .locals 1

    .prologue
    .line 1537
    iget v0, p0, Lcom/tencent/mm/storage/az;->cmdId:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1527
    iget-object v0, p0, Lcom/tencent/mm/storage/az;->value:[B

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/16 v2, 0x2710

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/tencent/mm/storage/az;->cmdId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/storage/az;->value:[B

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tencent/mm/storage/av;->f([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final zO()I
    .locals 1

    .prologue
    .line 1532
    const/16 v0, 0x2710

    return v0
.end method
