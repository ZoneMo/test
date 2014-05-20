.class final Lcom/tencent/mm/storage/as;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cpM:J

.field private gin:J

.field private gio:J

.field private gip:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;JJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1579
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 1580
    cmp-long v0, p5, p3

    if-ltz v0, :cond_1

    :goto_1
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 1581
    iput-object p2, p0, Lcom/tencent/mm/storage/as;->name:Ljava/lang/String;

    .line 1582
    iput-wide p3, p0, Lcom/tencent/mm/storage/as;->cpM:J

    .line 1583
    iput-wide p3, p0, Lcom/tencent/mm/storage/as;->gin:J

    .line 1584
    iput-wide p5, p0, Lcom/tencent/mm/storage/as;->gio:J

    .line 1585
    iput p1, p0, Lcom/tencent/mm/storage/as;->gip:I

    .line 1586
    return-void

    :cond_0
    move v0, v2

    .line 1579
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1580
    goto :goto_1
.end method


# virtual methods
.method public final aCV()J
    .locals 2

    .prologue
    .line 1593
    iget-wide v0, p0, Lcom/tencent/mm/storage/as;->cpM:J

    return-wide v0
.end method

.method public final aCW()V
    .locals 4

    .prologue
    .line 1601
    iget-wide v0, p0, Lcom/tencent/mm/storage/as;->cpM:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/mm/storage/as;->cpM:J

    .line 1602
    iget-wide v0, p0, Lcom/tencent/mm/storage/as;->cpM:J

    iget-wide v2, p0, Lcom/tencent/mm/storage/as;->gin:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/tencent/mm/storage/as;->cpM:J

    iget-wide v2, p0, Lcom/tencent/mm/storage/as;->gio:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 1603
    return-void

    .line 1602
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aCX()I
    .locals 1

    .prologue
    .line 1610
    iget v0, p0, Lcom/tencent/mm/storage/as;->gip:I

    return v0
.end method

.method public final bY(J)Z
    .locals 2
    .parameter

    .prologue
    .line 1606
    iget-wide v0, p0, Lcom/tencent/mm/storage/as;->gin:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/tencent/mm/storage/as;->gio:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final dy(I)V
    .locals 2
    .parameter

    .prologue
    .line 1597
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/tencent/mm/storage/as;->cpM:J

    .line 1598
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1589
    iget-object v0, p0, Lcom/tencent/mm/storage/as;->name:Ljava/lang/String;

    return-object v0
.end method
