.class public final Lcom/tencent/mm/storage/ba;
.super Lcom/tencent/mm/storage/bz;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private giA:Lcom/tencent/mm/protocal/a/dm;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 871
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/tencent/mm/storage/bz;-><init>([Ljava/lang/Object;)V

    .line 872
    new-instance v0, Lcom/tencent/mm/protocal/a/dm;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/dm;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/storage/ba;->giA:Lcom/tencent/mm/protocal/a/dm;

    .line 873
    iget-object v0, p0, Lcom/tencent/mm/storage/ba;->giA:Lcom/tencent/mm/protocal/a/dm;

    new-instance v1, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/dm;->fEI:Lcom/tencent/mm/protocal/a/rw;

    .line 874
    return-void
.end method


# virtual methods
.method public final aDb()Lcom/tencent/mm/am/a;
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Lcom/tencent/mm/storage/ba;->giA:Lcom/tencent/mm/protocal/a/dm;

    return-object v0
.end method

.method public final getCmdId()I
    .locals 1

    .prologue
    .line 878
    const/4 v0, 0x7

    return v0
.end method

.method public final zO()I
    .locals 1

    .prologue
    .line 888
    const/16 v0, 0x6a

    return v0
.end method
