.class final Lcom/google/android/gms/common/images/ImageManager$c;
.super Landroid/os/ResultReceiver;


# instance fields
.field KA:Z

.field final synthetic KB:Lcom/google/android/gms/common/images/ImageManager;

.field private final Ky:Landroid/net/Uri;

.field private final Kz:Ljava/util/ArrayList;


# direct methods
.method static synthetic a(Lcom/google/android/gms/common/images/ImageManager$c;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$c;->Kz:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 5

    const-string v0, "com.google.android.gms.extra.fileDescriptor"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$c;->KB:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v1}, Lcom/google/android/gms/common/images/ImageManager;->d(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/images/c;

    iget-object v3, p0, Lcom/google/android/gms/common/images/ImageManager$c;->KB:Lcom/google/android/gms/common/images/ImageManager;

    iget-object v4, p0, Lcom/google/android/gms/common/images/ImageManager$c;->Ky:Landroid/net/Uri;

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gms/common/images/c;-><init>(Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;Landroid/os/ParcelFileDescriptor;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
