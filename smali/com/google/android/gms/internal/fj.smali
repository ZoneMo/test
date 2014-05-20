.class public Lcom/google/android/gms/internal/fj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final PS:Lcom/google/android/gms/internal/cl;


# instance fields
.field private final KH:I

.field private final PT:Z

.field private final PU:Ljava/util/ArrayList;

.field private final PV:Ljava/util/ArrayList;

.field private final PW:Landroid/os/Bundle;

.field private final PX:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/cl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fj;->PS:Lcom/google/android/gms/internal/cl;

    return-void
.end method

.method public constructor <init>(IZLjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/fj;->KH:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/fj;->PT:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/fj;->PU:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/google/android/gms/internal/fj;->PV:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/google/android/gms/internal/fj;->PW:Landroid/os/Bundle;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/fj;->PX:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/internal/fj;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/fj;

    iget v1, p0, Lcom/google/android/gms/internal/fj;->KH:I

    iget v2, p1, Lcom/google/android/gms/internal/fj;->KH:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/fj;->PT:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p1, Lcom/google/android/gms/internal/fj;->PT:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/fj;->PU:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/google/android/gms/internal/fj;->PU:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/fj;->PV:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/google/android/gms/internal/fj;->PV:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/fj;->PW:Landroid/os/Bundle;

    iget-object v2, p1, Lcom/google/android/gms/internal/fj;->PW:Landroid/os/Bundle;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hH()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/fj;->KH:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/fj;->KH:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/fj;->PT:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/fj;->PU:Ljava/util/ArrayList;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/fj;->PV:Ljava/util/ArrayList;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/fj;->PW:Landroid/os/Bundle;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final kS()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/fj;->PT:Z

    return v0
.end method

.method public final kT()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fj;->PU:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final kU()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fj;->PV:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final kV()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fj;->PW:Landroid/os/Bundle;

    return-object v0
.end method

.method public final kW()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/fj;->PX:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/cl;->a(Lcom/google/android/gms/internal/fj;Landroid/os/Parcel;)V

    return-void
.end method
