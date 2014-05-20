.class final Lcom/tencent/mm/z/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final ckr:Lcom/tencent/mm/sdk/platformtools/ay;

.field private cuA:Z

.field private final cuB:Lcom/tencent/mm/z/n;

.field private cuC:Lcom/tencent/mm/z/a;

.field private cuD:J

.field private final cuw:Lcom/tencent/mm/z/i;

.field private final cux:Ljava/util/Queue;

.field protected cuy:Lcom/tencent/mm/protocal/ap;

.field private cuz:I


# direct methods
.method public constructor <init>(Lcom/tencent/mm/z/i;)V
    .locals 4
    .parameter

    .prologue
    .line 937
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 845
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/z/b;->cux:Ljava/util/Queue;

    .line 849
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/z/b;->cuA:Z

    .line 851
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/z/b;->cuC:Lcom/tencent/mm/z/a;

    .line 853
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/z/b;->cuD:J

    .line 855
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/ay;

    invoke-static {}, Lcom/tencent/mm/model/be;->ut()Lcom/tencent/mm/sdk/platformtools/an;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/sdk/platformtools/an;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/z/c;

    invoke-direct {v2, p0}, Lcom/tencent/mm/z/c;-><init>(Lcom/tencent/mm/z/b;)V

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/ay;-><init>(Landroid/os/Looper;Lcom/tencent/mm/sdk/platformtools/az;Z)V

    iput-object v0, p0, Lcom/tencent/mm/z/b;->ckr:Lcom/tencent/mm/sdk/platformtools/ay;

    .line 938
    invoke-direct {p0}, Lcom/tencent/mm/z/b;->Bn()V

    .line 939
    new-instance v0, Lcom/tencent/mm/z/n;

    invoke-direct {v0}, Lcom/tencent/mm/z/n;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/z/b;->cuB:Lcom/tencent/mm/z/n;

    .line 940
    iput-object p1, p0, Lcom/tencent/mm/z/b;->cuw:Lcom/tencent/mm/z/i;

    .line 941
    return-void
.end method

.method private Bn()V
    .locals 1

    .prologue
    .line 924
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/z/b;->cuz:I

    .line 925
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/z/b;->cuy:Lcom/tencent/mm/protocal/ap;

    .line 926
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/z/b;J)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 840
    iget-wide v0, p0, Lcom/tencent/mm/z/b;->cuD:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/mm/z/b;->cuD:J

    return-wide v0
.end method

.method static synthetic a(Lcom/tencent/mm/z/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 840
    iget-boolean v0, p0, Lcom/tencent/mm/z/b;->cuA:Z

    return v0
.end method

.method static synthetic b(Lcom/tencent/mm/z/b;)Lcom/tencent/mm/z/i;
    .locals 1
    .parameter

    .prologue
    .line 840
    iget-object v0, p0, Lcom/tencent/mm/z/b;->cuw:Lcom/tencent/mm/z/i;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/z/b;)I
    .locals 1
    .parameter

    .prologue
    .line 840
    iget v0, p0, Lcom/tencent/mm/z/b;->cuz:I

    return v0
.end method

.method static synthetic d(Lcom/tencent/mm/z/b;)Lcom/tencent/mm/z/n;
    .locals 1
    .parameter

    .prologue
    .line 840
    iget-object v0, p0, Lcom/tencent/mm/z/b;->cuB:Lcom/tencent/mm/z/n;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/z/b;)Ljava/util/Queue;
    .locals 1
    .parameter

    .prologue
    .line 840
    iget-object v0, p0, Lcom/tencent/mm/z/b;->cux:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/z/b;)V
    .locals 0
    .parameter

    .prologue
    .line 840
    invoke-direct {p0}, Lcom/tencent/mm/z/b;->Bn()V

    return-void
.end method

.method static synthetic g(Lcom/tencent/mm/z/b;)Lcom/tencent/mm/z/a;
    .locals 1
    .parameter

    .prologue
    .line 840
    iget-object v0, p0, Lcom/tencent/mm/z/b;->cuC:Lcom/tencent/mm/z/a;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/mm/z/b;)I
    .locals 2
    .parameter

    .prologue
    .line 840
    iget v0, p0, Lcom/tencent/mm/z/b;->cuz:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tencent/mm/z/b;->cuz:I

    return v0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/z/a;)V
    .locals 0
    .parameter

    .prologue
    .line 934
    iput-object p1, p0, Lcom/tencent/mm/z/b;->cuC:Lcom/tencent/mm/z/a;

    .line 935
    return-void
