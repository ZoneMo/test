.class public final Lcom/google/android/gms/maps/model/PolylineOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final SE:Lcom/google/android/gms/maps/model/j;


# instance fields
.field private final KH:I

.field private Kp:I

.field private final SB:Ljava/util/List;

.field private SD:Z

.field private Se:F

.field private Sf:Z

.field private Sj:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/j;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/PolylineOptions;->SE:Lcom/google/android/gms/maps/model/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x4120

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Sj:F

    const/high16 v0, -0x100

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Kp:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Se:F

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Sf:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->SD:Z

    iput v1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->KH:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->SB:Ljava/util/List;

    return-void
.end method

.method constructor <init>(ILjava/util/List;FIFZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x4120

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Sj:F

    const/high16 v0, -0x100

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Kp:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Se:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Sf:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->SD:Z

    iput p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->KH:I

    iput-object p2, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->SB:Ljava/util/List;

    iput p3, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Sj:F

    iput p4, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Kp:I

    iput p5, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Se:F

    iput-boolean p6, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Sf:Z

    iput-boolean p7, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->SD:Z

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Kp:I

    return v0
.end method

.method public final getWidth()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Sj:F

    return v0
.end method

.method public final hH()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->KH:I

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Sf:Z

    return v0
.end method

.method public final lK()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->SB:Ljava/util/List;

    return-object v0
.end method

.method public final lL()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->SD:Z

    return v0
.end method

.method public final lz()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Se:F

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

    iget v2, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->KH:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/q;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->SB:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/q;->a(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Sj:F

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/q;->a(Landroid/os/Parcel;IF)V

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Kp:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/q;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Se:F

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/q;->a(Landroid/os/Parcel;IF)V

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Sf:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/q;->a(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->SD:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/q;->a(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/q;->v(Landroid/os/Parcel;I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gms/maps/model/j;->a(Lcom/google/android/gms/maps/model/PolylineOptions;Landroid/os/Parcel;)V

    goto :goto_0
.end method
