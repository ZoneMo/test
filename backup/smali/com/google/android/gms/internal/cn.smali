.class public Lcom/google/android/gms/internal/cn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final MO:Lcom/google/android/gms/internal/av;


# instance fields
.field private final KH:I

.field private final MH:Ljava/lang/String;

.field private final MI:J

.field private final MJ:S

.field private final MK:D

.field private final ML:D

.field private final MM:F

.field private final MN:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/av;

    invoke-direct {v0}, Lcom/google/android/gms/internal/av;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cn;->MO:Lcom/google/android/gms/internal/av;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ISDDFJ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestId is null or too long: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    cmpg-float v0, p9, v0

    if-gtz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid radius: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-wide v0, 0x4056800000000000L

    cmpl-double v0, p5, v0

    if-gtz v0, :cond_3

    const-wide v0, -0x3fa9800000000000L

    cmpg-double v0, p5, v0

    if-gez v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid latitude: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-wide v0, 0x4066800000000000L

    cmpl-double v0, p7, v0

    if-gtz v0, :cond_5

    const-wide v0, -0x3f99800000000000L

    cmpg-double v0, p7, v0

    if-gez v0, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid longitude: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p7, p8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    and-int/lit8 v0, p3, 0x3

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No supported transition specified: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iput p1, p0, Lcom/google/android/gms/internal/cn;->KH:I

    iput-short p4, p0, Lcom/google/android/gms/internal/cn;->MJ:S

    iput-object p2, p0, Lcom/google/android/gms/internal/cn;->MH:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/internal/cn;->MK:D

    iput-wide p7, p0, Lcom/google/android/gms/internal/cn;->ML:D

    iput p9, p0, Lcom/google/android/gms/internal/cn;->MM:F

    iput-wide p10, p0, Lcom/google/android/gms/internal/cn;->MI:J

    iput v0, p0, Lcom/google/android/gms/internal/cn;->MN:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/cn;->MO:Lcom/google/android/gms/internal/av;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    instance-of v2, p1, Lcom/google/android/gms/internal/cn;

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/android/gms/internal/cn;

    iget v2, p0, Lcom/google/android/gms/internal/cn;->MM:F

    iget v3, p1, Lcom/google/android/gms/internal/cn;->MM:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-wide v2, p0, Lcom/google/android/gms/internal/cn;->MK:D

    iget-wide v4, p1, Lcom/google/android/gms/internal/cn;->MK:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-wide v2, p0, Lcom/google/android/gms/internal/cn;->ML:D

    iget-wide v4, p1, Lcom/google/android/gms/internal/cn;->ML:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-short v2, p0, Lcom/google/android/gms/internal/cn;->MJ:S

    iget-short v3, p1, Lcom/google/android/gms/internal/cn;->MJ:S

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/cn;->MK:D

    return-wide v0
.end method

.method public final getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/cn;->ML:D

    return-wide v0
.end method

.method public final hH()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/cn;->KH:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    const/16 v4, 0x20

    iget-wide v0, p0, Lcom/google/android/gms/internal/cn;->MK:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    ushr-long v2, v0, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/internal/cn;->ML:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v3, v1, v4

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/cn;->MM:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-short v1, p0, Lcom/google/android/gms/internal/cn;->MJ:S

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/cn;->MN:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final iI()S
    .locals 1

    iget-short v0, p0, Lcom/google/android/gms/internal/cn;->MJ:S

    return v0
.end method

.method public final iJ()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/cn;->MM:F

    return v0
.end method

.method public final iK()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cn;->MH:Ljava/lang/String;

    return-object v0
.end method

.method public final iL()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/cn;->MI:J

    return-wide v0
.end method

.method public final iM()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/cn;->MN:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const-string v1, "Geofence[%s id:%s transitions:%d %.6f, %.6f %.0fm, @%d]"

    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-short v0, p0, Lcom/google/android/gms/internal/cn;->MJ:S

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/cn;->MH:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget v3, p0, Lcom/google/android/gms/internal/cn;->MN:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget-wide v3, p0, Lcom/google/android/gms/internal/cn;->MK:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    iget-wide v3, p0, Lcom/google/android/gms/internal/cn;->ML:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x5

    iget v3, p0, Lcom/google/android/gms/internal/cn;->MM:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x6

    iget-wide v3, p0, Lcom/google/android/gms/internal/cn;->MI:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "CIRCLE"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/cn;->MO:Lcom/google/android/gms/internal/av;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/av;->a(Lcom/google/android/gms/internal/cn;Landroid/os/Parcel;)V

    return-void
.end method
