.class public final Lcom/google/android/gms/maps/GoogleMapOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final RB:Lcom/google/android/gms/maps/a;


# instance fields
.field private final KH:I

.field private RC:Ljava/lang/Boolean;

.field private RD:Ljava/lang/Boolean;

.field private RE:I

.field private RF:Lcom/google/android/gms/maps/model/CameraPosition;

.field private RG:Ljava/lang/Boolean;

.field private RH:Ljava/lang/Boolean;

.field private RI:Ljava/lang/Boolean;

.field private RJ:Ljava/lang/Boolean;

.field private RK:Ljava/lang/Boolean;

.field private RL:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/a;

    invoke-direct {v0}, Lcom/google/android/gms/maps/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/GoogleMapOptions;->RB:Lcom/google/android/gms/maps/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->RE:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->KH:I

    return-void
.end method

.method constructor <init>(IBBILcom/google/android/gms/maps/model/CameraPosition;BBBBBB)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->RE:I

    iput p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->KH:I

    invoke-static {p2}, Lcom/google/android/gms/internal/aw;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->RC:Ljava/lang/Boolean;

    invoke-static {p3}, Lcom/google/android/gms/internal/aw;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->RD:Ljava/lang/Boolean;

    iput p4, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->RE:I

    iput-object p5, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->RF:Lcom/google/android/gms/maps/model/CameraPosition;

    invoke-static {p6}, Lcom/google/android/gms/internal/aw;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->RG:Ljava/lang/Boolean;

    invoke-static {p7}, Lcom/google/android/gms/internal/aw;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->RH:Ljava/lang/Boolean;

    invoke-static {p8}, Lcom/google/android/gms/internal/aw;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->RI:Ljava/lang/Boolean;

    invoke-static {p9}, Lcom/google/android/gms/internal/aw;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->RJ:Ljava/lang/Boolean;

    invoke-static {p10}, Lcom/google/android/gms/internal/aw;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->RK:Ljava/lang/Boolean;

    invoke-static {p11}, Lcom/google/android/gms/internal/aw;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->RL:Ljava/lang/Boolean;

    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x7

    const/4 v5, 0x6

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/e;->Ka:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/GoogleMapOptions;-><init>()V

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->RE:I

    :cond_1
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->RC:Ljava/lang/Boolean;

    :cond_2
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->RD:Ljava/lang/Boolean;

    :cond_3
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->RH:Ljava/lang/Boolean;

    :cond_4
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->RL:Ljava/lang/Boolean;

    :cond_5
    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1, v7, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->RI:Ljava/lang/Boolean;

    :cond_6
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->RK:Ljava/lang/Boolean;

    :cond_7
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->RJ:Ljava/lang/Boolean;

    :cond_8
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->RG:Ljava/lang/Boolean;

    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/maps/model/CameraPosition;->c(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->RF:Lcom/google/android/gms/maps/model/CameraPosition;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final hH()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->KH:I

    return v0
.end method

.method public final lj()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->RC:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/internal/aw;->a(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public final lk()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->RD:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/internal/aw;->a(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public final ll()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->RG:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/internal/aw;->a(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public final lm()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->RH:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/internal/aw;->a(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public final ln()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->RI:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/internal/aw;->a(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public final lo()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->RJ:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/internal/aw;->a(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public final lp()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->RK:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/internal/aw;->a(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public final lq()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->RL:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/internal/aw;->a(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public final lr()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->RE:I

    return v0
.end method

.method public final ls()Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->RF:Lcom/google/android/gms/maps/model/CameraPosition;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/internal/ay;->iN()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/q;->g(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->KH:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/q;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->RC:Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/google/android/gms/internal/aw;->a(Ljava/lang/Boolean;)B

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/q;->a(Landroid/os/Parcel;IB)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->RD:Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/google/android/gms/internal/aw;->a(Ljava/lang/Boolean;)B

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/q;->a(Landroid/os/Parcel;IB)V

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->RE:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/q;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->RF:Lcom/google/android/gms/maps/model/CameraPosition;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/q;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->RG:Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/google/android/gms/internal/aw;->a(Ljava/lang/Boolean;)B

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/q;->a(Landroid/os/Parcel;IB)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->RH:Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/google/android/gms/internal/aw;->a(Ljava/lang/Boolean;)B

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/q;->a(Landroid/os/Parcel;IB)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->RI:Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/google/android/gms/internal/aw;->a(Ljava/lang/Boolean;)B

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/q;->a(Landroid/os/Parcel;IB)V

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->RJ:Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/google/android/gms/internal/aw;->a(Ljava/lang/Boolean;)B

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/q;->a(Landroid/os/Parcel;IB)V

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->RK:Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/google/android/gms/internal/aw;->a(Ljava/lang/Boolean;)B

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/q;->a(Landroid/os/Parcel;IB)V

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->RL:Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/google/android/gms/internal/aw;->a(Ljava/lang/Boolean;)B

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/q;->a(Landroid/os/Parcel;IB)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/q;->v(Landroid/os/Parcel;I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/a;->a(Lcom/google/android/gms/maps/GoogleMapOptions;Landroid/os/Parcel;I)V

    goto :goto_0
.end method
