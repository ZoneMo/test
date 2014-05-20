.class public final Lcom/tencent/mm/storage/bh;
.super Lcom/tencent/mm/storage/bz;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private giH:Lcom/tencent/mm/protocal/a/lu;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 631
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/tencent/mm/storage/bz;-><init>([Ljava/lang/Object;)V

    .line 632
    new-instance v0, Lcom/tencent/mm/protocal/a/lu;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/lu;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/storage/bh;->giH:Lcom/tencent/mm/protocal/a/lu;

    .line 633
    iget-object v0, p0, Lcom/tencent/mm/storage/bh;->giH:Lcom/tencent/mm/protocal/a/lu;

    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/lu;->eBo:Ljava/lang/String;

    .line 634
    iget-object v0, p0, Lcom/tencent/mm/storage/bh;->giH:Lcom/tencent/mm/protocal/a/lu;

    iput p2, v0, Lcom/tencent/mm/protocal/a/lu;->fNb:I

    .line 635
    return-void
.end method


# virtual methods
.method public final aDb()Lcom/tencent/mm/am/a;
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/tencent/mm/storage/bh;->giH:Lcom/tencent/mm/protocal/a/lu;

    return-object v0
.end method

.method public final getCmdId()I
    .locals 1

    .prologue
    .line 644
    const/16 v0, 0x16

    return v0
.end method

.method public final zO()I
    .locals 1

    .prologue
    .line 649
    const/16 v0, 0x7d

    return v0
.end method
