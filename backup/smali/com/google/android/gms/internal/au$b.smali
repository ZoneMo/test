.class public Lcom/google/android/gms/internal/au$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final Mq:Lcom/google/android/gms/internal/z;


# instance fields
.field final Mr:Ljava/lang/String;

.field final Ms:Lcom/google/android/gms/internal/ar$a;

.field final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/z;

    invoke-direct {v0}, Lcom/google/android/gms/internal/z;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/au$b;->Mq:Lcom/google/android/gms/internal/z;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/internal/ar$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/au$b;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/au$b;->Mr:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/au$b;->Ms:Lcom/google/android/gms/internal/ar$a;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ar$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/au$b;->versionCode:I

    iput-object p1, p0, Lcom/google/android/gms/internal/au$b;->Mr:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/au$b;->Ms:Lcom/google/android/gms/internal/ar$a;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/au$b;->Mq:Lcom/google/android/gms/internal/z;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/au$b;->Mq:Lcom/google/android/gms/internal/z;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/z;->a(Lcom/google/android/gms/internal/au$b;Landroid/os/Parcel;I)V

    return-void
.end method
