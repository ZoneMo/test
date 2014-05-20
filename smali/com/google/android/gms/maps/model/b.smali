.class public final Lcom/google/android/gms/maps/model/b;
.super Ljava/lang/Object;


# instance fields
.field private RU:Lcom/google/android/gms/maps/model/LatLng;

.field private RV:F

.field private RW:F

.field private RX:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final R(F)Lcom/google/android/gms/maps/model/b;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/b;->RV:F

    return-object p0
.end method

.method public final S(F)Lcom/google/android/gms/maps/model/b;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/b;->RW:F

    return-object p0
.end method

.method public final T(F)Lcom/google/android/gms/maps/model/b;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/b;->RX:F

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/b;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/model/b;->RU:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method public final lu()Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 5

    new-instance v0, Lcom/google/android/gms/maps/model/CameraPosition;

    iget-object v1, p0, Lcom/google/android/gms/maps/model/b;->RU:Lcom/google/android/gms/maps/model/LatLng;

    iget v2, p0, Lcom/google/android/gms/maps/model/b;->RV:F

    iget v3, p0, Lcom/google/android/gms/maps/model/b;->RW:F

    iget v4, p0, Lcom/google/android/gms/maps/model/b;->RX:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/CameraPosition;-><init>(Lcom/google/android/gms/maps/model/LatLng;FFF)V

    return-object v0
.end method
