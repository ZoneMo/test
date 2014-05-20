.class public final Lcom/tencent/mm/storage/bs;
.super Lcom/tencent/mm/storage/bz;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private giS:Lcom/tencent/mm/protocal/a/op;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 806
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v2, 0x2

    aput-object p3, v0, v2

    invoke-direct {p0, v0}, Lcom/tencent/mm/storage/bz;-><init>([Ljava/lang/Object;)V

    .line 807
    invoke-static {p2}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/a/c;->g(Ljava/lang/String;II)[B

    move-result-object v2

    .line 808
    new-instance v0, Lcom/tencent/mm/protocal/a/op;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/op;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/storage/bs;->giS:Lcom/tencent/mm/protocal/a/op;

    .line 809
    iget-object v0, p0, Lcom/tencent/mm/storage/bs;->giS:Lcom/tencent/mm/protocal/a/op;

    iput p1, v0, Lcom/tencent/mm/protocal/a/op;->fPC:I

    .line 810
    iget-object v3, p0, Lcom/tencent/mm/storage/bs;->giS:Lcom/tencent/mm/protocal/a/op;

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    iput v0, v3, Lcom/tencent/mm/protocal/a/op;->fPD:I

    .line 811
    iget-object v3, p0, Lcom/tencent/mm/storage/bs;->giS:Lcom/tencent/mm/protocal/a/op;

    new-instance v4, Lcom/tencent/mm/am/b;

    if-nez v2, :cond_1

    new-array v0, v1, [B

    :goto_1
    invoke-direct {v4, v0}, Lcom/tencent/mm/am/b;-><init>([B)V

    iput-object v4, v3, Lcom/tencent/mm/protocal/a/op;->fPE:Lcom/tencent/mm/am/b;

    .line 812
    iget-object v0, p0, Lcom/tencent/mm/storage/bs;->giS:Lcom/tencent/mm/protocal/a/op;

    invoke-static {p3}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/op;->fPF:Ljava/lang/String;

    .line 813
    return-void

    .line 810
    :cond_0
    array-length v0, v2

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 811
    goto :goto_1
.end method


# virtual methods
.method public final aDb()Lcom/tencent/mm/am/a;
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Lcom/tencent/mm/storage/bs;->giS:Lcom/tencent/mm/protocal/a/op;

    return-object v0
.end method

.method public final getCmdId()I
    .locals 1

    .prologue
    .line 817
    const/16 v0, 0x23

    return v0
.end method

.method public final zO()I
    .locals 1

    .prologue
    .line 827
    const/16 v0, 0x79

    return v0
.end method
