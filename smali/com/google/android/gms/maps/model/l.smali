.class final Lcom/google/android/gms/maps/model/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/maps/model/n;


# instance fields
.field private final SJ:Lcom/google/android/gms/internal/az;

.field final synthetic SK:Lcom/google/android/gms/maps/model/TileOverlayOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/model/TileOverlayOptions;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/maps/model/l;->SK:Lcom/google/android/gms/maps/model/TileOverlayOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/maps/model/l;->SK:Lcom/google/android/gms/maps/model/TileOverlayOptions;

    invoke-static {v0}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->a(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/internal/az;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/model/l;->SJ:Lcom/google/android/gms/internal/az;

    return-void
.end method
