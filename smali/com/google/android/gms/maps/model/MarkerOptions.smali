.class public final Lcom/google/android/gms/maps/model/MarkerOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final Sv:Lcom/google/android/gms/maps/model/h;


# instance fields
.field private final KH:I

.field private PE:Ljava/lang/String;

.field private Sf:Z

.field private Sn:F

.field private So:F

.field private Sw:Lcom/google/android/gms/maps/model/LatLng;

.field private Sx:Ljava/lang/String;

.field private Sy:Lcom/google/android/gms/maps/model/a;

.field private Sz:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/h;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/MarkerOptions;->Sv:Lcom/google/android/gms/maps/model/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Sn:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->So:F

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Sf:Z

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->KH:I

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;FFZZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Sn:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->So:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Sf:Z

    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->KH:I

    iput-object p2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Sw:Lcom/google/android/gms/maps/model/LatLng;

    iput-object p3, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->PE:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Sx:Ljava/lang/String;

    if-nez p5, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Sy:Lcom/google/android/gms/maps/model/a;

    iput p6, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Sn:F

    iput p7, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->So:F

    iput-boolean p8, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Sz:Z

    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Sf:Z

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/maps/model/a;

    invoke-static {p5}, Lcom/google/android/gms/internal/ap;->d(Landroid/os/IBinder;)Lcom/google/android/gms/internal/an;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/a;-><init>(Lcom/google/android/gms/internal/an;)V

    goto :goto_0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getSnippet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Sx:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->PE:Ljava/lang/String;

    return-object v0
.end method

.method public final hH()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->KH:I

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Sf:Z

    return v0
.end method

.method public final lE()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Sn:F

    return v0
.end method

.method public final lF()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->So:F

    return v0
.end method

.method public final lG()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Sy:Lcom/google/android/gms/maps/model/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Sy:Lcom/google/android/gms/maps/model/a;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/a;->lt()Lcom/google/android/gms/internal/an;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/an;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public final lH()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Sw:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public final lI()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Sz:Z

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/ay;->iN()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/q;->g(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->KH:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/q;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Sw:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/q;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->PE:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/q;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Sx:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/q;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->lG()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/q;->a(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Sn:F

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/q;->a(Landroid/os/Parcel;IF)V

    const/4 v1, 0x7

    iget v2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->So:F

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/q;->a(Landroid/os/Parcel;IF)V

    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Sz:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/q;->a(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Sf:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/q;->a(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/q;->v(Landroid/os/Parcel;I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/h;->a(Lcom/google/android/gms/maps/model/MarkerOptions;Landroid/os/Parcel;I)V

    goto :goto_0
.end method
