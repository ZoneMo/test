.class final Lcom/tencent/mm/p/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/platformtools/x;


# instance fields
.field final synthetic cod:Lcom/tencent/mm/p/r;

.field coe:J


# direct methods
.method private constructor <init>(Lcom/tencent/mm/p/r;)V
    .locals 2
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/tencent/mm/p/t;->cod:Lcom/tencent/mm/p/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/p/t;->coe:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/mm/p/r;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/tencent/mm/p/t;-><init>(Lcom/tencent/mm/p/r;)V

    return-void
.end method


# virtual methods
.method public final a(FFIILjava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    .line 53
    const-string v0, "MicroMsg.ReportLocation"

    const-string v1, "LBSManager notify. lat:%f, lng:%f"

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/tencent/mm/p/t;->cod:Lcom/tencent/mm/p/r;

    invoke-static {v0}, Lcom/tencent/mm/p/r;->d(Lcom/tencent/mm/p/r;)Lcom/tencent/mm/sdk/platformtools/LBSManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/tencent/mm/p/t;->cod:Lcom/tencent/mm/p/r;

    invoke-static {v0}, Lcom/tencent/mm/p/r;->d(Lcom/tencent/mm/p/r;)Lcom/tencent/mm/sdk/platformtools/LBSManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/LBSManager;->azc()V

    .line 58
    :cond_0
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FC()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/mm/p/t;->coe:J

    iget-object v4, p0, Lcom/tencent/mm/p/t;->cod:Lcom/tencent/mm/p/r;

    invoke-static {v4}, Lcom/tencent/mm/p/r;->e(Lcom/tencent/mm/p/r;)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/tencent/mm/p/t;->cod:Lcom/tencent/mm/p/r;

    iget-object v0, p0, Lcom/tencent/mm/p/t;->cod:Lcom/tencent/mm/p/r;

    invoke-static {v0}, Lcom/tencent/mm/p/r;->a(Lcom/tencent/mm/p/r;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/tencent/mm/p/r;->a(Ljava/lang/String;FFI)V

    .line 61
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FC()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/p/t;->coe:J

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/p/t;->cod:Lcom/tencent/mm/p/r;

    invoke-static {v0}, Lcom/tencent/mm/p/r;->b(Lcom/tencent/mm/p/r;)I

    move-result v0

    if-ne v0, v6, :cond_2

    .line 65
    iget-object v0, p0, Lcom/tencent/mm/p/t;->cod:Lcom/tencent/mm/p/r;

    invoke-virtual {v0}, Lcom/tencent/mm/p/r;->xZ()V

    .line 67
    :cond_2
    return-void
.end method
