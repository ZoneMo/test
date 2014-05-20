.class public Lcom/google/android/gms/internal/cq;
.super Ljava/lang/Object;


# instance fields
.field private final Qg:[Ljava/lang/String;

.field private final Qn:Ljava/util/ArrayList;

.field private final Qo:Ljava/lang/String;

.field private final Qp:Ljava/util/HashMap;

.field private Qq:Z

.field private Qr:Ljava/lang/String;


# direct methods
.method private constructor <init>([Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/i;->M(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/cq;->Qg:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/cq;->Qn:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/google/android/gms/internal/cq;->Qo:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/cq;->Qp:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cq;->Qq:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/cq;->Qr:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>([Ljava/lang/String;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cq;-><init>([Ljava/lang/String;)V

    return-void
.end method
