.class final Lcom/tencent/mm/z/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final ckr:Lcom/tencent/mm/sdk/platformtools/ay;

.field private cuA:Z

.field private final cuB:Lcom/tencent/mm/z/n;

.field private final cuw:Lcom/tencent/mm/z/i;

.field protected cvs:Lcom/tencent/mm/protocal/as;

.field private cvt:I

.field private cvu:Z


# direct methods
.method public constructor <init>(Lcom/tencent/mm/z/i;)V
    .locals 4
    .parameter

    .prologue
    .line 810
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 731
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/ay;

    invoke-static {}, Lcom/tencent/mm/model/be;->ut()Lcom/tencent/mm/sdk/platformtools/an;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/sdk/platformtools/an;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/z/s;

    invoke-direct {v2, p0}, Lcom/tencent/mm/z/s;-><init>(Lcom/tencent/mm/z/r;)V

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/ay;-><init>(Landroid/os/Looper;Lcom/tencent/mm/sdk/platformtools/az;Z)V

    iput-object v0, p0, Lcom/tencent/mm/z/r;->ckr:Lcom/tencent/mm/sdk/platformtools/ay;

    .line 796
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/z/r;->cuA:Z

    .line 811
    invoke-direct {p0}, Lcom/tencent/mm/z/r;->Bn()V

    .line 812
    new-instance v0, Lcom/tencent/mm/z/n;

    invoke-direct {v0}, Lcom/tencent/mm/z/n;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/z/r;->cuB:Lcom/tencent/mm/z/n;

    .line 813
    iput-object p1, p0, Lcom/tencent/mm/z/r;->cuw:Lcom/tencent/mm/z/i;

    .line 814
    return-void
.end method

.method private Bn()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 800
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/z/r;->cvu:Z

    .line 801
    iput v1, p0, Lcom/tencent/mm/z/r;->cvt:I

    .line 802
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/z/r;->cvs:Lcom/tencent/mm/protocal/as;

    .line 803
    iput-boolean v1, p0, Lcom/tencent/mm/z/r;->cuA:Z

    .line 804
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/z/r;)Z
    .locals 1
    .parameter

    .prologue
    .line 727
    iget-boolean v0, p0, Lcom/tencent/mm/z/r;->cuA:Z

    return v0
.end method

.method static synthetic b(Lcom/tencent/mm/z/r;)Lcom/tencent/mm/z/i;
    .locals 1
    .parameter

    .prologue
    .line 727
    iget-object v0, p0, Lcom/tencent/mm/z/r;->cuw:Lcom/tencent/mm/z/i;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/z/r;)Z
    .locals 1
    .parameter

    .prologue
    .line 727
    iget-boolean v0, p0, Lcom/tencent/mm/z/r;->cvu:Z

    return v0
.end method

.method static synthetic d(Lcom/tencent/mm/z/r;)I
    .locals 1
    .parameter

    .prologue
    .line 727
    iget v0, p0, Lcom/tencent/mm/z/r;->cvt:I

    return v0
.end method

.method static synthetic e(Lcom/tencent/mm/z/r;)Lcom/tencent/mm/z/n;
    .locals 1
    .parameter

    .prologue
    .line 727
    iget-object v0, p0, Lcom/tencent/mm/z/r;->cuB:Lcom/tencent/mm/z/n;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/z/r;)Z
    .locals 1
    .parameter

    .prologue
    .line 727
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/z/r;->cvu:Z

    return v0
.end method

.method static synthetic g(Lcom/tencent/mm/z/r;)I
    .locals 1
    .parameter

    .prologue
    .line 727
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/z/r;->cvt:I

    return v0
.end method

.method static synthetic h(Lcom/tencent/mm/z/r;)I
    .locals 2
    .parameter

    .prologue
    .line 727
    iget v0, p0, Lcom/tencent/mm/z/r;->cvt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tencent/mm/z/r;->cvt:I

    return v0
.end method

.method static synthetic i(Lcom/tencent/mm/z/r;)V
    .locals 0
    .parameter

    .prologue
    .line 727
    invoke-direct {p0}, Lcom/tencent/mm/z/r;->Bn()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/tencent/mm/protocal/as;)Z
    .locals 4
    .parameter

    .prologue
    .line 821
    iget-object v0, p1, Lcom/tencent/mm/protocal/as;->fyt:Lcom/tencent/mm/protocal/a/pe;

    iget v0, v0, Lcom/tencent/mm/protocal/a/pe;->fIz:I

    sget v1, Lcom/tencent/mm/z/i;->cuT:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/z/r;->cuw:Lcom/tencent/mm/z/i;

    invoke-virtual {v0}, Lcom/tencent/mm/z/i;->wL()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 822
    :goto_0
    const-string v1, "MicroMsg.SyncRespHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "continue flag="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/tencent/mm/protocal/as;->fyt:Lcom/tencent/mm/protocal/a/pe;

    iget v3, v3, Lcom/tencent/mm/protocal/a/pe;->fIz:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", selector="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/tencent/mm/z/i;->cuT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", limit reach="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/z/r;->cuw:Lcom/tencent/mm/z/i;

    invoke-virtual {v3}, Lcom/tencent/mm/z/i;->wL()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    if-nez v0, :cond_0

    iget-object v1, p1, Lcom/tencent/mm/protocal/as;->fyt:Lcom/tencent/mm/protocal/a/pe;

    iget v1, v1, Lcom/tencent/mm/protocal/a/pe;->fIz:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_0

    .line 826
    new-instance v1, Lcom/tencent/mm/c/a/gc;

    invoke-direct {v1}, Lcom/tencent/mm/c/a/gc;-><init>()V

    .line 827
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 830
    :cond_0
    return v0

    .line 821
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Lcom/tencent/mm/protocal/as;)V
    .locals 3
    .parameter

    .prologue
    .line 834
    iput-object p1, p0, Lcom/tencent/mm/z/r;->cvs:Lcom/tencent/mm/protocal/as;

    .line 835
    iget-object v0, p0, Lcom/tencent/mm/z/r;->cuw:Lcom/tencent/mm/z/i;

    iget-object v0, p0, Lcom/tencent/mm/z/r;->cvs:Lcom/tencent/mm/protocal/as;

    invoke-static {}, Lcom/tencent/mm/z/i;->Bt()V

    .line 836
    iget-object v0, p0, Lcom/tencent/mm/z/r;->ckr:Lcom/tencent/mm/sdk/platformtools/ay;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/ay;->bO(J)V

    .line 837
    return-void
.end method

.method public final cancel()V
    .locals 1

    .prologue
    .line 807
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/z/r;->cuA:Z

    .line 808
    return-void
.end method
