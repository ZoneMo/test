.class public Lcom/google/android/gms/internal/am;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final LQ:Lcom/google/android/gms/internal/u;


# instance fields
.field private final KH:I

.field private final LR:Lcom/google/android/gms/internal/ao;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/u;

    invoke-direct {v0}, Lcom/google/android/gms/internal/u;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/am;->LQ:Lcom/google/android/gms/internal/u;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/ao;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/am;->KH:I

    iput-object p2, p0, Lcom/google/android/gms/internal/am;->LR:Lcom/google/android/gms/internal/ao;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ao;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/am;->KH:I

    iput-object p1, p0, Lcom/google/android/gms/internal/am;->LR:Lcom/google/android/gms/internal/ao;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/x;)Lcom/google/android/gms/internal/am;
    .locals 2

    instance-of v0, p0, Lcom/google/android/gms/internal/ao;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/am;

    check-cast p0, Lcom/google/android/gms/internal/ao;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/am;-><init>(Lcom/google/android/gms/internal/ao;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported safe parcelable field converter class."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/am;->LQ:Lcom/google/android/gms/internal/u;

    const/4 v0, 0x0

    return v0
.end method

.method final hH()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/am;->KH:I

    return v0
.end method

.method final ie()Lcom/google/android/gms/internal/ao;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/am;->LR:Lcom/google/android/gms/internal/ao;

    return-object v0
.end method

.method public final if()Lcom/google/android/gms/internal/x;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/am;->LR:Lcom/google/android/gms/internal/ao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/am;->LR:Lcom/google/android/gms/internal/ao;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There was no converter wrapped in this ConverterWrapper."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/am;->LQ:Lcom/google/android/gms/internal/u;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/u;->a(Lcom/google/android/gms/internal/am;Landroid/os/Parcel;I)V

    return-void
.end method
