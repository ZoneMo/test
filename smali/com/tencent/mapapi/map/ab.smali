.class Lcom/tencent/mapapi/map/ab;
.super Lcom/tencent/mapapi/map/aa;
.source "SourceFile"


# instance fields
.field public VZ:F

.field public Wa:F


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/mapapi/map/aa;-><init>(III)V

    .line 36
    iput v0, p0, Lcom/tencent/mapapi/map/ab;->VZ:F

    .line 37
    iput v0, p0, Lcom/tencent/mapapi/map/ab;->Wa:F

    .line 42
    return-void
.end method
