.class public final Lcom/tencent/mm/modelvoice/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ccF:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 762
    return-void
.end method

.method public static release()V
    .locals 0

    .prologue
    .line 781
    invoke-static {}, Lcom/tencent/mm/modelvoice/MediaRecorder;->Eg()Z

    .line 782
    return-void
.end method


# virtual methods
.method public final a([BILcom/tencent/mm/pointers/PByteArray;I)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 786
    if-nez p3, :cond_0

    .line 787
    const/4 v0, -0x2

    .line 793
    :goto_0
    return v0

    .line 789
    :cond_0
    iget v0, p0, Lcom/tencent/mm/modelvoice/i;->ccF:I

    invoke-static {v0, p1, p2, p3, p4}, Lcom/tencent/mm/modelvoice/MediaRecorder;->b(I[BILcom/tencent/mm/pointers/PByteArray;I)Z

    move-result v0

    .line 790
    if-eqz v0, :cond_1

    iget-object v0, p3, Lcom/tencent/mm/pointers/PByteArray;->value:[B

    if-nez v0, :cond_2

    .line 791
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 793
    :cond_2
    iget-object v0, p3, Lcom/tencent/mm/pointers/PByteArray;->value:[B

    array-length v0, v0

    goto :goto_0
.end method

.method public final eB(I)Z
    .locals 1
    .parameter

    .prologue
    .line 775
    iput p1, p0, Lcom/tencent/mm/modelvoice/i;->ccF:I

    .line 776
    invoke-static {}, Lcom/tencent/mm/modelvoice/MediaRecorder;->Ef()Z

    .line 777
    const/4 v0, 0x1

    return v0
.end method
