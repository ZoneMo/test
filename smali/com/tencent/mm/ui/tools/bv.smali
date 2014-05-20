.class final Lcom/tencent/mm/ui/tools/bv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public cpL:J

.field public cpM:J

.field public ctP:I

.field public pos:I


# direct methods
.method public constructor <init>(JJII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 976
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 977
    iput-wide p1, p0, Lcom/tencent/mm/ui/tools/bv;->cpL:J

    .line 978
    iput-wide p3, p0, Lcom/tencent/mm/ui/tools/bv;->cpM:J

    .line 979
    iput p5, p0, Lcom/tencent/mm/ui/tools/bv;->ctP:I

    .line 980
    iput p6, p0, Lcom/tencent/mm/ui/tools/bv;->pos:I

    .line 981
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 985
    instance-of v1, p1, Lcom/tencent/mm/ui/tools/bv;

    if-nez v1, :cond_1

    .line 990
    :cond_0
    :goto_0
    return v0

    .line 989
    :cond_1
    check-cast p1, Lcom/tencent/mm/ui/tools/bv;

    .line 990
    iget-wide v1, p0, Lcom/tencent/mm/ui/tools/bv;->cpL:J

    iget-wide v3, p1, Lcom/tencent/mm/ui/tools/bv;->cpL:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/tencent/mm/ui/tools/bv;->cpM:J

    iget-wide v3, p1, Lcom/tencent/mm/ui/tools/bv;->cpM:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget v1, p0, Lcom/tencent/mm/ui/tools/bv;->ctP:I

    iget v2, p1, Lcom/tencent/mm/ui/tools/bv;->ctP:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/tencent/mm/ui/tools/bv;->pos:I

    iget v2, p1, Lcom/tencent/mm/ui/tools/bv;->pos:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 6

    .prologue
    const-wide/16 v4, 0x1f

    .line 1010
    iget-wide v0, p0, Lcom/tencent/mm/ui/tools/bv;->cpL:J

    mul-long/2addr v0, v4

    iget-wide v2, p0, Lcom/tencent/mm/ui/tools/bv;->cpM:J

    add-long/2addr v0, v2

    mul-long/2addr v0, v4

    iget v2, p0, Lcom/tencent/mm/ui/tools/bv;->ctP:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/tencent/mm/ui/tools/bv;->pos:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 996
    const-string v1, "[imgLocalId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    iget-wide v1, p0, Lcom/tencent/mm/ui/tools/bv;->cpL:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 998
    const-string v1, ", msgLocalId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    iget-wide v1, p0, Lcom/tencent/mm/ui/tools/bv;->cpM:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1000
    const-string v1, ", compressType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    iget v1, p0, Lcom/tencent/mm/ui/tools/bv;->ctP:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1002
    const-string v1, ", pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    iget v1, p0, Lcom/tencent/mm/ui/tools/bv;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1004
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
