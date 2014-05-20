.class final Lcom/tencent/mapapi/map/ac;
.super Lcom/tencent/mapapi/map/ab;
.source "SourceFile"


# instance fields
.field Wb:Landroid/graphics/Bitmap;

.field Wc:Z

.field h:F


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/mapapi/map/ab;-><init>(III)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mapapi/map/ac;->Wb:Landroid/graphics/Bitmap;

    .line 25
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/tencent/mapapi/map/ac;->h:F

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mapapi/map/ac;->Wc:Z

    .line 31
    return-void
.end method
