.class public final Lcom/tencent/mm/network/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bLI:I

.field public bLJ:I

.field public cEu:Ljava/lang/String;

.field public cFJ:J

.field public cFK:Lcom/tencent/mm/network/a/f;

.field public cFL:Z

.field public cFM:I

.field public cFN:J

.field public cFO:J

.field public cFP:J

.field public cFQ:I

.field public cFR:I

.field public cFS:I

.field public cFT:J

.field public cFU:J

.field public cFV:J

.field public cFW:J

.field public cFX:J

.field public cFY:Ljava/lang/String;

.field public cFZ:J

.field public cyD:J

.field public cyG:J

.field public endTime:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-wide v1, p0, Lcom/tencent/mm/network/a/b;->cFJ:J

    .line 77
    iput-wide v1, p0, Lcom/tencent/mm/network/a/b;->cyD:J

    .line 78
    iput-wide v1, p0, Lcom/tencent/mm/network/a/b;->endTime:J

    .line 79
    iput-wide v1, p0, Lcom/tencent/mm/network/a/b;->cyG:J

    .line 81
    iput-boolean v0, p0, Lcom/tencent/mm/network/a/b;->cFL:Z

    .line 82
    iput v0, p0, Lcom/tencent/mm/network/a/b;->cFM:I

    .line 83
    iput v0, p0, Lcom/tencent/mm/network/a/b;->bLI:I

    .line 84
    iput v0, p0, Lcom/tencent/mm/network/a/b;->bLJ:I

    .line 85
    iput-wide v1, p0, Lcom/tencent/mm/network/a/b;->cFN:J

    .line 86
    iput-wide v1, p0, Lcom/tencent/mm/network/a/b;->cFO:J

    .line 87
    iput-wide v1, p0, Lcom/tencent/mm/network/a/b;->cFP:J

    .line 88
    iput v0, p0, Lcom/tencent/mm/network/a/b;->cFQ:I

    .line 89
    iput v0, p0, Lcom/tencent/mm/network/a/b;->cFR:I

    .line 90
    iput v0, p0, Lcom/tencent/mm/network/a/b;->cFS:I

    .line 92
    iput-wide v1, p0, Lcom/tencent/mm/network/a/b;->cFT:J

    .line 93
    iput-wide v1, p0, Lcom/tencent/mm/network/a/b;->cFU:J

    .line 94
    iput-wide v1, p0, Lcom/tencent/mm/network/a/b;->cFV:J

    .line 95
    iput-wide v1, p0, Lcom/tencent/mm/network/a/b;->cFW:J

    .line 96
    iput-wide v1, p0, Lcom/tencent/mm/network/a/b;->cFX:J

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/network/a/b;->cFY:Ljava/lang/String;

    .line 98
    iput-wide v1, p0, Lcom/tencent/mm/network/a/b;->cFZ:J

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 103
    const-string v1, "rtType:%d begin:%d, end:%d time:%d cost:%d count:%d ipInfo:%s socket:%b netType:%d err:(%d,%d) tx:%d rx:%d"

    const/16 v0, 0xd

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-wide v3, p0, Lcom/tencent/mm/network/a/b;->cFJ:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    iget-wide v3, p0, Lcom/tencent/mm/network/a/b;->cyD:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget-wide v3, p0, Lcom/tencent/mm/network/a/b;->endTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget-wide v3, p0, Lcom/tencent/mm/network/a/b;->endTime:J

    iget-wide v5, p0, Lcom/tencent/mm/network/a/b;->cyD:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    iget-wide v3, p0, Lcom/tencent/mm/network/a/b;->cyG:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x5

    iget-wide v3, p0, Lcom/tencent/mm/network/a/b;->cFP:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x6

    iget-object v0, p0, Lcom/tencent/mm/network/a/b;->cFK:Lcom/tencent/mm/network/a/f;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x7

    iget-boolean v3, p0, Lcom/tencent/mm/network/a/b;->cFL:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0x8

    iget v3, p0, Lcom/tencent/mm/network/a/b;->cFM:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0x9

    iget v3, p0, Lcom/tencent/mm/network/a/b;->bLI:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0xa

    iget v3, p0, Lcom/tencent/mm/network/a/b;->bLJ:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0xb

    iget-wide v3, p0, Lcom/tencent/mm/network/a/b;->cFN:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0xc

    iget-wide v3, p0, Lcom/tencent/mm/network/a/b;->cFO:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/network/a/b;->cFK:Lcom/tencent/mm/network/a/f;

    invoke-virtual {v0}, Lcom/tencent/mm/network/a/f;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
