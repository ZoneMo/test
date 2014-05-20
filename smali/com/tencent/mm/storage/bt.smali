.class public final Lcom/tencent/mm/storage/bt;
.super Lcom/tencent/mm/storage/bz;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private giT:Lcom/tencent/mm/protocal/a/oq;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
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
    .line 756
    const/16 v1, 0xf

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    const/4 v2, 0x5

    aput-object p6, v1, v2

    const/4 v2, 0x6

    aput-object p7, v1, v2

    const/4 v2, 0x7

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    aput-object p11, v1, v2

    const/16 v2, 0xb

    aput-object p12, v1, v2

    const/16 v2, 0xc

    aput-object p13, v1, v2

    const/16 v2, 0xd

    invoke-static/range {p14 .. p14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xe

    aput-object p15, v1, v2

    invoke-direct {p0, v1}, Lcom/tencent/mm/storage/bz;-><init>([Ljava/lang/Object;)V

    .line 757
    new-instance v1, Lcom/tencent/mm/protocal/a/oq;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/oq;-><init>()V

    iput-object v1, p0, Lcom/tencent/mm/storage/bt;->giT:Lcom/tencent/mm/protocal/a/oq;

    .line 758
    iget-object v1, p0, Lcom/tencent/mm/storage/bt;->giT:Lcom/tencent/mm/protocal/a/oq;

    iput p1, v1, Lcom/tencent/mm/protocal/a/oq;->fPG:I

    .line 759
    iget-object v1, p0, Lcom/tencent/mm/storage/bt;->giT:Lcom/tencent/mm/protocal/a/oq;

    new-instance v2, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-static {p2}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/oq;->fEI:Lcom/tencent/mm/protocal/a/rw;

    .line 760
    iget-object v1, p0, Lcom/tencent/mm/storage/bt;->giT:Lcom/tencent/mm/protocal/a/oq;

    new-instance v2, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-static {p3}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/oq;->fNa:Lcom/tencent/mm/protocal/a/rw;

    .line 761
    iget-object v1, p0, Lcom/tencent/mm/storage/bt;->giT:Lcom/tencent/mm/protocal/a/oq;

    iput p4, v1, Lcom/tencent/mm/protocal/a/oq;->fPH:I

    .line 762
    iget-object v1, p0, Lcom/tencent/mm/storage/bt;->giT:Lcom/tencent/mm/protocal/a/oq;

    new-instance v2, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-static {p5}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/oq;->fPI:Lcom/tencent/mm/protocal/a/rw;

    .line 763
    iget-object v1, p0, Lcom/tencent/mm/storage/bt;->giT:Lcom/tencent/mm/protocal/a/oq;

    new-instance v2, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-static {p6}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/oq;->fPJ:Lcom/tencent/mm/protocal/a/rw;

    .line 764
    iget-object v1, p0, Lcom/tencent/mm/storage/bt;->giT:Lcom/tencent/mm/protocal/a/oq;

    iput p8, v1, Lcom/tencent/mm/protocal/a/oq;->fzr:I

    .line 765
    invoke-static {p7}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/a/c;->g(Ljava/lang/String;II)[B

    move-result-object v2

    .line 766
    iget-object v3, p0, Lcom/tencent/mm/storage/bt;->giT:Lcom/tencent/mm/protocal/a/oq;

    new-instance v4, Lcom/tencent/mm/am/b;

    if-nez v2, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [B

    :goto_0
    invoke-direct {v4, v1}, Lcom/tencent/mm/am/b;-><init>([B)V

    iput-object v4, v3, Lcom/tencent/mm/protocal/a/oq;->fPE:Lcom/tencent/mm/am/b;

    .line 767
    iget-object v3, p0, Lcom/tencent/mm/storage/bt;->giT:Lcom/tencent/mm/protocal/a/oq;

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :goto_1
    iput v1, v3, Lcom/tencent/mm/protocal/a/oq;->fPD:I

    .line 768
    iget-object v1, p0, Lcom/tencent/mm/storage/bt;->giT:Lcom/tencent/mm/protocal/a/oq;

    iput p9, v1, Lcom/tencent/mm/protocal/a/oq;->cqq:I

    .line 769
    iget-object v1, p0, Lcom/tencent/mm/storage/bt;->giT:Lcom/tencent/mm/protocal/a/oq;

    iput p10, v1, Lcom/tencent/mm/protocal/a/oq;->cqs:I

    .line 770
    iget-object v1, p0, Lcom/tencent/mm/storage/bt;->giT:Lcom/tencent/mm/protocal/a/oq;

    invoke-static/range {p11 .. p11}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/oq;->cqr:Ljava/lang/String;

    .line 771
    iget-object v1, p0, Lcom/tencent/mm/storage/bt;->giT:Lcom/tencent/mm/protocal/a/oq;

    invoke-static/range {p12 .. p12}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/oq;->Tv:Ljava/lang/String;

    .line 772
    iget-object v1, p0, Lcom/tencent/mm/storage/bt;->giT:Lcom/tencent/mm/protocal/a/oq;

    invoke-static/range {p13 .. p13}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/oq;->Tu:Ljava/lang/String;

    .line 773
    iget-object v1, p0, Lcom/tencent/mm/storage/bt;->giT:Lcom/tencent/mm/protocal/a/oq;

    move/from16 v0, p14

    iput v0, v1, Lcom/tencent/mm/protocal/a/oq;->fPK:I

    .line 774
    iget-object v1, p0, Lcom/tencent/mm/storage/bt;->giT:Lcom/tencent/mm/protocal/a/oq;

    invoke-static/range {p15 .. p15}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/oq;->fNr:Ljava/lang/String;

    .line 775
    iget-object v1, p0, Lcom/tencent/mm/storage/bt;->giT:Lcom/tencent/mm/protocal/a/oq;

    move/from16 v0, p16

    iput v0, v1, Lcom/tencent/mm/protocal/a/oq;->fPP:I

    .line 776
    iget-object v1, p0, Lcom/tencent/mm/storage/bt;->giT:Lcom/tencent/mm/protocal/a/oq;

    invoke-static/range {p17 .. p17}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/oq;->cqt:Ljava/lang/String;

    .line 777
    iget-object v1, p0, Lcom/tencent/mm/storage/bt;->giT:Lcom/tencent/mm/protocal/a/oq;

    move/from16 v0, p18

    iput v0, v1, Lcom/tencent/mm/protocal/a/oq;->fNt:I

    .line 778
    iget-object v1, p0, Lcom/tencent/mm/storage/bt;->giT:Lcom/tencent/mm/protocal/a/oq;

    const-string v2, ""

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/oq;->fNs:Ljava/lang/String;

    .line 779
    return-void

    :cond_0
    move-object v1, v2

    .line 766
    goto :goto_0

    .line 767
    :cond_1
    array-length v1, v2

    goto :goto_1
.end method


# virtual methods
.method public final aDb()Lcom/tencent/mm/am/a;
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lcom/tencent/mm/storage/bt;->giT:Lcom/tencent/mm/protocal/a/oq;

    return-object v0
.end method

.method public final getCmdId()I
    .locals 1

    .prologue
    .line 783
    const/4 v0, 0x1

    return v0
.end method

.method public final zO()I
    .locals 1

    .prologue
    .line 793
    const/16 v0, 0x68

    return v0
.end method
