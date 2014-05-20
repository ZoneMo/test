.class final Lcom/google/android/gms/maps/b;
.super Lcom/google/android/gms/internal/aj;


# instance fields
.field private final RN:Landroid/view/ViewGroup;

.field private final RO:Lcom/google/android/gms/maps/GoogleMapOptions;

.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/aj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/maps/b;->RN:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/google/android/gms/maps/b;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/maps/b;->RO:Lcom/google/android/gms/maps/GoogleMapOptions;

    return-void
.end method
