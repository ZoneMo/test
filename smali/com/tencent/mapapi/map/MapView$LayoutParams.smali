.class public Lcom/tencent/mapapi/map/MapView$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "SourceFile"


# instance fields
.field public VA:Lcom/tencent/mapapi/map/GeoPoint;

.field public alignment:I

.field public mode:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 955
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 930
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/mapapi/map/MapView$LayoutParams;->mode:I

    .line 934
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mapapi/map/MapView$LayoutParams;->VA:Lcom/tencent/mapapi/map/GeoPoint;

    .line 938
    iput v1, p0, Lcom/tencent/mapapi/map/MapView$LayoutParams;->x:I

    .line 942
    iput v1, p0, Lcom/tencent/mapapi/map/MapView$LayoutParams;->y:I

    .line 946
    const/16 v0, 0x33

    iput v0, p0, Lcom/tencent/mapapi/map/MapView$LayoutParams;->alignment:I

    .line 956
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x2

    .line 997
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 930
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/mapapi/map/MapView$LayoutParams;->mode:I

    .line 934
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mapapi/map/MapView$LayoutParams;->VA:Lcom/tencent/mapapi/map/GeoPoint;

    .line 938
    iput v1, p0, Lcom/tencent/mapapi/map/MapView$LayoutParams;->x:I

    .line 942
    iput v1, p0, Lcom/tencent/mapapi/map/MapView$LayoutParams;->y:I

    .line 946
    const/16 v0, 0x33

    iput v0, p0, Lcom/tencent/mapapi/map/MapView$LayoutParams;->alignment:I

    .line 998
    iput p1, p0, Lcom/tencent/mapapi/map/MapView$LayoutParams;->x:I

    .line 999
    iput p2, p0, Lcom/tencent/mapapi/map/MapView$LayoutParams;->y:I

    .line 1000
    const/16 v0, 0x55

    iput v0, p0, Lcom/tencent/mapapi/map/MapView$LayoutParams;->alignment:I

    .line 1001
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1009
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 930
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/mapapi/map/MapView$LayoutParams;->mode:I

    .line 934
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mapapi/map/MapView$LayoutParams;->VA:Lcom/tencent/mapapi/map/GeoPoint;

    .line 938
    iput v1, p0, Lcom/tencent/mapapi/map/MapView$LayoutParams;->x:I

    .line 942
    iput v1, p0, Lcom/tencent/mapapi/map/MapView$LayoutParams;->y:I

    .line 946
    const/16 v0, 0x33

    iput v0, p0, Lcom/tencent/mapapi/map/MapView$LayoutParams;->alignment:I

    .line 1010
    return-void
.end method

.method public constructor <init>(Lcom/tencent/mapapi/map/GeoPoint;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 966
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/mapapi/map/MapView$LayoutParams;-><init>(Lcom/tencent/mapapi/map/GeoPoint;IB)V

    .line 967
    return-void
.end method

.method private constructor <init>(Lcom/tencent/mapapi/map/GeoPoint;IB)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x2

    const/4 v1, 0x0

    .line 980
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 930
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/mapapi/map/MapView$LayoutParams;->mode:I

    .line 934
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mapapi/map/MapView$LayoutParams;->VA:Lcom/tencent/mapapi/map/GeoPoint;

    .line 938
    iput v1, p0, Lcom/tencent/mapapi/map/MapView$LayoutParams;->x:I

    .line 942
    iput v1, p0, Lcom/tencent/mapapi/map/MapView$LayoutParams;->y:I

    .line 946
    const/16 v0, 0x33

    iput v0, p0, Lcom/tencent/mapapi/map/MapView$LayoutParams;->alignment:I

    .line 981
    iput v1, p0, Lcom/tencent/mapapi/map/MapView$LayoutParams;->mode:I

    .line 982
    iput-object p1, p0, Lcom/tencent/mapapi/map/MapView$LayoutParams;->VA:Lcom/tencent/mapapi/map/GeoPoint;

    .line 983
    iput v1, p0, Lcom/tencent/mapapi/map/MapView$LayoutParams;->x:I

    .line 984
    iput v1, p0, Lcom/tencent/mapapi/map/MapView$LayoutParams;->y:I

    .line 985
    iput p2, p0, Lcom/tencent/mapapi/map/MapView$LayoutParams;->alignment:I

    .line 986
    return-void
.end method
