.class public Lcom/tencent/mapapi/map/OverlayItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field protected VF:Lcom/tencent/mapapi/map/GeoPoint;

.field protected VG:Z

.field protected mMarker:Landroid/graphics/drawable/Drawable;

.field protected final mSnippet:Ljava/lang/String;

.field protected final mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/tencent/mapapi/map/n;

    invoke-direct {v0}, Lcom/tencent/mapapi/map/n;-><init>()V

    sput-object v0, Lcom/tencent/mapapi/map/OverlayItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mapapi/map/OverlayItem;->VG:Z

    .line 45
    const-class v0, Lcom/tencent/mapapi/map/GeoPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/GeoPoint;

    iput-object v0, p0, Lcom/tencent/mapapi/map/OverlayItem;->VF:Lcom/tencent/mapapi/map/GeoPoint;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mapapi/map/OverlayItem;->mTitle:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mapapi/map/OverlayItem;->mSnippet:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/tencent/mapapi/map/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mapapi/map/OverlayItem;->VG:Z

    .line 38
    invoke-virtual {p1}, Lcom/tencent/mapapi/map/GeoPoint;->mk()Lcom/tencent/mapapi/map/GeoPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mapapi/map/OverlayItem;->VF:Lcom/tencent/mapapi/map/GeoPoint;

    .line 39
    iput-object p2, p0, Lcom/tencent/mapapi/map/OverlayItem;->mTitle:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/tencent/mapapi/map/OverlayItem;->mSnippet:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mapapi/map/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    .line 42
    return-void
.end method


# virtual methods
.method public final c(Lcom/tencent/mapapi/map/GeoPoint;)V
    .locals 1
    .parameter

    .prologue
    .line 176
    invoke-virtual {p1}, Lcom/tencent/mapapi/map/GeoPoint;->mk()Lcom/tencent/mapapi/map/GeoPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mapapi/map/OverlayItem;->VF:Lcom/tencent/mapapi/map/GeoPoint;

    .line 177
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public final getMarker(I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 98
    iget-object v0, p0, Lcom/tencent/mapapi/map/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 111
    :goto_0
    return-object v0

    .line 102
    :cond_0
    if-nez p1, :cond_1

    .line 103
    iget-object v0, p0, Lcom/tencent/mapapi/map/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 106
    :cond_1
    const/4 v0, 0x3

    new-array v2, v0, [I

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_5

    const v0, 0x10100a7

    aput v0, v2, v1

    const/4 v0, 0x1

    :goto_1
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_2

    const v3, 0x10100a1

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_2
    and-int/lit8 v3, p1, 0x4

    if-eqz v3, :cond_3

    const v3, 0x101009c

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_3
    new-array v3, v0, [I

    :goto_2
    if-ge v1, v0, :cond_4

    aget v4, v2, v1

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 107
    :cond_4
    iget-object v0, p0, Lcom/tencent/mapapi/map/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    .line 108
    iget-object v0, p0, Lcom/tencent/mapapi/map/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 109
    iget-object v0, p0, Lcom/tencent/mapapi/map/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 110
    iget-object v2, p0, Lcom/tencent/mapapi/map/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public final mw()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/tencent/mapapi/map/OverlayItem;->VG:Z

    return v0
.end method

.method public final mx()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tencent/mapapi/map/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public my()Lcom/tencent/mapapi/map/GeoPoint;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/tencent/mapapi/map/OverlayItem;->VF:Lcom/tencent/mapapi/map/GeoPoint;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tencent/mapapi/map/OverlayItem;->VF:Lcom/tencent/mapapi/map/GeoPoint;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcom/tencent/mapapi/map/OverlayItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/tencent/mapapi/map/OverlayItem;->mSnippet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    return-void
.end method
