.class public final Lcom/google/android/gms/internal/bj;
.super Lcom/google/android/gms/internal/da;


# virtual methods
.method public final a(Lcom/google/android/gms/plus/b;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bj;->lh()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "bounding_box"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/google/android/gms/internal/bk;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/bk;-><init>(Lcom/google/android/gms/internal/bj;Lcom/google/android/gms/plus/b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/bj;->li()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bi;->iU()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0, v2, v2}, Lcom/google/android/gms/internal/bk;->a(ILandroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0
.end method
