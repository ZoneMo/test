.class public final Lcom/tencent/mm/storage/bp;
.super Lcom/tencent/mm/storage/bz;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private giP:Lcom/tencent/mm/protocal/a/ol;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 722
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    invoke-direct {p0, v0}, Lcom/tencent/mm/storage/bz;-><init>([Ljava/lang/Object;)V

    .line 723
    new-instance v0, Lcom/tencent/mm/protocal/a/ol;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/ol;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/storage/bp;->giP:Lcom/tencent/mm/protocal/a/ol;

    .line 724
    iget-object v0, p0, Lcom/tencent/mm/storage/bp;->giP:Lcom/tencent/mm/protocal/a/ol;

    iput p1, v0, Lcom/tencent/mm/protocal/a/ol;->fzo:I

    .line 725
    iget-object v0, p0, Lcom/tencent/mm/storage/bp;->giP:Lcom/tencent/mm/protocal/a/ol;

    iput p2, v0, Lcom/tencent/mm/protocal/a/ol;->fzr:I

    .line 726
    iget-object v0, p0, Lcom/tencent/mm/storage/bp;->giP:Lcom/tencent/mm/protocal/a/ol;

    new-instance v1, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-static {p3}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/ol;->fzs:Lcom/tencent/mm/protocal/a/rw;

    .line 727
    iget-object v0, p0, Lcom/tencent/mm/storage/bp;->giP:Lcom/tencent/mm/protocal/a/ol;

    new-instance v1, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-static {p4}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/ol;->fzt:Lcom/tencent/mm/protocal/a/rw;

    .line 728
    return-void
.end method


# virtual methods
.method public final aDb()Lcom/tencent/mm/am/a;
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/tencent/mm/storage/bp;->giP:Lcom/tencent/mm/protocal/a/ol;

    return-object v0
.end method

.method public final getCmdId()I
    .locals 1

    .prologue
    .line 732
    const/4 v0, 0x6

    return v0
.end method

.method public final zO()I
    .locals 1

    .prologue
    .line 742
    const/16 v0, 0x67

    return v0
.end method
