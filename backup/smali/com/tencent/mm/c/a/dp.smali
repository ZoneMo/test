.class public final Lcom/tencent/mm/c/a/dp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bOA:I

.field public bOB:Ljava/lang/String;

.field public bOC:Ljava/lang/String;

.field public bOD:Z

.field public bOd:I

.field public bOx:F

.field public bOy:F

.field public bOz:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v0, p0, Lcom/tencent/mm/c/a/dp;->bOd:I

    .line 20
    iput v1, p0, Lcom/tencent/mm/c/a/dp;->bOx:F

    .line 21
    iput v1, p0, Lcom/tencent/mm/c/a/dp;->bOy:F

    .line 22
    iput v0, p0, Lcom/tencent/mm/c/a/dp;->bOz:I

    .line 23
    iput v0, p0, Lcom/tencent/mm/c/a/dp;->bOA:I

    .line 26
    iput-boolean v0, p0, Lcom/tencent/mm/c/a/dp;->bOD:Z

    return-void
.end method
