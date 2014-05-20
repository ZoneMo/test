.class final Lcom/tencent/mm/z/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ctM:Lcom/tencent/mm/n/n;

.field cur:I

.field cus:I

.field cut:Z

.field cuu:I

.field private cuv:Lcom/tencent/mm/z/i;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 989
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 981
    iput v0, p0, Lcom/tencent/mm/z/a;->cur:I

    .line 982
    iput v0, p0, Lcom/tencent/mm/z/a;->cus:I

    .line 983
    iput-boolean v0, p0, Lcom/tencent/mm/z/a;->cut:Z

    .line 984
    iput v0, p0, Lcom/tencent/mm/z/a;->cuu:I

    .line 986
    iput-object v1, p0, Lcom/tencent/mm/z/a;->ctM:Lcom/tencent/mm/n/n;

    .line 987
    iput-object v1, p0, Lcom/tencent/mm/z/a;->cuv:Lcom/tencent/mm/z/i;

    .line 991
    return-void
.end method


# virtual methods
.method final Bm()V
    .locals 7

    .prologue
    const/16 v0, 0x32

    const/high16 v1, 0x3f80

    .line 999
    iget-object v2, p0, Lcom/tencent/mm/z/a;->ctM:Lcom/tencent/mm/n/n;

    if-nez v2, :cond_0

    .line 1000
    const-string v0, "MicroMsg.NetSceneSync.InitProgressCallback"

    const-string v1, "dkinit doProgressCallBack progress is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    :goto_0
    return-void

    .line 1004
    :cond_0
    iget-object v2, p0, Lcom/tencent/mm/z/a;->cuv:Lcom/tencent/mm/z/i;

    if-nez v2, :cond_1

    .line 1005
    const-string v0, "MicroMsg.NetSceneSync.InitProgressCallback"

    const-string v1, "dkinit doProgressCallBack netscene is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1010
    :cond_1
    iget v2, p0, Lcom/tencent/mm/z/a;->cus:I

    if-le v2, v0, :cond_2

    .line 1012
    :goto_1
    iget-boolean v2, p0, Lcom/tencent/mm/z/a;->cut:Z

    if-nez v2, :cond_3

    move v1, v0

    .line 1022
    :goto_2
    const-string v2, "MicroMsg.NetSceneSync.InitProgressCallback"

    const-string v3, "dkinit ratio:%d doscenecount:%d doscenedone:%b ratioDoScene:%d cmdindex:%d cmdcount:%d "

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Lcom/tencent/mm/z/a;->cus:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-boolean v6, p0, Lcom/tencent/mm/z/a;->cut:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x4

    iget v5, p0, Lcom/tencent/mm/z/a;->cur:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x5

    iget v5, p0, Lcom/tencent/mm/z/a;->cuu:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1024
    iget-object v0, p0, Lcom/tencent/mm/z/a;->ctM:Lcom/tencent/mm/n/n;

    const/16 v2, 0x64

    iget-object v3, p0, Lcom/tencent/mm/z/a;->cuv:Lcom/tencent/mm/z/i;

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/mm/n/n;->a(IILcom/tencent/mm/n/x;)V

    goto :goto_0

    .line 1010
    :cond_2
    iget v0, p0, Lcom/tencent/mm/z/a;->cus:I

    goto :goto_1

    .line 1015
    :cond_3
    iget v2, p0, Lcom/tencent/mm/z/a;->cur:I

    int-to-float v2, v2

    iget v3, p0, Lcom/tencent/mm/z/a;->cuu:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1016
    cmpl-float v3, v2, v1

    if-lez v3, :cond_4

    .line 1019
    :goto_3
    rsub-int/lit8 v2, v0, 0x64

    int-to-float v2, v2

    mul-float/2addr v1, v2

    int-to-float v2, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3
.end method

.method final a(Lcom/tencent/mm/n/n;Lcom/tencent/mm/z/i;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 994
    iput-object p1, p0, Lcom/tencent/mm/z/a;->ctM:Lcom/tencent/mm/n/n;

    .line 995
    iput-object p2, p0, Lcom/tencent/mm/z/a;->cuv:Lcom/tencent/mm/z/i;

    .line 996
    return-void
.end method
