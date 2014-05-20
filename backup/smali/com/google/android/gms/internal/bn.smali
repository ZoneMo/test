.class final Lcom/google/android/gms/internal/bn;
.super Lcom/google/android/gms/internal/db;


# instance fields
.field final synthetic Ne:Lcom/google/android/gms/internal/bj;

.field private final Nf:Lcom/google/android/gms/common/a;

.field private final Ng:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bj;Lcom/google/android/gms/plus/b;Lcom/google/android/gms/common/a;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bn;->Ne:Lcom/google/android/gms/internal/bj;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/db;-><init>(Lcom/google/android/gms/internal/da;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/bn;->Nf:Lcom/google/android/gms/common/a;

    iput-object p4, p0, Lcom/google/android/gms/internal/bn;->Ng:Landroid/os/ParcelFileDescriptor;

    return-void
.end method
