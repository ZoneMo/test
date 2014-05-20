.class public final Lcom/google/android/gms/maps/model/a;
.super Ljava/lang/Object;


# instance fields
.field private final RP:Lcom/google/android/gms/internal/an;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/an;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/i;->M(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/an;

    iput-object v0, p0, Lcom/google/android/gms/maps/model/a;->RP:Lcom/google/android/gms/internal/an;

    return-void
.end method


# virtual methods
.method public final lt()Lcom/google/android/gms/internal/an;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/a;->RP:Lcom/google/android/gms/internal/an;

    return-object v0
.end method
