.class Lcom/tencent/mapapi/map/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public UN:Z

.field public final Uc:I

.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mapapi/map/aa;->UN:Z

    .line 55
    iput p1, p0, Lcom/tencent/mapapi/map/aa;->a:I

    .line 56
    iput p2, p0, Lcom/tencent/mapapi/map/aa;->b:I

    .line 57
    iput p3, p0, Lcom/tencent/mapapi/map/aa;->Uc:I

    .line 58
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 62
    if-ne p0, p1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v0

    .line 65
    :cond_1
    instance-of v2, p1, Lcom/tencent/mapapi/map/aa;

    if-nez v2, :cond_2

    move v0, v1

    .line 66
    goto :goto_0

    .line 69
    :cond_2
    check-cast p1, Lcom/tencent/mapapi/map/aa;

    .line 70
    iget v2, p0, Lcom/tencent/mapapi/map/aa;->a:I

    iget v3, p1, Lcom/tencent/mapapi/map/aa;->a:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/tencent/mapapi/map/aa;->b:I

    iget v3, p1, Lcom/tencent/mapapi/map/aa;->b:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/tencent/mapapi/map/aa;->Uc:I

    iget v3, p1, Lcom/tencent/mapapi/map/aa;->Uc:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 76
    iget v0, p0, Lcom/tencent/mapapi/map/aa;->a:I

    mul-int/lit8 v0, v0, 0x7

    iget v1, p0, Lcom/tencent/mapapi/map/aa;->b:I

    mul-int/lit8 v1, v1, 0xb

    add-int/2addr v0, v1

    iget v1, p0, Lcom/tencent/mapapi/map/aa;->Uc:I

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    iget v1, p0, Lcom/tencent/mapapi/map/aa;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget v1, p0, Lcom/tencent/mapapi/map/aa;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget v1, p0, Lcom/tencent/mapapi/map/aa;->Uc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
