.class public final Lcom/tencent/mm/ai/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public buf:[B

.field public cBg:I

.field public ccL:I

.field public ret:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ai/u;->buf:[B

    .line 320
    iput v1, p0, Lcom/tencent/mm/ai/u;->ccL:I

    .line 321
    iput v1, p0, Lcom/tencent/mm/ai/u;->cBg:I

    .line 322
    iput v1, p0, Lcom/tencent/mm/ai/u;->ret:I

    .line 323
    return-void
.end method
