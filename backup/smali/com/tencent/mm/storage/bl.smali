.class public final Lcom/tencent/mm/storage/bl;
.super Lcom/tencent/mm/storage/bz;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private giL:Lcom/tencent/mm/protocal/a/nw;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1069
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object p8, v0, v1

    const/16 v1, 0x8

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/tencent/mm/storage/bz;-><init>([Ljava/lang/Object;)V

    .line 1070
    new-instance v0, Lcom/tencent/mm/protocal/a/nw;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/nw;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/storage/bl;->giL:Lcom/tencent/mm/protocal/a/nw;

    .line 1071
    iget-object v0, p0, Lcom/tencent/mm/storage/bl;->giL:Lcom/tencent/mm/protocal/a/nw;

    new-instance v1, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/nw;->fEI:Lcom/tencent/mm/protocal/a/rw;

    .line 1072
    iget-object v0, p0, Lcom/tencent/mm/storage/bl;->giL:Lcom/tencent/mm/protocal/a/nw;

    new-instance v1, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-static {p2}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/nw;->fNa:Lcom/tencent/mm/protocal/a/rw;

    .line 1073
    iget-object v0, p0, Lcom/tencent/mm/storage/bl;->giL:Lcom/tencent/mm/protocal/a/nw;

    new-instance v1, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-static {p3}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/nw;->fEG:Lcom/tencent/mm/protocal/a/rw;

    .line 1074
    iget-object v0, p0, Lcom/tencent/mm/storage/bl;->giL:Lcom/tencent/mm/protocal/a/nw;

    iput p5, v0, Lcom/tencent/mm/protocal/a/nw;->cqq:I

    .line 1075
    iget-object v0, p0, Lcom/tencent/mm/storage/bl;->giL:Lcom/tencent/mm/protocal/a/nw;

    new-instance v1, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-static {p6}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/nw;->fOO:Lcom/tencent/mm/protocal/a/rw;

    .line 1076
    iget-object v0, p0, Lcom/tencent/mm/storage/bl;->giL:Lcom/tencent/mm/protocal/a/nw;

    new-instance v1, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-static {p7}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/nw;->fOP:Lcom/tencent/mm/protocal/a/rw;

    .line 1077
    iget-object v0, p0, Lcom/tencent/mm/storage/bl;->giL:Lcom/tencent/mm/protocal/a/nw;

    new-instance v1, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-static {p8}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/nw;->fOQ:Lcom/tencent/mm/protocal/a/rw;

    .line 1078
    iget-object v0, p0, Lcom/tencent/mm/storage/bl;->giL:Lcom/tencent/mm/protocal/a/nw;

    iput p9, v0, Lcom/tencent/mm/protocal/a/nw;->fEp:I

    .line 1079
    return-void
.end method


# virtual methods
.method public final aDb()Lcom/tencent/mm/am/a;
    .locals 1

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/tencent/mm/storage/bl;->giL:Lcom/tencent/mm/protocal/a/nw;

    return-object v0
.end method

.method public final getCmdId()I
    .locals 1

    .prologue
    .line 1083
    const/16 v0, 0xf

    return v0
.end method

.method public final zO()I
    .locals 1

    .prologue
    .line 1093
    const/16 v0, 0x70

    return v0
.end method
