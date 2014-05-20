.class public final Lcom/google/android/gms/maps/model/PolygonOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final SA:Lcom/google/android/gms/maps/model/i;


# instance fields
.field private final KH:I

.field private final SB:Ljava/util/List;

.field private final SC:Ljava/util/List;

.field private SD:Z

.field private Sb:F

.field private Sc:I

.field private Sd:I

.field private Se:F

.field private Sf:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/i;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/PolygonOptions;->SA:Lcom/google/android/gms/maps/model/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x4120

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Sb:F

    const/high16 v0, -0x100

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Sc:I

    iput v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Sd:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Se:F

    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Sf:Z

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->SD:Z

    iput v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->KH:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->SB:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->SC:Ljava/util/List;

    return-void
.end method

.method constructor <init>(ILjava/util/List;Ljava/util/List;FIIFZZ)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x4120

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Sb:F

    const/high16 v0, -0x100

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Sc:I

    iput v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Sd:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Se:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Sf:Z

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->SD:Z

    iput p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->KH:I

    iput-object p2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->SB:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->SC:Ljava/util/List;

    iput p4, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Sb:F

    iput p5, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Sc:I

    iput p6, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Sd:I

    iput p7, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Se:F

    iput-boolean p8, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Sf:Z

    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->SD:Z

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

    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Sb:F

    return v0
.end method

.method public final hH()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->KH:I

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Sf:Z

    return v0
.end method

.method public final lJ()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->SC:Ljava/util/List;

    return-object v0
.end method

.method public final lK()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->SB:Ljava/util/List;

    return-object v0
.end method

.method public final lL()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->SD:Z

    return v0
.end method

.method public final lx()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Sc:I

    return v0
.end method

.method public final ly()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Sd:I

    return v0
.end method

.method public final lz()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Se:F

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

    iget v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->KH:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/q;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->SB:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/q;->a(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget-object v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->SC:Ljava/util/List;

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/q;->b(Landroid/os/Parcel;Ljava/util/List;)V

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Sb:F

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/q;->a(Landroid/os/Parcel;IF)V

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Sc:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/q;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Sd:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/q;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x7

    iget v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Se:F

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/q;->a(Landroid/os/Parcel;IF)V

    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Sf:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/q;->a(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->SD:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/q;->a(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/q;->v(Landroid/os/Parcel;I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gms/maps/model/i;->a(Lcom/google/android/gms/maps/model/PolygonOptions;Landroid/os/Parcel;)V

    goto :goto_0
.end method
