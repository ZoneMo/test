.class public Lcom/google/android/gms/internal/en;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final NB:Lcom/google/android/gms/internal/bt;


# instance fields
.field private final KH:I

.field private final KM:Ljava/lang/String;

.field private final NC:Ljava/util/ArrayList;

.field private final ND:Ljava/util/ArrayList;

.field private final NE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/bt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/bt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/en;->NB:Lcom/google/android/gms/internal/bt;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/en;->KH:I

    iput-object p2, p0, Lcom/google/android/gms/internal/en;->KM:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/en;->NC:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/google/android/gms/internal/en;->ND:Ljava/util/ArrayList;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/en;->NE:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/en;->KM:Ljava/lang/String;

    return-object v0
.end method

.method public final hH()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/en;->KH:I

    return v0
.end method

.method public final jc()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/en;->NC:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final jd()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/en;->ND:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final je()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/en;->NE:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/bt;->a(Lcom/google/android/gms/internal/en;Landroid/os/Parcel;)V

    return-void
.end method