.end method

.method public final a(Lcom/tencent/mm/protocal/ap;)Z
    .locals 3
    .parameter

    .prologue
    .line 944
    iget-object v0, p1, Lcom/tencent/mm/protocal/ap;->fyr:Lcom/tencent/mm/protocal/a/oz;

    iget v0, v0, Lcom/tencent/mm/protocal/a/oz;->fIz:I

    sget v1, Lcom/tencent/mm/z/i;->cuT:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/z/b;->cuw:Lcom/tencent/mm/z/i;

    invoke-virtual {v0}, Lcom/tencent/mm/z/i;->wL()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 945
    :goto_0
    if-nez v0, :cond_0

    iget-object v1, p1, Lcom/tencent/mm/protocal/ap;->fyr:Lcom/tencent/mm/protocal/a/oz;

    iget v1, v1, Lcom/tencent/mm/protocal/a/oz;->fIz:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_0

    .line 946
    new-instance v1, Lcom/tencent/mm/c/a/gc;

    invoke-direct {v1}, Lcom/tencent/mm/c/a/gc;-><init>()V

    .line 947
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 949
    :cond_0
    return v0

    .line 944
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/tencent/mm/protocal/ap;)Z
    .locals 4
    .parameter

    .prologue
    .line 960
    invoke-virtual {p0, p1}, Lcom/tencent/mm/z/b;->a(Lcom/tencent/mm/protocal/ap;)Z

    move-result v0

    .line 962
    iget-object v1, p0, Lcom/tencent/mm/z/b;->cuy:Lcom/tencent/mm/protocal/ap;

    if-eqz v1, :cond_0

    .line 963
    const-string v1, "MicroMsg.InitRespHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "busy, processing resp, continue="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/mm/z/b;->cuy:Lcom/tencent/mm/protocal/ap;

    iget-object v3, v3, Lcom/tencent/mm/protocal/ap;->fyr:Lcom/tencent/mm/protocal/a/oz;

    iget v3, v3, Lcom/tencent/mm/protocal/a/oz;->fIz:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", initKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/z/b;->cuy:Lcom/tencent/mm/protocal/ap;

    iget-object v3, v3, Lcom/tencent/mm/protocal/ap;->fyr:Lcom/tencent/mm/protocal/a/oz;

    iget-object v3, v3, Lcom/tencent/mm/protocal/a/oz;->fRd:Lcom/tencent/mm/protocal/a/rv;

    invoke-static {v3}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rv;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/sdk/platformtools/cj;->cn([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    iget-object v1, p0, Lcom/tencent/mm/z/b;->cux:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 971
    :goto_0
    return v0

    .line 966
    :cond_0
    const-string v1, "MicroMsg.InitRespHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "idle process next resp, continue="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/tencent/mm/protocal/ap;->fyr:Lcom/tencent/mm/protocal/a/oz;

    iget v3, v3, Lcom/tencent/mm/protocal/a/oz;->fIz:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", initKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/tencent/mm/protocal/ap;->fyr:Lcom/tencent/mm/protocal/a/oz;

    iget-object v3, v3, Lcom/tencent/mm/protocal/a/oz;->fRd:Lcom/tencent/mm/protocal/a/rv;

    invoke-static {v3}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rv;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/sdk/platformtools/cj;->cn([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    iput-object p1, p0, Lcom/tencent/mm/z/b;->cuy:Lcom/tencent/mm/protocal/ap;

    .line 968
    iget-object v1, p0, Lcom/tencent/mm/z/b;->cuw:Lcom/tencent/mm/z/i;

    iget-object v1, p0, Lcom/tencent/mm/z/b;->cuy:Lcom/tencent/mm/protocal/ap;

    invoke-static {}, Lcom/tencent/mm/z/i;->Bv()V

    .line 969
    iget-object v1, p0, Lcom/tencent/mm/z/b;->ckr:Lcom/tencent/mm/sdk/platformtools/ay;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/ay;->bO(J)V

    goto :goto_0
.end method

.method public final cancel()V
    .locals 1

    .prologue
    .line 929
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/z/b;->cuA:Z

    .line 930
    iget-object v0, p0, Lcom/tencent/mm/z/b;->cux:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 931
    return-void
.end method
