.class public final Lcom/google/android/gms/location/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/location/LocationRequest;Landroid/os/Parcel;)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/q;->g(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->Rt:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/q;->c(Landroid/os/Parcel;II)V

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->KH:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/q;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->Ru:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/q;->a(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->Rv:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/q;->a(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/gms/location/LocationRequest;->Rw:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/q;->a(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->Rx:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/q;->a(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->Ry:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/q;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x7

    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->Rz:F

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/q;->a(Landroid/os/Parcel;IF)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/q;->v(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4

    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/o;->f(Landroid/os/Parcel;)I

    move-result v1

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const v3, 0xffff

    and-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_0

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/o;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    :sswitch_0
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/o;->f(Landroid/os/Parcel;I)I

    move-result v2

    iput v2, v0, Lcom/google/android/gms/location/LocationRequest;->Rt:I

    goto :goto_0

    :sswitch_1
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/o;->f(Landroid/os/Parcel;I)I

    move-result v2

    iput v2, v0, Lcom/google/android/gms/location/LocationRequest;->KH:I

    goto :goto_0

    :sswitch_2
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/o;->g(Landroid/os/Parcel;I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/location/LocationRequest;->Ru:J

    goto :goto_0

    :sswitch_3
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/o;->g(Landroid/os/Parcel;I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/location/LocationRequest;->Rv:J

    goto :goto_0

    :sswitch_4
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/o;->c(Landroid/os/Parcel;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/google/android/gms/location/LocationRequest;->Rw:Z

    goto :goto_0

    :sswitch_5
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/o;->g(Landroid/os/Parcel;I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/location/LocationRequest;->Rx:J

    goto :goto_0

    :sswitch_6
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/o;->f(Landroid/os/Parcel;I)I

    move-result v2

    iput v2, v0, Lcom/google/android/gms/location/LocationRequest;->Ry:I

    goto :goto_0

    :sswitch_7
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/o;->i(Landroid/os/Parcel;I)F

    move-result v2

    iput v2, v0, Lcom/google/android/gms/location/LocationRequest;->Rz:F

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-eq v2, v1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/p;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Overread allowed size end="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/p;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_1
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/location/LocationRequest;

    return-object v0
.end method
