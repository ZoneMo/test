.class public final Lcom/google/android/gms/maps/model/CircleOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final RY:Lcom/google/android/gms/maps/model/d;


# instance fields
.field private final KH:I

.field private RZ:Lcom/google/android/gms/maps/model/LatLng;

.field private Sa:D

.field private Sb:F

.field private Sc:I

.field private Sd:I

.field private Se:F

.field private Sf:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/d;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/CircleOptions;->RY:Lcom/google/android/gms/maps/model/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->RZ:Lcom/google/android/gms/maps/model/LatLng;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Sa:D

    const/high16 v0, 0x4120

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Sb:F

    const/high16 v0, -0x100

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Sc:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Sd:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Se:F

    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Sf:Z

    iput v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->KH:I

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/maps/model/LatLng;DFIIFZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->RZ:Lcom/google/android/gms/maps/model/LatLng;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Sa:D

    const/high16 v0, 0x4120

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Sb:F

    const/high16 v0, -0x100

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Sc:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Sd:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Se:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Sf:Z

    iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->KH:I

    iput-object p2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->RZ:Lcom/google/android/gms/maps/model/LatLng;

    iput-wide p3, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Sa:D

    iput p5, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Sb:F

    iput p6, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Sc:I

    iput p7, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Sd:I

    iput p8, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Se:F

    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Sf:Z

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getStrokeWidth()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Sb:F

    return v0
.end method

.method public final hH()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->KH:I

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Sf:Z

    return v0
.end method

.method public final lv()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->RZ:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public final lw()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Sa:D

    return-wide v0
.end method

.method public final lx()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Sc:I

    return v0
.end method

.method public final ly()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Sd:I

    return v0
.end method

.method public final lz()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Se:F

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/internal/ay;->iN()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/q;->g(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->KH:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/q;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->RZ:Lcom/google/android/gms/maps/model/LatLng;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/q;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Sa:D

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/q;->a(Landroid/os/Parcel;ID)V

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Sb:F

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/q;->a(Landroid/os/Parcel;IF)V

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Sc:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/q;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Sd:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/q;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x7

    iget v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Se:F

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/q;->a(Landroid/os/Parcel;IF)V

    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Sf:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/q;->a(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/q;->v(Landroid/os/Parcel;I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/d;->a(Lcom/google/android/gms/maps/model/CircleOptions;Landroid/os/Parcel;I)V

    goto :goto_0
.end method
