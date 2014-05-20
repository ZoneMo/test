.class public Lcom/tencent/mapapi/map/GeoPoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/tencent/mapapi/map/a;

    invoke-direct {v0}, Lcom/tencent/mapapi/map/a;-><init>()V

    sput-object v0, Lcom/tencent/mapapi/map/GeoPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Lcom/tencent/mapapi/map/GeoPoint;->a:I

    .line 14
    iput v0, p0, Lcom/tencent/mapapi/map/GeoPoint;->b:I

    .line 22
    iput p1, p0, Lcom/tencent/mapapi/map/GeoPoint;->a:I

    .line 23
    iput p2, p0, Lcom/tencent/mapapi/map/GeoPoint;->b:I

    .line 24
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Lcom/tencent/mapapi/map/GeoPoint;->a:I

    .line 14
    iput v0, p0, Lcom/tencent/mapapi/map/GeoPoint;->b:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/mapapi/map/GeoPoint;->a:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/mapapi/map/GeoPoint;->b:I

    .line 95
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/tencent/mapapi/map/GeoPoint;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final bd(I)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput p1, p0, Lcom/tencent/mapapi/map/GeoPoint;->b:I

    .line 65
    return-void
.end method

.method public final be(I)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput p1, p0, Lcom/tencent/mapapi/map/GeoPoint;->a:I

    .line 82
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 28
    if-nez p1, :cond_1

    .line 36
    :cond_0
    :goto_0
    return v0

    .line 31
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 34
    check-cast p1, Lcom/tencent/mapapi/map/GeoPoint;

    .line 36
    iget v1, p0, Lcom/tencent/mapapi/map/GeoPoint;->a:I

    iget v2, p1, Lcom/tencent/mapapi/map/GeoPoint;->a:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/tencent/mapapi/map/GeoPoint;->b:I

    iget v2, p1, Lcom/tencent/mapapi/map/GeoPoint;->b:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getLatitudeE6()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/tencent/mapapi/map/GeoPoint;->a:I

    return v0
.end method

.method public final getLongitudeE6()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/tencent/mapapi/map/GeoPoint;->b:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 41
    iget v0, p0, Lcom/tencent/mapapi/map/GeoPoint;->b:I

    mul-int/lit8 v0, v0, 0x7

    iget v1, p0, Lcom/tencent/mapapi/map/GeoPoint;->a:I

    mul-int/lit8 v1, v1, 0xb

    add-int/2addr v0, v1

    return v0
.end method

.method public final mk()Lcom/tencent/mapapi/map/GeoPoint;
    .locals 3

    .prologue
    .line 89
    new-instance v0, Lcom/tencent/mapapi/map/GeoPoint;

    iget v1, p0, Lcom/tencent/mapapi/map/GeoPoint;->a:I

    iget v2, p0, Lcom/tencent/mapapi/map/GeoPoint;->b:I

    invoke-direct {v0, v1, v2}, Lcom/tencent/mapapi/map/GeoPoint;-><init>(II)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/tencent/mapapi/map/GeoPoint;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mapapi/map/GeoPoint;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 114
    iget v0, p0, Lcom/tencent/mapapi/map/GeoPoint;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget v0, p0, Lcom/tencent/mapapi/map/GeoPoint;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    return-void
.end method
