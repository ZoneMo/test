.class public final Lcom/tencent/mm/storage/bc;
.super Lcom/tencent/mm/storage/bz;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private giC:Lcom/tencent/mm/protocal/a/dq;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 840
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/tencent/mm/storage/bz;-><init>([Ljava/lang/Object;)V

    .line 841
    new-instance v0, Lcom/tencent/mm/protocal/a/dq;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/dq;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/storage/bc;->giC:Lcom/tencent/mm/protocal/a/dq;

    .line 842
    iget-object v0, p0, Lcom/tencent/mm/storage/bc;->giC:Lcom/tencent/mm/protocal/a/dq;

    new-instance v1, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/dq;->fEI:Lcom/tencent/mm/protocal/a/rw;

    .line 843
    iget-object v0, p0, Lcom/tencent/mm/storage/bc;->giC:Lcom/tencent/mm/protocal/a/dq;

    iput p2, v0, Lcom/tencent/mm/protocal/a/dq;->fEK:I

    .line 844
    return-void
.end method


# virtual methods
.method public final aDb()Lcom/tencent/mm/am/a;
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lcom/tencent/mm/storage/bc;->giC:Lcom/tencent/mm/protocal/a/dq;

    return-object v0
.end method

.method public final getCmdId()I
    .locals 1

    .prologue
    .line 848
    const/16 v0, 0x8

    return v0
.end method

.method public final zO()I
    .locals 1

    .prologue
    .line 858
    const/16 v0, 0x69

    return v0
.end method
