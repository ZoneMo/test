.class public final Lcom/tencent/mm/storage/ax;
.super Lcom/tencent/mm/storage/bz;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private gix:Lcom/tencent/mm/protocal/a/ob;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
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
    .parameter

    .prologue
    .line 580
    const/16 v1, 0x12

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    aput-object p8, v1, v2

    const/16 v2, 0x8

    aput-object p9, v1, v2

    const/16 v2, 0x9

    aput-object p10, v1, v2

    const/16 v2, 0xa

    invoke-static {p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    aput-object p12, v1, v2

    const/16 v2, 0xc

    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xd

    invoke-static/range {p14 .. p14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xe

    aput-object p15, v1, v2

    const/16 v2, 0xf

    aput-object p16, v1, v2

    const/16 v2, 0x10

    aput-object p17, v1, v2

    const/16 v2, 0x11

    aput-object p18, v1, v2

    invoke-direct {p0, v1}, Lcom/tencent/mm/storage/bz;-><init>([Ljava/lang/Object;)V

    .line 581
    new-instance v1, Lcom/tencent/mm/protocal/a/ob;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/ob;-><init>()V

    iput-object v1, p0, Lcom/tencent/mm/storage/ax;->gix:Lcom/tencent/mm/protocal/a/ob;

    .line 582
    iget-object v1, p0, Lcom/tencent/mm/storage/ax;->gix:Lcom/tencent/mm/protocal/a/ob;

    new-instance v2, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ob;->fEI:Lcom/tencent/mm/protocal/a/rw;

    .line 583
    iget-object v1, p0, Lcom/tencent/mm/storage/ax;->gix:Lcom/tencent/mm/protocal/a/ob;

    new-instance v2, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-static {p2}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ob;->fNa:Lcom/tencent/mm/protocal/a/rw;

    .line 584
    iget-object v1, p0, Lcom/tencent/mm/storage/ax;->gix:Lcom/tencent/mm/protocal/a/ob;

    new-instance v2, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-static {p3}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ob;->fEG:Lcom/tencent/mm/protocal/a/rw;

    .line 585
    iget-object v1, p0, Lcom/tencent/mm/storage/ax;->gix:Lcom/tencent/mm/protocal/a/ob;

    new-instance v2, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-static {p4}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ob;->fEH:Lcom/tencent/mm/protocal/a/rw;

    .line 586
    iget-object v1, p0, Lcom/tencent/mm/storage/ax;->gix:Lcom/tencent/mm/protocal/a/ob;

    iput p5, v1, Lcom/tencent/mm/protocal/a/ob;->cqq:I

    .line 587
    iget-object v1, p0, Lcom/tencent/mm/storage/ax;->gix:Lcom/tencent/mm/protocal/a/ob;

    iput p6, v1, Lcom/tencent/mm/protocal/a/ob;->fEj:I

    .line 588
    iget-object v1, p0, Lcom/tencent/mm/storage/ax;->gix:Lcom/tencent/mm/protocal/a/ob;

    iput p7, v1, Lcom/tencent/mm/protocal/a/ob;->fEk:I

    .line 589
    iget-object v1, p0, Lcom/tencent/mm/storage/ax;->gix:Lcom/tencent/mm/protocal/a/ob;

    new-instance v2, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-static {p8}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ob;->fOO:Lcom/tencent/mm/protocal/a/rw;

    .line 590
    iget-object v1, p0, Lcom/tencent/mm/storage/ax;->gix:Lcom/tencent/mm/protocal/a/ob;

    new-instance v2, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-static {p9}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ob;->fOP:Lcom/tencent/mm/protocal/a/rw;

    .line 591
    iget-object v1, p0, Lcom/tencent/mm/storage/ax;->gix:Lcom/tencent/mm/protocal/a/ob;

    new-instance v2, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-static {p4}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ob;->fOQ:Lcom/tencent/mm/protocal/a/rw;

    .line 592
    iget-object v1, p0, Lcom/tencent/mm/storage/ax;->gix:Lcom/tencent/mm/protocal/a/ob;

    iput p11, v1, Lcom/tencent/mm/protocal/a/ob;->fEp:I

    .line 593
    iget-object v1, p0, Lcom/tencent/mm/storage/ax;->gix:Lcom/tencent/mm/protocal/a/ob;

    new-instance v2, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-static/range {p12 .. p12}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ob;->fOY:Lcom/tencent/mm/protocal/a/rw;

    .line 594
    iget-object v1, p0, Lcom/tencent/mm/storage/ax;->gix:Lcom/tencent/mm/protocal/a/ob;

    move/from16 v0, p13

    iput v0, v1, Lcom/tencent/mm/protocal/a/ob;->fEt:I

    .line 595
    iget-object v1, p0, Lcom/tencent/mm/storage/ax;->gix:Lcom/tencent/mm/protocal/a/ob;

    move/from16 v0, p14

    iput v0, v1, Lcom/tencent/mm/protocal/a/ob;->cqs:I

    .line 596
    iget-object v1, p0, Lcom/tencent/mm/storage/ax;->gix:Lcom/tencent/mm/protocal/a/ob;

    invoke-static/range {p15 .. p15}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ob;->cqr:Ljava/lang/String;

    .line 597
    iget-object v1, p0, Lcom/tencent/mm/storage/ax;->gix:Lcom/tencent/mm/protocal/a/ob;

    invoke-static/range {p16 .. p16}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ob;->Tv:Ljava/lang/String;

    .line 598
    iget-object v1, p0, Lcom/tencent/mm/storage/ax;->gix:Lcom/tencent/mm/protocal/a/ob;

    invoke-static/range {p17 .. p17}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ob;->Tu:Ljava/lang/String;

    .line 599
    iget-object v1, p0, Lcom/tencent/mm/storage/ax;->gix:Lcom/tencent/mm/protocal/a/ob;

    invoke-static/range {p18 .. p18}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ob;->fNr:Ljava/lang/String;

    .line 600
    iget-object v1, p0, Lcom/tencent/mm/storage/ax;->gix:Lcom/tencent/mm/protocal/a/ob;

    move/from16 v0, p19

    iput v0, v1, Lcom/tencent/mm/protocal/a/ob;->fNt:I

    .line 601
    iget-object v1, p0, Lcom/tencent/mm/storage/ax;->gix:Lcom/tencent/mm/protocal/a/ob;

    const/4 v2, 0x0

    iput v2, v1, Lcom/tencent/mm/protocal/a/ob;->fOT:I

    .line 602
    iget-object v1, p0, Lcom/tencent/mm/storage/ax;->gix:Lcom/tencent/mm/protocal/a/ob;

    new-instance v2, Lcom/tencent/mm/protocal/a/rv;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rv;-><init>()V

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ob;->fzx:Lcom/tencent/mm/protocal/a/rv;

    .line 603
    return-void
.end method


# virtual methods
.method public final aDb()Lcom/tencent/mm/am/a;
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/tencent/mm/storage/ax;->gix:Lcom/tencent/mm/protocal/a/ob;

    return-object v0
.end method

.method public final getCmdId()I
    .locals 1

    .prologue
    .line 612
    const/4 v0, 0x2

    return v0
.end method

.method public final zO()I
    .locals 1

    .prologue
    .line 617
    const/16 v0, 0x65

    return v0
.end method
