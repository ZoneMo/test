.class final Lcom/google/android/gms/internal/bk;
.super Lcom/google/android/gms/internal/bf;


# instance fields
.field private final Nd:Lcom/google/android/gms/plus/b;

.field final synthetic Ne:Lcom/google/android/gms/internal/bj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bj;Lcom/google/android/gms/plus/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bk;->Ne:Lcom/google/android/gms/internal/bj;

    invoke-direct {p0}, Lcom/google/android/gms/internal/bf;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/bk;->Nd:Lcom/google/android/gms/plus/b;

    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string v0, "pendingIntent"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :cond_0
    new-instance v1, Lcom/google/android/gms/common/a;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/common/a;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bk;->Ne:Lcom/google/android/gms/internal/bj;

    new-instance v2, Lcom/google/android/gms/internal/bn;

    iget-object v3, p0, Lcom/google/android/gms/internal/bk;->Ne:Lcom/google/android/gms/internal/bj;

    iget-object v4, p0, Lcom/google/android/gms/internal/bk;->Nd:Lcom/google/android/gms/plus/b;

    invoke-direct {v2, v3, v4, v1, p3}, Lcom/google/android/gms/internal/bn;-><init>(Lcom/google/android/gms/internal/bj;Lcom/google/android/gms/plus/b;Lcom/google/android/gms/common/a;Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/bj;->a(Lcom/google/android/gms/internal/db;)V

    return-void
.end method
